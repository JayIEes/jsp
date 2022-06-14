<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Page Title</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='test.css'>
    <link rel='stylesheet' type='text/css' media='screen' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.1/css/bootstrap.min.css'>
    <link rel='stylesheet' type='text/css' media='screen' href='https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.18/css/bootstrap-select.min.css'>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.0/jquery.min.js'></script>
</head>
<script>
    $(document).ready(function(){
        $('.multi_select').selectpicker();
    })
</script>
<body>
    <div class="multi_select_box">
        <select class="multi_select w-100" 
        
        mutiple data-max-options="3" data-max-options-text="3개까지 선택 가능합니다." multiple title="관심사 3가지를 선택하세요.">
            <option>test1</option>
            <option>test2</option>
            <option>test3</option>
            <option>test4</option>
            <option>test5</option>
            <option>test6</option>
        </select>
    </div>
</body>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/
twitter-bootstrap/4.6.1/js/bootstrap.bundle.min.js"> 
</script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/
bootstrap-select/1.13.18/js/bootstrap-select.min.js"> 
</script>

</html>