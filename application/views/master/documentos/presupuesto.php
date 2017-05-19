<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	
	<title>Nativos Admin - Presupuesto</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<style>
@media all {
    .page-break { display: block; page-break-before: always; }
}
</style>
</head>
<body>

	<page backtop='160px' backimg="images/logo_marca_agua.jpg" backimgx="right" backimgy="top">
     <page_header backimg="images/logo_marca_agua.jpg">
   	
     	<div class="foto"><img src="images/logo_marca_agua.jpg" alt="Nativos Digitales" /></div>
     </page_header>

	 <page_footer>

     </page_footer>
	<div id="page">
			<div class="datos">
			<?php
			if(empty($cotizacion->padre)) $id = $cotizacion->id;
            else $id = $cotizacion->padre.'-'.$cotizacion->copia;
			?>
				<div class="row"><div class="text">Cliente:</div> <div class="texto"><?php echo $cotizacion->clientes; ?></div></div>
				<div class="row"><div class="text">Fecha:</div> <div class="texto"><?php echo get_current_fecha_mysql('now'); ?></div></div>
				<div class="row"><div class="text">Presupuesto:</div> 
				<div class="texto">PS-00<?php echo $id; ?>-<?php echo date('Y'); ?></div></div>
				<div class="row"><div class="text">Proyecto:</div> <div class="texto"><?php echo $cotizacion->proyectos; ?></div></div>
				<div class="row"><div class="text">Servicio:</div> <div class="texto"><?php echo $cotizacion->servicio; ?></div></div>
				<div class="row"><div class="text">IGV:</div> <div class="texto">18%</div></div>
			</div>
			<table cellspacing="2">
				<thead>
					<tr>
						<td>Servicio</td><td>Descripción</td><td>Monto</td>
					</tr>
				</thead>
				<tbody>
					<?php
					$y = 0;
					
					foreach ($tareas as $row) {
						if(!empty($row->monto) and $row->cronogramatarea != 'Freelos' and $row->cronogramatarea != 'Descuento'){
							$y++;
						}

					}
					
					foreach ($tareas as $row) {
						if(!empty($row->monto)){
							if(!empty($cotizacion->descuento) and $cotizacion->descuento < 0 ){
								//var_dump($row);
								if( $row->cronogramatarea != 'Freelos' and $row->cronogramatarea != 'Descuento'){
									$descuento = $cotizacion->descuento_total/$y;
									$descuento = round($descuento,2);
									$row->monto = $row->monto + -($descuento);
									
								}
								
							}
							//var_dump(utf8_encode($row->descp ));
							echo '<tr>
							<td class="servicio">'.$row->cronogramatarea.'</td>
							<td class="descp_text">'.nl2br($row->descp).'</td>
							<td class="monto">S/. '.number_format($row->monto,2).'</td>
							</tr>';
						}
						
					}
					//die;
					?>
					
				</tbody>
				<tfoot>
					<tr>
						<?php
						//var_dump($cotizacion);
						if(!empty($cotizacion->descuento) and $cotizacion->descuento < 0 ){
							$cotizacion->totalsigv = $cotizacion->totalsigv + -($cotizacion->descuento_total);
						}
						//die;
						?>
						<td colspan="2">SUBTOTAL</td>
						<td>S/. <?php echo number_format($cotizacion->totalsigv,2); ?></td>
					</tr>
					<?php
					if(!empty($cotizacion->descuento) and $cotizacion->descuento > 0 ){
					?>
					


					<tr class="bgigv">
						<td colspan="2">DESCUENTO <?php echo $cotizacion->descuento; ?>%</td>
						<td style="color:#CC3333;">S/. -<?php echo number_format($cotizacion->descuento_total,2); ?></td>
					</tr>
					<tr>
						<?php
						//var_dump($cotizacion);
						//if(!empty($cotizacion->descuento) and $cotizacion->descuento < 0 ){
							$cotizacion->totalsigv = $cotizacion->totalsigv + -($cotizacion->descuento_total);
						//}
						//die;
						?>
						<td colspan="2">SUBTOTAL CON DESCUENTO</td>
						<td>S/. <?php echo number_format($cotizacion->totalsigv,2); ?></td>
					</tr>

					<?php
					}
					?>
					<tr class="bgigv">
						<td colspan="2" style="color:#000;">I.G.V.</td>
						<td style="color:#000;">S/. <?php echo number_format($cotizacion->totaligv,2); ?></td>
					</tr>
					<tr>
						<td colspan="2">TOTAL</td>
						<td>S/. <?php echo number_format($cotizacion->totalcigv,2); ?></td>
					</tr>

				</tfoot>	

			</table>


			<div class="equipo">
				<div class="tit">Equipo designado:</div>
				<?php 

				foreach ($sueldos as $row) {
					echo '<div class="row">'.$row->sueldos.'</div>';
				}

				?>
			</div>
			<div class="horas_total">Horas Empleadas mensualmente: <?php echo $cotizacion->total_horas; ?> Horas</div>
			<div class="horas_total">La vigencia de la cotización es de 90 días calendario.</div>
	</div>

  	</page>

