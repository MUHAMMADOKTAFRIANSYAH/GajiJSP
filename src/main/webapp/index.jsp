<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html lang="id">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Soal John Travolta</title>

    <link rel="stylesheet"
          href="css/style.css">

</head>


<body>

<div class="container">


    <!-- HERO -->

    <div class="hero">

        <div class="hero-content">

            <span class="badge">
                PEMROGRAMAN JAVA WEB
            </span>

            <h1>
                Soal John Travolta
            </h1>

            <p>
                Perhitungan gaji mingguan dan tabungan
                berdasarkan jumlah jam kerja, rate per jam,
                dan pengeluaran.
            </p>

        </div>

    </div>


    <!-- FORM -->

    <div class="card">

        <div class="card-header">

            <h2>
                Perhitungan Gaji & Tabungan
            </h2>

            <p>
                Masukkan data John Travolta untuk
                melakukan perhitungan.
            </p>

        </div>


        <form action="gaji"
              method="post">


            <div class="form-grid">


                <!-- JAM KERJA -->

                <div class="form-group">

                    <label for="jamKerja">
                        Jumlah Jam Kerja
                    </label>

                    <div class="input-wrapper">

                        <input
                                type="number"
                                id="jamKerja"
                                name="jamKerja"
                                value="52"
                                min="0"
                                required>

                        <span>
                            jam
                        </span>

                    </div>

                </div>


                <!-- RATE -->

                <div class="form-group">

                    <label for="rate">
                        Rate per Jam
                    </label>

                    <div class="input-wrapper">

                        <span>
                            Rp
                        </span>

                        <input
                                type="number"
                                id="rate"
                                name="rate"
                                value="15000"
                                min="0"
                                required>

                    </div>

                </div>


                <!-- PENGELUARAN -->

                <div class="form-group full">

                    <label for="pengeluaran">
                        Pengeluaran Selama Seminggu
                    </label>

                    <div class="input-wrapper">

                        <span>
                            Rp
                        </span>

                        <input
                                type="number"
                                id="pengeluaran"
                                name="pengeluaran"
                                value="600000"
                                min="0"
                                required>

                    </div>

                </div>


            </div>


            <button type="submit"
                    class="btn">

                Hitung Sekarang

            </button>


        </form>

    </div>


    <!-- INFO -->

    <div class="info-card">

        <div class="info-icon">
            💡
        </div>

        <div>

            <h3>
                Aturan Perhitungan
            </h3>

            <p>
                Jam kerja normal maksimal 40 jam per minggu.
                Jam kerja di atas 40 jam dihitung sebagai
                lembur dengan tarif 1,5 kali rate normal.
            </p>

        </div>

    </div>


    <!-- FOOTER -->

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