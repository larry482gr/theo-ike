<?php
class ControllerHome extends Controller {
	// Subaction argument defines whether user is in normal login, just registered or activation state.
	public function index() {
		// $this->data['home'] = $this->language->getLanguage('home');
		$this->data['lang'] = $this->language->getCurrentLanguage();
		$lang_id = $this->language->getCurrentLanguageId();
		
		$this->document->addStyle('home');
		
		// Assign header/footer to children object
		$this->children = array('header', 'footer');
		
		// Assign at template object the tpl
		$this->template = 'index.tpl';
		$this->response->setOutput($this->render());
	}
}
?>