<style type="text/css">
.firma{ width: 50%; text-align: center; float: right; margin-left: 320px; margin-top: 12px;}
body{
font-family: Tahoma,Geneva,Kalimati,sans-serif;;
font-size: 14px;
line-height: 16px;

}
ul li{ padding: 6px 0;}
.mas_foto{display: block; float: left;width: 300px; background-color: #000;height: 120px;}
.foto{  height: 120px;width: 100%;display: block; text-align: right; background: url('images/logo_marca_agua.jpg') no-repeat top right;}
#page{
width: 680px;
margin: 0 auto;
font-family: Tahoma,Geneva,Kalimati,sans-serif;
font-size: 14px;
margin-top: 20px;
}
.caja{ padding: 8px 16px; width: 100%; background-color: #00adca; font-size: 19px; color: #fff; margin: 16px 0 42px 0; text-align: center;
line-height: 23px; clear: both;

}
table{ width: 100%; padding:2px; margin: 0; border: 0;border-collapse: collapse; display: table-cell;
border-spacing: 0;font-family: Tahoma,Geneva,Kalimati,sans-serif; font-size: 13px; border-collapse:collapse;border-width: 1px 1px 1px 1px;border: solid #635C5F;}
table {background-color:#000;}
table thead tr{ background-color: #00adca; padding:0; border: solid #635C5F;border-width: 1px 1px 1px 1px;}
table thead td{ text-align: center; padding:8px 6px; color: #fff; font-weight: bold;border: solid #635C5F;border-width: 1px 1px 1px 1px;}
table tbody tr{padding:0; border: solid #635C5F;border-width: 1px 1px 1px 1px;}
table tbody td{ text-align: center; padding:12px 6px; color: #333;background-color: #F5F5F5;border: solid #635C5F;border-width: 1px 1px 1px 1px;
border-bottom: solid #635C5F;}
table tbody td span{ clear: both; line-height: 1px; height: 1px; width: 100px; width: 100%;
}
table tfoot tr{background-color: #00adca; padding:0; border: 0;}

table tfoot td{text-align: left; padding:8px 6px; color: #fff; font-weight: bold;border: 1px #635C5F solid;}
table tfoot	.bgigv{background-color: #fff; color:#000 !important;}
table tfoot	.bgigv td{color:#000 !important;}
.monto{width: 100px;font-weight: bold;}
.horas_total{ width: 60%; margin: 20px auto 0 auto; text-align: center;background-color: #00adca;color: #fff;
padding: 6px 6px;border: 1px #000 solid;}
.servicio{width: 150px; font-weight: bold;}
p{ margin-top: 8px 0;}
.datos{ margin: 18px 0 18px 0; font-weight: bold;}
.datos .row{ margin: 8px 0;}
.datos .text{width: 140px; float: left; display: block; min-width: 8120px;}
.datos .texto{float: left; width: 400px; display: block; font-weight: normal; font-style: italic;}
.equipo{width: 60%; margin: 20px auto 0 auto; text-align: center; }
.equipo .row{ margin: 6px 0;}
.equipo .tit{ font-weight: bold;border: 1px #666 solid; background-color: #F5F5F5; padding: 2px;}
#page .content{
	font-family: Tahoma,Geneva,Kalimati,sans-serif;;
	font-size: 14px;
}
</style>
</body>

</html>