{#
{% extends '_layout.swig' %}
{% import '_macro/post-collapse.swig' as post_template %}
{% import '_macro/sidebar.swig' as sidebar_template %}

{% block title %}{{ __('title.tag') }}: {{ page.tag }} | {{ config.title }}{% endblock %}

{% block content %}
#}
  {#################}
  {### TAG BLOCK ###}
  {#################}

  {#}
  <div class="post-block tag">

    <div id="posts" class="posts-collapse">
      <div class="collection-title">
        <{% if theme.seo %}h2{% else %}h1{% endif %}>{#
        #} {#{{ page.tag }} #} {#
        #} {#<small>{{  __('title.tag')  }}</small>
        </{% if theme.seo %}h2{% else %}h1{% endif %}>
      </div>

      {% for post in page.posts %}
        {{ post_template.render(post) }}
      {% endfor %}
    </div>
    
  </div>
  #}
  {#####################}
  {### END TAG BLOCK ###}
  {#####################}
  {#
  {% include '_partials/pagination.swig' %}
{% endblock %}

{% block sidebar %}
  {{ sidebar_template.render(false) }}
{% endblock %}
#}

{% extends '_layout.swig' %}
{% import '_macro/post.swig' as post_template %}
{% import '_macro/sidebar.swig' as sidebar_template %}

{% block title %}{{ config.title }}{% if theme.index_with_subtitle and config.subtitle %} - {{config.subtitle }}{% endif %}{% endblock %}

{% block page_class %}
  {% if is_home() %}page-home{% endif -%}
{% endblock %}

{% block content %}
  <section id="posts" class="posts-expand">
    {% for post in page.posts %}
      {{ post_template.render(post, true) }}
    {% endfor %}
  </section>

  {% include '_partials/pagination.swig' %}
{% endblock %}

{% block sidebar %}
  {{ sidebar_template.render(false) }}
{% endblock %}