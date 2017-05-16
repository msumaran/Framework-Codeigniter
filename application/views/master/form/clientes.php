<div class="form">
<?php

echo $this->form_builder->open_form(array('action' => '', 'name'=> 'formapp', 'ng-submit'=>"submitForm(formapp.$valid)"  ));
                        
echo $this->form_builder->build_form_horizontal(array(
array(
    'id' => 'name',
    'required'=>'',
    'label' => 'Nombre',
    'value' =>$row->name
),

 array(
    'id' => 'via',
    'type' =>'dropdown',
    'label' => 'Via',
    'data-live-search'=>'true',
    'options' => $this->m_model->via_ar,
    'value' =>$row->via
),
 array(
    'id' => 'web',
    'label' => 'Web',
    'value' =>$row->web
),
array(
    'id' => 'giros_id',
    'type' =>'dropdown',
    'label' => 'Giro',
    'required' => '',
    'data-live-search'=>'true',
    'options' => $this->m_model->giros_ar,
    'value' =>$row->giros_id
),
array(
    'id' => '',
    'type' => 'submit',
    'label' => 'Guardar'
)
));

echo $this->form_builder->close_form();

?>
</div>
