<div id="chat" ng-app="chat-app" ng-controller="chat-controller">
    <div id="chat-header">
        <span>Chat with people</span>
    </div>
    <div id="chat-body">
        <div class="user-info" ng-click="register_popup(user.name, user.id, user.profimage)" ng-if="user.id!='0'" ng-repeat="user in users">
            <img class="profimage" src="{{user.profimage}}" />

            <span class="name">{{user.name}}</span>
        </div>
    </div>
</div>
<div id="chat_popups"></div>
  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 0.3.0
    </div>
    <strong><?php 
$dias = array("Domingo","Lunes","Martes","Miercoles","Jueves","Viernes","Sábado");
$meses = array("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre");
 
echo $dias[date('w')]." ".date('d')." de ".$meses[date('n')-1]. " del ".date('Y') ;
//Salida: Viernes 24 de Febrero del 2012  ?></strong> Todo los derechos
    reservados - Area de Sistemas.
  </footer>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <script src="http://code.jquery.com/jquery-git.js"></script>
    <!-- Bootstrap 3.3.7 -->
    <link href="Kitmotos.ico" rel="shortcut icon">
    <meta charset="UTF-8">
    <script src="../ajax/libs/angular.js/1.8.3/angular.min.js"></script>
    <script src="scripts/chat.js" type="text/javascript"></script>
<!-- jQuery 3 -->

<script src="../public/js/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<!-- Bootstrap 3.3.7 -->
<script src="../public/js/bootstrap.min.js"></script>
<!-- Morris.js charts -->
<!-- AdminLTE App -->
<script src="../public/js/adminlte.min.js"></script>
<script src="../public/datatables/buttons.colVis.min.js"></script>
<script src="../public/datatables/buttons.html5.min.js"></script>
<script src="../public/datatables/dataTables.buttons.min.js"></script>
<script src="../public/datatables/jquery.dataTables.min.js"></script>
<script src="../public/datatables/jszip.min.js"></script>
<script src="../public/datatables/pdfmake.min.js"></script>
<script src="../public/datatables/vfs_fonts.js"></script>
<script src="../public/datatables/datatables.min.js"></script>
<script src="../public/js/bootbox.min.js"></script>
<script src="../public/js/bootstrap-select.min.js"></script>
</body>
</html>