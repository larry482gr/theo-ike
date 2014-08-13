<?php
class ControllerHeader extends Controller {
	protected function index() {
		$lang_id = $this->language->getCurrentLanguageId();
		$this->data['lang'] = $this->language->getCurrentLanguage();
		$this->data['header'] = $this->language->getLanguage('header');
		$this->data['menu'] = $this->language->getLanguage('menu');
		
		$this->data['activated_tab'] = 'non-active';
		if (!empty($this->request->request['route']) && strpos($this->request->request['route'], 'admin') === false) {
			$tab = explode('/', $this->request->request['route']);
			$this->data['activated_tab'] = $tab[0];
		}
		else {
			$this->data['activated_tab'] = '/';
		}
		
		$this->document->addStyle("libraries/bootstrap.min");
		$this->document->addStyle("header");
		$this->document->addScript("header");
		
		$this->data['keywords'] = $this->document->getKeywords();
		$this->data['description'] = $this->document->getDescription();
		$this->data['title'] = $this->document->getTitle();
		$this->data['styles'] = $this->document->getStyles();
		
		$this->template = 'header.tpl';
    	$this->render();
	}
}
?>