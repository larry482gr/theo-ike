	</div> <!-- container closing tag -->
	</div> <!-- row closing tag -->
	<div class="footer">
	  <div class="container">
	  	<div>
	  		<?php echo $footer['copyright']; ?>
	  	</div>
	  </div>
	</div>
	
	<?php
		foreach($scripts as $script){
			echo '<script src="'._JS_DIR_.$script.'.js" type="text/javascript"></script>';	
		}
	?>

	</body>
</html>