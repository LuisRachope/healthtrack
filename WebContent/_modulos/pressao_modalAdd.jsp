<div id="modal-pressao-add" class="modal fade" role="dialog">
	<div class="modal-dialog modal-md">
		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Nova Press�o</h4>
			</div>
			<div class="modal-body">
				<form class="container-fluid form-vertical" id="form-add-pressao" method="post" action="PressaoArterial?acao=insert">
					<div class="col-md-12">
						<div class="form-group col-md-6">
							<label>Press�o Sist�lica:</label>
							<input type="text" id="pressistolica" name="pressistolica" class="form-control" placeholder="A maior, em mmHg (Ex: 120)" id="pressistolica" required>
						</div>
						<div class="form-group col-md-6">
							<label>Press�o Diast�lica:</label>
							<input type="text" id="pressdiastolica" name="pressdiastolica" id="pressdiastolica" class="form-control" placeholder="A menor, em mmHg (Ex: 80)" required>
						</div>
					</div>
					<div class="col-md-12">
						<div class="form-group col-md-12">
							<label>Data:</label> <input type="text" name="data" class="form-control data" placeholder="DD/MM/AAAA" required>
						</div>
					</div>
					<br>
					<button type="submit" class="btn-danger btn-lg col-md-offset-9 col-md-3" id="salvarpressao">Salvar</button>
				</form>
			</div>
		</div>
	</div>
</div>