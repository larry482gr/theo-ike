<?php
class ControllerFooter extends Controller {
	protected function index() {
		$this->data['lang'] = $this->language->getCurrentLanguage();
		$this->data['footer'] = $this->language->getLanguage('footer');
		
		$this->data['scripts'] = $this->document->getScripts();
		$this->template = 'footer.tpl';
    	$this->render();
	}
}
?>