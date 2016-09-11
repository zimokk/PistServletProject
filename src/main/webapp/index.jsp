<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>index</title>
      <link rel="stylesheet" href="styles/main.css">
      <style>
          <%@ include file="/node_modules/bootstrap/dist/css/bootstrap.css"%>
          <%@ include file="/styles/main.css"%>
      </style>
    <script>
        <%@ include file="/js/glory.js" %>
    </script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/glory.js"></script>
  </head>
  <body>
  <div class="row">
    <div class="col-sm-4">
      <form action="${pageContext.request.contextPath}/index" method="POST" class="myForm">
          <div class="col-sm-12">
              <div class="row">
                  <div class="col-sm-4">
                      <label for="divider">
                          Divider:
                      </label>
                  </div>
                  <div class="col-sm-8">
                      <input name="divider" id="divider" type="number" required class="form-control">
                  </div>
              </div>
          </div>
          <div class="col-sm-12 row">
              <div class="col-sm-3">
                  <label>
                      Positive
                  </label>
              </div>
              <div class="col-sm-3">
                  <input  type="radio" id="positive" name="value" value="Positive" required class="form-control">
              </div>
              <div class="col-sm-3">
                  <label>
                      Negative
                  </label>
              </div>
              <div class="col-sm-3">
                  <input  type="radio" id="negative" name="value" value="Negative" required class="form-control">
              </div>
          </div>
        <label>
            <div class="row">
                <div class="col-sm-2">
                    Bounds
                </div>
                <div class="col-sm-5">
                    <input id="min" type="number" name="minValue" required class="form-control">
                </div>
                <div class="col-sm-5">
                    <input id="max" type="number" name="maxValue" required class="form-control">
                </div>
            </div>
        </label>
          <div class="row">
              <div class="col-sm-4">
                  Numbers:
              </div>
              <div class="col-sm-8">
                  <input type="text" name="numbers" id="allIn" class="form-control">
              </div>
          </div>
        <input class="form-control btn btn-success" type="submit" value="Отправить" />
      </form>
        <div class="row col-sm-12 input-number-div">
            <label for="number">
                <div class="row">
                    <div class="col-sm-2">
                        Введите число :
                    </div>
                    <div class="col-sm-6">
                        <input type="number" id="number" class="form-control">
                    </div>
                    <div class="col-sm-4">
                        <button class="form-control btn btn-primary" onclick="add()">Добавить</button>
                    </div>
                </div>
            </label>
        </div>

  </div>
    <div class="col-sm-6 alert alert-success">
      <table>
        <thead>
        <tr>
          <td>Result</td>
        </tr>
        </thead>
        <tbody>
        <tr>
          <td>
            ${list}
          </td>
        </tr>
        </tbody>
      </table>
      <div class="alert alert-danger">
        ${error}
      </div>
    </div>
  </div>
    <script src="node_modules/jquery/dist/jquery.js"></script>
    <script src="node_modules/bootstrap/dist/js/bootstrap.js"></script>
  </body>
</html>
