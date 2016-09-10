<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
      <title>index</title>
      <link rel="stylesheet" href="node_modules/bootstrap/dist/css/bootstrap.css">
      <link rel="stylesheet" href="node_modules/bootstrap/dist/css/bootstrap-theme.css">
  </head>
  <body>
    <div class="row col-xs-6">
      <form action="${pageContext.request.contextPath}/index" method="POST">
        <label>
          Divider
          <input class="form-control" type="number" min="2" required>
        </label>
        <label>
          Value
          <input class="form-control" type="radio" name="value" value="Positive">Positive
          <input class="form-control" type="radio" name="value" value="Negative">Negative
        </label>
        <label>
          Bounds
          <input class="form-control" type="number" name="minValue"> -
          <input class="form-control" type="number" name="maxValue">
        </label>
        <input class="form-control" type="submit" value="Submit" />
      </form>
    </div>
    <script src="node_modules/jquery/dist/jquery.js"></script>
    <script src="node_modules/bootstrap/dist/js/bootstrap.js"></script>
  </body>
</html>
