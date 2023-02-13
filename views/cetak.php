

<html>
    <head>
        <title>Cetak Kartu</title>
        <script language="javascript">
        function printpage()
            {
                window.print();
            }
        </script>
    </head>
   <style>
   #card{
	   float:left;
	   width: 20cm;
        height: 29.7cm;
        margin: 0mm 0mm 0mm 0mm; 
	 
		background-repeat: no-repeat;
		background-size: contain;
	   border:1px solid white;
	  
	   
	   -webkit-print-color-adjust: exact;
   }
   #c_identitas{
	   margin-top:20px;
		margin-left:15px;
	   width:100%;
	   height:auto;
		text-align:left;

	   
   }

	#c_isi{
	   margin-top:1px;
		margin-left:15px;
	   width:90%;
	   height:auto;
	

	   
   }

	#c_tgl{
	
	   margin-top:20px;
		
		margin-left:15px;
	   width:30%;
	   height:120px;
	

	   
   }

	#c_ttdmhs{
	   margin-top:20px;
		margin-left:15px;
		float:left;
	   width:20%;
	   height:120px;
	

	   
   }

	#c_ttddsn{
	   margin-top:20px;
		float:right;
		margin-right:145px;
	   width:20%;
	   height:120px;
	

	   
   }
  

   </style>
   
   
     <body onLoad="printpage()">
	
	 <div id="card">
	<h1>Laporan Alat</h1>
	  <div id="c_identitas">
	   <p>Berikut adalah laporan data sensor fuzzy </p>

	 </div>
	 
	  <div id="c_isi">
		<table style="width:100%">
		<thead>
		<tr>
		<td>No</td>
		<td>Waktu</td>
		<td>Nilai Sensor</td>
		</tr>
		</thead>
		<tbody>
		<?php $no=1; foreach ($data as $d) { ?>
		<tr>
		<td style="text-align:center"><?php echo $no++ ?></td>
		<td style="text-align:center"><?php echo $d->tgl ?></td>
		<td style="text-align:center"><?php echo $d->nilai ?></td>
		</tr>
		<?php } ?>
		</tbody>
		</table>
	 </div>
	
	 </body>
   </head>
</html>