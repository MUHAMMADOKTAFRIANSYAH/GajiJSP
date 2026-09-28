package org.example.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.text.NumberFormat;
import java.util.Locale;

@WebServlet("/gaji")
public class GajiServlet extends HttpServlet {

    @Override
    protected void doPost(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        // =========================
        // MENGAMBIL DATA DARI FORM
        // =========================

        int jamKerja = Integer.parseInt(
                request.getParameter("jamKerja")
        );

        double rate = Double.parseDouble(
                request.getParameter("rate")
        );

        double pengeluaran = Double.parseDouble(
                request.getParameter("pengeluaran")
        );


        // =========================
        // PERHITUNGAN JAM KERJA
        // =========================

        int jamNormal = Math.min(jamKerja, 40);

        int jamLembur = Math.max(jamKerja - 40, 0);


        // =========================
        // PERHITUNGAN GAJI
        // =========================

        double gajiNormal = jamNormal * rate;

        double rateLembur = rate * 1.5;

        double gajiLembur = jamLembur * rateLembur;

        double totalGaji = gajiNormal + gajiLembur;


        // =========================
        // PERHITUNGAN TABUNGAN
        // =========================

        double tabungan = totalGaji - pengeluaran;

        String status;

        if (tabungan > 0) {

            status = "Bisa Menabung";

        } else if (tabungan == 0) {

            status = "Tidak Bisa Menabung";

        } else {

            status = "Cari Tambahan";
        }


        // =========================
        // FORMAT RUPIAH
        // =========================

        NumberFormat rupiah = NumberFormat.getCurrencyInstance(
                new Locale("id", "ID")
        );

        rupiah.setMaximumFractionDigits(0);

        String rateFormat = rupiah.format(rate);

        String gajiNormalFormat = rupiah.format(gajiNormal);

        String gajiLemburFormat = rupiah.format(gajiLembur);

        String totalGajiFormat = rupiah.format(totalGaji);

        String pengeluaranFormat = rupiah.format(pengeluaran);

        String tabunganFormat = rupiah.format(tabungan);


        // =========================
        // MENGIRIM DATA KE JSP
        // =========================

        request.setAttribute(
                "jamKerja",
                jamKerja
        );

        request.setAttribute(
                "rate",
                rateFormat
        );

        request.setAttribute(
                "jamNormal",
                jamNormal
        );

        request.setAttribute(
                "jamLembur",
                jamLembur
        );

        request.setAttribute(
                "gajiNormal",
                gajiNormalFormat
        );

        request.setAttribute(
                "gajiLembur",
                gajiLemburFormat
        );

        request.setAttribute(
                "totalGaji",
                totalGajiFormat
        );

        request.setAttribute(
                "pengeluaran",
                pengeluaranFormat
        );

        request.setAttribute(
                "tabungan",
                tabunganFormat
        );

        request.setAttribute(
                "status",
                status
        );


        // =========================
        // PINDAH KE HALAMAN HASIL
        // =========================

        request.getRequestDispatcher("/hasil.jsp")
                .forward(request, response);
    }


    // Jika /gaji dibuka langsung dari browser,
    // arahkan kembali ke halaman utama.

    @Override
    protected void doGet(
            HttpServletRequest request,
            HttpServletResponse response)
            throws IOException {

        response.sendRedirect(
                request.getContextPath() + "/index.jsp"
        );
    }
}