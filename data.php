<table class="table table-bordered">
    <thead >
        <tr>
            <th>No</th>
            <th class="table-primary">Nama Kota</th>
            <th class="table-warning">Provinsi</th>
            <th class="table-danger">Positif</th>
            <th class="table-dark">Meninggal</th>
            <th class="table-success">Sembuh</th>
        </tr>
    </thead>
    <?php
    include 'koneksi.php';
    $s_provinsi = "";
    $s_keyword = "";
    if (isset($_POST['provinsi'])) {
        $s_provinsi = $_POST['provinsi'];
        $s_keyword = $_POST['keyword'];
    }

    $search_provinsi = '%' . $s_provinsi . '%';
    $search_keyword = '%' . $s_keyword . '%';
    $no = 1;
    $query = "SELECT * FROM covid WHERE provinsi LIKE ? AND (nama_kota LIKE ? OR provinsi LIKE ? OR positif LIKE ? OR meninggal LIKE ? OR sembuh LIKE ?) ORDER BY id DESC LIMIT 100";
    $dewan1 = $db1->prepare($query);
    $dewan1->bind_param('ssssss', $search_provinsi, $search_keyword, $search_keyword, $search_keyword, $search_keyword, $search_keyword);
    $dewan1->execute();
    $res1 = $dewan1->get_result();

    if ($res1->num_rows > 0) {
        while ($row = $res1->fetch_assoc()) {
            $id = $row['id'];
            $nama_kota = $row['nama_kota'];
            $provinsi = $row['provinsi'];
            $positif = $row['positif'];
            $meninggal = $row['meninggal'];
            $sembuh = $row['sembuh'];
    ?>
            <tbody>
                <tr>
                    <td><?php echo $no++; ?></td>
                    <td><?php echo $nama_kota; ?></td>
                    <td><?php echo $provinsi; ?></td>
                    <td class="table-danger"><?php echo $positif; ?></td>
                    <td class="table-dark"><?php echo $meninggal; ?></td>
                    <td class="table-success"><?php echo $sembuh; ?></td>
                </tr>
            <?php }
    } else { ?>
            <tr>
                <td colspan='7'>Tidak ada data ditemukan</td>
            </tr>
        <?php } ?>
            </tbody>
</table>