<?php
include 'db.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $student_id = $_POST['student_id'];
    $subject = $_POST['subject'];
    $score = $_POST['score'];

    $sql = "INSERT INTO grades (student_id, subject, score) VALUES (?, ?, ?)";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("isi", $student_id, $subject, $score);

    if ($stmt->execute()) {
        echo "<script>alert('Grade Saved Successfully!'); window.location.href='grades.html';</script>";
    } else {
        echo "<script>alert('Error: ".$conn->error."'); window.location.href='grades.html';</script>";
    }
}
?>
