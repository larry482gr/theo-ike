<?php
class ControllerFooter extends Controller {
	protected function index() {
		$this->data['lang'] = $this->language->getCurrentLanguage();
		$this->data['header'] = $this->language->getLanguage('header');
		
		$this->data['scripts'] = $this->document->getScripts();
		$this->template = 'footer.tpl';
    	$this->render();
	}
}
?>