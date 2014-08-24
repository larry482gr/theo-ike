<?php echo $header; ?>
	<div class="panel panel-primary">
	  <div class="panel-heading"><h3 class="panel-title"></h3></div>
	  <div id="content-panel" class="panel-body">
	  	<dl id="home" class="hidden col-md-12 col-sm-12 col-xs-12">
	  	  <?php echo $home; ?>
	  	</dl>
	  	<dl id="general_info" class="hidden col-md-12 col-sm-12 col-xs-12">
	  	  <dt>
	  		<h3 class="under-construction"><?php echo $underConstruction; ?></h3>
	  	  </dt>
	  	</dl>
	  	<dl id="office" class="hidden col-md-12 col-sm-12 col-xs-12">
	  	  <div id="office-desc" class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
	  		<?php echo $office; ?>
	  	  </div>
	  	  <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
	  	    <div id="office-carousel" class="carousel slide" data-ride="carousel">
			  <!-- Indicators -->
			  <ol class="carousel-indicators">
			    <li data-target="#office-carousel" data-slide-to="0" class="active"></li>
			    <li data-target="#office-carousel" data-slide-to="1"></li>
			    <li data-target="#office-carousel" data-slide-to="2"></li>
			    <li data-target="#office-carousel" data-slide-to="3"></li>
			    <li data-target="#office-carousel" data-slide-to="4"></li>
			    <li data-target="#office-carousel" data-slide-to="5"></li>
			  </ol>
			
			  <!-- Wrapper for slides -->
			  <div class="carousel-inner">
			    <div class="item active">
			      <img src="/resources/images/office/4927_4927-1.jpg" alt="Office Image 1">
			    </div>
			    <div class="item">
			      <img src="/resources/images/office/4927_4927-2.jpg" alt="Office Image 2">
			    </div>
			    <div class="item">
			      <img src="/resources/images/office/4927_4927-4.jpg" alt="Office Image 3">
			    </div>
			    <div class="item">
			      <img src="/resources/images/office/4927_4927-6.jpg" alt="Office Image 4">
			    </div>
			    <div class="item">
			      <img src="/resources/images/office/4927_4927-10.jpg" alt="Office Image 5">
			    </div>
			    <div class="item">
			      <img src="/resources/images/office/4927_4927-12.jpg" alt="Office Image 6">
			    </div>
			  </div>
			
			  <!-- Controls -->
			  <a class="left carousel-control" href="#office-carousel" role="button" data-slide="prev">
			    <span class="glyphicon glyphicon-chevron-left"></span>
			  </a>
			  <a class="right carousel-control" href="#office-carousel" role="button" data-slide="next">
			    <span class="glyphicon glyphicon-chevron-right"></span>
			  </a>
			</div>
	  	  </div>
	  	</dl>
	  	<dl id="company_info" class="hidden col-md-12 col-sm-12 col-xs-12">
	  		<?php echo $companyInfo; ?>
	  	</dl>
	  	<dl id="services" class="hidden col-md-12 col-sm-12 col-xs-12">
	  	  <dt>
	  		<h3 class="under-construction"><?php echo $underConstruction; ?></h3>
	  	  </dt>
	  	</dl>
	    <dl id="contact_us" class="hidden col-md-12 col-sm-12 col-xs-12">
		    <dt>
			  <h4 class="form-title"><?php echo $form['contactForm']; ?></h4>
		    </dt>
		    <dd>
		      <div class="row">
		      	<div class="col-md-7 col-sm-7">
		      	  <form id="contact-form" class="form-horizontal" role="form" method="post">
			      <?php
			        if(!empty($invalidError)) {
			      ?>
			      <div class="form-group">
				    <div class="alert alert-danger col-md-offset-3 col-md-5"><?php echo $invalidError; ?></div>
				  </div>
				  <?php
				    }
				  ?>
				  <div class="form-group">
				    <label for="full_name" class="col-md-4 col-sm-4 col-xs-12 control-label"><?php echo $form['fullName']; ?></label>
				    <div class="col-md-7 col-sm-7 col-xs-9">
				      <input type="text" class="form-control" id="full_name" name="contact[full_name]" placeholder="<?php echo $form['fullName']; ?>">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="email" class="col-md-4 col-sm-4 col-xs-12 control-label"><?php echo $form['email']; ?></label>
				    <div class="col-md-7 col-sm-7 col-xs-9">
				      <input type="email" class="form-control" id="email" name="contact[email]" placeholder="<?php echo $form['email']; ?>">
				      <p id="email-error" class="help-block"><?php echo $form['emailError']; ?></p>
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="subject" class="col-md-4 col-sm-4 col-xs-12 control-label"><?php echo $form['subject']; ?></label>
				    <div class="col-md-7 col-sm-7 col-xs-9">
				      <input type="text" class="form-control" id="subject" name="contact[subject]" placeholder="<?php echo $form['subject']; ?>">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="message" class="col-md-4 col-sm-4 col-xs-12 control-label"><?php echo $form['message']; ?></label>
				    <div class="col-md-7 col-sm-7 col-xs-9">
				      <textarea rows="9" class="form-control" id="message" name="contact[message]"></textarea>
				      <p id="required-block" class="help-block"><?php echo $form['allRequired']; ?></p>
				    </div>
				  </div>
				  <div class="form-group">
				    <div class="col-md-offset-4 col-sm-offset-4 col-md-4 col-sm-4">
				      <button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-send"></span><?php echo $form['send']; ?></button>
				    </div>
				  </div>
				  <input type="hidden" id="message-placeholder" value="<?php echo $form['messagePlaceholder']; ?>" />
				</form>
			  	</div>
			  	<div class="col-md-5 col-sm-5">
			  	  <div class="contact-info">
			  	    <div><span class="glyphicon glyphicon-map-marker"></span><a class="geo-link" href="geo:Ορφανίδου 2, Θεσσαλονίκη?q=Ορφανίδου 2, Θεσσαλονίκη"><?php echo $contact['office']; ?></a></div>
			  	    <div><span class="glyphicon glyphicon-earphone"></span><a href="tel:+302310528616"><?php echo $contact['tel']; ?></a></div>
			  	    <div><span class="glyphicon glyphicon-phone"></span><a href="tel:+306940260668"><?php echo $contact['mobile']; ?></a></div>
			  	    <div><span class="glyphicon glyphicon-print"></span><?php echo $contact['fax']; ?></div>
			  	    <div><span class="glyphicon glyphicon-envelope"></span><a href="mailto:info@theodorou-ike.gr"><?php echo $contact['email']; ?></a></div>
			  	  </div>
			  	</div>
		    </dd>
	    </dl>
	  </div>
	</div>
<?php echo $footer; ?>