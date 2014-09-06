{% extends 'layout.tpl' %} {% block meta_title %}Test{% endblock meta_title %} {% block meta_description %}{% endblock
meta_description %} 

{% block js %}{% endblock %} 
{% block css %}{% endblock %} 

{% block modal %}
<div class="modal fade" id="modal-sample" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content" id="modal-sample-content">
            <p>&nbsp;</p>
        </div>
    </div>
</div>
{% endblock %} 

{% block main %}
<div class="container">
    <div class="row clearfix transparentBlackBg rounded well ui-transition ui-shadow">
        <div class="col-md-2 column">
            <img src="/lib/bundles/{{sBundle}}/img/icon.png" alt="App icon" />
        </div>
        <div class="col-md-10 column">
            <h1 class="showOnHover">
                Hello sample! <small class="targetToShow">1.0</small>
            </h1>
            <br />
            <ul class="nav nav-pills transparentBlackBg rounded">
                <li class="active"><a href="#" class="ui-sendxhr" data-url="/backend/blog/dashboard/"
                    data-selector="#dashboard" role="button"> <span class="glyphicon glyphicon-home"></span> <strong>Dashboard</strong>
                </a></li>
                <li><a href="#"><span class="glyphicon glyphicon-bookmark"></span> <strong>Activities</strong></a></li>
                <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"> <span
                        class="glyphicon glyphicon-cog"></span> <strong>Settings</strong> <span class="caret"></span>
                </a>
                    <ul class="dropdown-menu">
                        <li><a href="#" type="button" class="ui-sendxhr" data-url="/backend/lifestream/createFeed/"
                            data-selector="#modal-lifestream-content" role="button" data-toggle="modal"> <span
                                class="glyphicon glyphicon-file"></span> Bla bla
                        </a></li>
                        <li><a href="#" type="button" class="ui-sendxhr" data-url="/backend/lifestream/posts/"
                            data-selector="#dashboard" role="button"> <span class="glyphicon glyphicon-file"></span>
                                Gérer
                        </a></li>
                    </ul></li>
            </ul>
        </div>
        <div class="col-md-12 column">

        </div>
    </div>
</div>
{% endblock %}
