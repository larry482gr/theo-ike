<?php
class ControllerContactUs extends Controller {
	public function index($args = false) {
			$lang_id = $this->language->getCurrentLanguageId();
			$this->data['lang'] = $this->language->getCurrentLanguage();
			$this->data['contact'] = $this->language->getLanguage('contact');
			$this->data['form'] = $this->language->getLanguage('form');
	
			$this->document->addStyle('contact_us');
			$this->document->addScript('contact_us');
			// $this->document->addStyle('left_part');
			
			// Assign header/footer to children object
			$this->children = array('header', 'footer');
			
			// Assign at template object the tpl
			$this->template = 'contact_us.tpl';
			$this->response->setOutput($this->render());
	}
	
	public function processContactForm() {
		$name = htmlspecialchars($this->request->post['name']);
		$email = htmlspecialchars($this->request->post['email']);
		$subject = htmlspecialchars($this->request->post['subject']);
		$message = nl2br(htmlspecialchars($this->request->post['message']));
		
		if(empty($name) || empty($email) || empty($subject) || empty($message))
			die('fill_all');
		else {
			$to      = 'g.theodorou.ike@gmail.com';
			$message = '<h3>Μήνυμα από <span style="color: #2a2a37">'.$name.'</span> μέσω της Φόρμας Επικοινωνίας</h3><div>'.$message.'</div>';
			// To send HTML mail, the Content-type header must be set
			$headers  = 'MIME-Version: 1.0' . "\r\n";
			$headers .= 'Content-type: text/html; charset=utf-8' . "\r\n";
			
			// Additional headers
			$headers .= 'From: '.$name.' <'.$email.'>' . "\r\n";
			$headers .= 'Reply-To: ' . $email . "\r\n";
			$headers .= 'X-Mailer: PHP/' . phpversion();
			
			if(mail($to, $subject, $message, $headers))
				die('success');
		}
		
		die('error');
	}
}
?>