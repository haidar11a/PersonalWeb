<?php include "koneksi.php"; ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Personal Web | Gallery</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>

<body class="bg-gray-100 text-gray-800 font-sans">
    <!-- Header -->
    <header class="bg-blue-900 text-white text-center p-6 text-2xl font-bold">
        Personal Web | Dede Haidar
    </header>

    <!-- Navigation -->
    <nav class="bg-blue-700 text-white py-3">
        <ul class="flex justify-center space-x-10 font-medium text-lg">
            <li><a href="index.php" class="hover:underline">Artikel</a></li>
            <li><a href="gallery.php" class="hover:underline">Gallery</a></li>
            <li><a href="about.php" class="hover:underline">About</a></li>
            <li><a href="admin/login.php" class="hover:underline">Login</a></li>
        </ul>
    </nav>

    <!-- Main Content -->
    <main class="max-w-6xl mx-auto p-6 mt-6">
        <h2 class="text-xl text-center font-bold mb-4">Galeri Foto</h2>
        <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-6">
            <?php
            $sql = "SELECT * FROM tbl_gallery ORDER BY id_gallery DESC";
            $query = mysqli_query($db, $sql);
            while ($data = mysqli_fetch_array($query)) {
                echo "<div class='bg-white p-4 rounded shadow'>";
                echo "<img src='images/" . htmlspecialchars($data['foto']) . "' 
                          alt='" . htmlspecialchars($data['judul']) . "'
                          class='w-full aspect-square object-cover rounded-lg bg-gray-100 p-2'>";
                echo "<h3 class='text-lg font-semibold text-blue-700 mt-2'>" . htmlspecialchars($data['judul']) . "</h3>";
                echo "</div>";
            }
            ?>
        </div>
    </main>

    <!-- Footer -->
    <footer class="bg-blue-800 text-white text-center py-10 mt-20">
        &copy; <?php echo date('Y'); ?> | Created by Dede Haidar
    </footer>
</body>

</html>