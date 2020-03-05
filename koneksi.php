<?php
$koneksi = mysqli_connect("localhost", "root", "", "db_iso");

if(mysqli_connect_error()){
    echo "Koneksi Gagal : " . mysqli_connect_error();
}
?>