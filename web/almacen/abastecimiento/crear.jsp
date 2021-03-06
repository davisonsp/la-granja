<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib tagdir="/WEB-INF/tags/" prefix="t"%>
<t:template-user>
    <jsp:attribute name="head">
        <link href="/la-granja/resources/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
    </jsp:attribute>
    <jsp:attribute name="body">
        <div class="content-wrapper">
            <div class="container-fluid">
                
                <div class="row">
                    <div class="col-sm-12 col-md-12 col-lg-6">
                        <div class="card mb-3">
                            <div class="card-header">
                                <i class="fa fa-table"></i> Lista Item:
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTableI" style="width:100%">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Marca</th>
                                                <th>Nombre</th>
                                                <th>Unidad Medida</th>
                                                <th>Accion</th>
                                            </tr>
                                        </thead>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-12 col-md-12 col-lg-6" id="solicitudAbastecimiento">
                        <div class="card mb-3">
                            <div class="card-header">
                                <i class="fa fa-table"></i> Solicitud Abastecimiento:
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTableAHI" style="width:100%">
                                        <thead>
                                            <tr>
                                                <th>Marca</th>
                                                <th>Nombre</th>
                                                <th>Cantidad</th>
                                                <th>Accion</th>
                                            </tr>
                                        </thead>
                                    </table>
                                </div>
                            </div>
                            <div class="card-footer">
                                <form id="formCreateAbastecimiento">
                                    <div class="form-group">
                                        <label for="observacion">Observacion</label>
                                        <textarea class="form-control" id="observacion" name="observacion" rows="1"></textarea>
                                    </div>
                                    <button id="btnCreateAbastecimiento" class="btn btn-primary" type="submit">Solicitar</button>
                                    <img id="loading" src="${pageContext.request.contextPath}/resources/images/ajax-loader.gif" style="display: none;"/>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Modal -->
                <div class="modal fade" id="addItemModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLongTitle">Agregar Item a Solicitud</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <img id="i_img" class="img-fluid" src="${initParam.la_granja_api_url}/presentacion_item/get-image/item.png"/>
                                        </div>
                                        <div class="col-md-6">
                                            <input id="i_id">
                                            <input id="i_json">
                                            <div class="form-group">
                                                <label for="ahi_cantidad">Cantidad</label>
                                                <input class="form-control" id="ahi_cantidad" name="ahi_cantidad" type="number"><span id="unidad_medida_simbolo"></span>
                                            </div>
                                            <button id="btnAddAHI" class="btn btn-primary">Agregar</button>
                                            <button id="btnEditAHI" class="btn btn-primary">Guardar</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </jsp:attribute>
    <jsp:attribute name="scripts">
        <script src="${pageContext.request.contextPath}/resources/vendor/datatables/jquery.dataTables.js"></script>
        <script src="${pageContext.request.contextPath}/resources/vendor/datatables/dataTables.bootstrap4.js"></script>

        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/almacen/abastecimiento/create-abastecimiento.js"></script>
    </jsp:attribute>
</t:template-user>