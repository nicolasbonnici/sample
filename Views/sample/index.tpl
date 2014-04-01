{% extends 'layout.tpl' %} {% block meta_title %}Test{% endblock meta_title %} {% block meta_description %}{% endblock
meta_description %} {% block js %}
<script type="text/javascript" src="/lib/plugins/bootstrap-editable/js/bootstrap-editable.min.js"></script>
<script type="text/javascript" src="/lib/plugins/moment/js/moment.min.js"></script>
<script type="text/javascript" src="/lib/plugins/summernote/js/summernote.js"></script>
{% endblock %} {% block css %}
<link href="/lib/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<link href="/lib/plugins/bootstrap-editable/css/bootstrap-editable.css" rel="stylesheet">
<link href="/lib/plugins/summernote/css/summernote.css" rel="stylesheet">
<link href="/lib/plugins/summernote/css/summernote-bs3.css" rel="stylesheet">
{% endblock %} {% block modal %}
<div class="modal fade" id="modal-todo" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content" id="modal-todo-content">
            <p>&nbsp;</p>
        </div>
    </div>
</div>
{% endblock %} {% block main %}
<div class="row clearfix transparentBlackBg rounded well ui-transition ui-shadow">
    <div class="col-md-12 column">
        <div class="page-header">
            <h1 class="showOnHover">Test</h1>
        </div>
    </div>
    <div class="col-md-12 column"></div>
</div>
{% endblock %}
