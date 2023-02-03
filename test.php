<?php
if(isset($_POST['submit'])){

    $json_string = file_get_contents('login.json');
    $parsed_json = json_decode($json_string, true);

    foreach($parsed_json as $key => $value){
        $jsonemail = $value['email'];
        $jsonpass = $value['pass'];
    }
        if($email == $jsonemail && $pass == $jsonpass){
                header('location: view.php');
        }
        else{
            echo "please check your email or password";
        }   
}
?>