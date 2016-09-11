<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
      <title>index</title>
      <link rel="stylesheet" href="node_modules/bootstrap/dist/css/bootstrap.css">
      <link rel="stylesheet" href="node_modules/bootstrap/dist/css/bootstrap-theme.css">
        <script>
      <%@ include file="/js/glory.js" %>
      </script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/glory.js"></script>
  </head>
  <body>
  <div class="row" style="margin-top:100px;margin-left:250px;position:relative">
    <div class="col-sm-4">
      <form action="${pageContext.request.contextPath}/index" method="POST">
        <label>
        <span style="font-size:18px;font-family:cursive">  Divider </span>
          <input id="divider" style="font-size: 16px;margin-left:10px;border:none;border-bottom: 1px solid lightgray" type="number" min="2" required>
        </label><br/>
        <label>
          <span style="font-size:18px;font-family:cursive">Value</span>
          <input  type="checkbox" id="positive" style="font-size: 16px;margin-left:20px;border:none;border-bottom: 1px solid lightgray" name="value" value="Positive">Positive
          <input  type="checkbox" id="negative" style="font-size: 16px;margin-left:10px;border:none;border-bottom: 1px solid lightgray" name="value" value="Negative">Negative <br/>
        </label>
        <label>
         <span style="font-size:18px;font-family:cursive"> Bounds </span>
          <input id="min" style="font-size: 16px;margin-left:10px;border:none;border-bottom: 1px solid lightgray" type="number" name="minValue" required> -
          <input id="max" min="min" style="font-size: 16px;margin-left:10px;border:none;border-bottom: 1px solid lightgray" type="number" name="maxValue" required> <br/>
        </label><br/>
        <input type="text" id="allIn" hidden>
        Введите число :
        <input type="number" style="font-size: 16px;margin-left:10px;border:none;border-bottom: 1px solid lightgray" id="number"> <br/>
        <input style="margin-top:15px;width: 400px;height:20px;background-color:coral;color:white;border-radius: 10px;border:none" type="submit" value="Отправить" />
      </form>
      <button style="width: 400px;height:20px;background-color:forestgreen;color:white;border-radius: 10px;border:none;" onclick="add()">Добавить</button>

  </div>
    <div class="col-sm-8">

    </div>
  </div>
    <script src="node_modules/jquery/dist/jquery.js"></script>
    <script src="node_modules/bootstrap/dist/js/bootstrap.js"></script>
  </body>
</html>
