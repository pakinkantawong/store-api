<?php
header("Content-Type: application/json");
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE");
header("Access-Control-Allow-Headers: Content-Type");

include "db.php";

$method = $_SERVER['REQUEST_METHOD'];

// ใช้ REQUEST_URI แทน PATH_INFO เพื่อให้ทำงานบน XAMPP ได้
$request = explode('/', trim(parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH), '/'));
$id = null;

// ดึง ID ถ้ามี
if (isset($request[1]) && is_numeric($request[1])) {
    $id = intval($request[1]);
}

switch ($method) {
    case 'GET':
        if ($id) {
            $sql = "SELECT * FROM products WHERE id = $id";
            $result = $conn->query($sql);
            echo json_encode($result->fetch_assoc());
        } else {
            $sql = "SELECT * FROM products";
            $result = $conn->query($sql);
            $products = [];
            while ($row = $result->fetch_assoc()) {
                $products[] = $row;
            }
            echo json_encode($products);
        }
        break;

    case 'POST':
        $data = json_decode(file_get_contents("php://input"), true);
        $title = $conn->real_escape_string($data['title']);
        $description = $conn->real_escape_string($data['description']);
        $price = $data['price'];
        $category = $conn->real_escape_string($data['category']);
        $image = $conn->real_escape_string($data['image']);

        $sql = "INSERT INTO products (title, description, price, category, image) 
                VALUES ('$title', '$description', '$price', '$category', '$image')";
        if ($conn->query($sql) === TRUE) {
            echo json_encode(["message" => "Product created", "id" => $conn->insert_id]);
        } else {
            echo json_encode(["error" => $conn->error]);
        }
        break;

    case 'PUT':
        if (!$id) {
            echo json_encode(["error" => "Missing ID"]);
            exit;
        }
        $data = json_decode(file_get_contents("php://input"), true);
        $title = $conn->real_escape_string($data['title']);
        $description = $conn->real_escape_string($data['description']);
        $price = $data['price'];
        $category = $conn->real_escape_string($data['category']);
        $image = $conn->real_escape_string($data['image']);

        $sql = "UPDATE products SET 
                    title='$title', 
                    description='$description', 
                    price='$price', 
                    category='$category', 
                    image='$image' 
                WHERE id=$id";
        if ($conn->query($sql) === TRUE) {
            echo json_encode(["message" => "Product updated"]);
        } else {
            echo json_encode(["error" => $conn->error]);
        }
        break;

    case 'DELETE':
        if (!$id) {
            echo json_encode(["error" => "Missing ID"]);
            exit;
        }
        $sql = "DELETE FROM products WHERE id=$id";
        if ($conn->query($sql) === TRUE) {
            echo json_encode(["message" => "Product deleted"]);
        } else {
            echo json_encode(["error" => $conn->error]);
        }
        break;

    default:
        echo json_encode(["error" => "Invalid request method"]);
}
?>
