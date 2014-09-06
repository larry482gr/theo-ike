<?php
class ControllerHome extends Controller {
	// Subaction argument defines whether user is in normal login, just registered or activation state.
	public function index() {
		$lang_id = $this->language->getCurrentLanguageId();
		$this->data['lang'] = $this->language->getCurrentLanguage();
		$this->data['home'] = $this->language->getLanguage('home');
		$this->data['generalInfo'] = $this->language->getLanguage('generalInfo');
		$this->data['companyInfo'] = $this->language->getLanguage('companyInfo');
		$this->data['office'] = $this->language->getLanguage('office');
		$this->data['services'] = $this->language->getLanguage('services');
		$this->data['contact'] = $this->language->getLanguage('contact');
		$this->data['form'] = $this->language->getLanguage('form');
		$this->data['underConstruction'] = $this->language->getLanguage('underConstruction');
		
		$this->document->addStyle('home');
		$this->document->addScript('home');
		$this->document->addStyle('contact_us');
		$this->document->addScript('contact_us');
		// $this->document->addScript('under_construction');
		
		// Assign header/footer to children object
		$this->children = array('header', 'footer');
		
		// Assign at template object the tpl
		$this->template = 'index.tpl';
		$this->response->setOutput($this->render());
	}
}
?>