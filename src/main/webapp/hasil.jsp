<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html lang="id">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Hasil Perhitungan</title>

    <link rel="stylesheet"
          href="css/style.css">

</head>


<body>

<div class="container">


    <!-- HERO -->

    <div class="hero">

        <div class="hero-content">

            <span class="badge">
                HASIL PERHITUNGAN
            </span>

            <h1>
                Hasil Gaji John Travolta
            </h1>

            <p>
                Berikut hasil perhitungan gaji mingguan
                dan kondisi keuangan John Travolta.
            </p>

        </div>

    </div>


    <!-- DETAIL PERHITUNGAN -->

    <div class="card">

        <div class="card-header">

            <h2>
                Detail Perhitungan
            </h2>

            <p>
                Hasil berdasarkan data yang telah dimasukkan.
            </p>

        </div>


        <div class="result-grid">


            <div class="result-item">

                <span>
                    Jumlah Jam Kerja
                </span>

                <strong>
                    ${jamKerja} jam
                </strong>

            </div>


            <div class="result-item">

                <span>
                    Rate per Jam
                </span>

                <strong>
                    ${rate}
                </strong>

            </div>


            <div class="result-item">

                <span>
                    Jam Normal
                </span>

                <strong>
                    ${jamNormal} jam
                </strong>

            </div>


            <div class="result-item">

                <span>
                    Jam Lembur
                </span>

                <strong>
                    ${jamLembur} jam
                </strong>

            </div>


            <div class="result-item">

                <span>
                    Gaji Normal
                </span>

                <strong>
                    ${gajiNormal}
                </strong>

            </div>


            <div class="result-item">

                <span>
                    Gaji Lembur
                </span>

                <strong>
                    ${gajiLembur}
                </strong>

            </div>


        </div>

    </div>


    <!-- RINGKASAN -->

    <div class="card">

        <div class="card-header">

            <h2>
                Ringkasan Keuangan
            </h2>

        </div>


        <div class="summary">


            <div class="summary-row">

                <span>
                    Total Gaji
                </span>

                <strong>
                    ${totalGaji}
                </strong>

            </div>


            <div class="summary-row">

                <span>
                    Pengeluaran
                </span>

                <strong>
                    ${pengeluaran}
                </strong>

            </div>


            <div class="summary-row total">

                <span>
                    Tabungan
                </span>

                <strong>
                    ${tabungan}
                </strong>

            </div>


        </div>


        <div class="status">

            ${status}

        </div>


    </div>


    <!-- KEMBALI -->

    <a href="index.jsp"
       class="back-btn">

        ← Kembali ke Perhitungan

    </a>


    <footer>

        <p>
            © 2026 Soal John Travolta
        </p>

        <span>
            Java Servlet & JSP
        </span>

    </footer>


</div>

</body>

</html>