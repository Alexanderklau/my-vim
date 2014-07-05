




<!DOCTYPE html>
<html class="   ">
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# object: http://ogp.me/ns/object# article: http://ogp.me/ns/article# profile: http://ogp.me/ns/profile#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    
    <title>vim-pathogen/autoload/pathogen.vim at master · tpope/vim-pathogen · GitHub</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png" />
    <meta property="fb:app_id" content="1401488693436528"/>

      <meta content="@github" name="twitter:site" /><meta content="summary" name="twitter:card" /><meta content="tpope/vim-pathogen" name="twitter:title" /><meta content="vim-pathogen - pathogen.vim: manage your runtimepath" name="twitter:description" /><meta content="https://avatars0.githubusercontent.com/u/378?s=400" name="twitter:image:src" />
<meta content="GitHub" property="og:site_name" /><meta content="object" property="og:type" /><meta content="https://avatars0.githubusercontent.com/u/378?s=400" property="og:image" /><meta content="tpope/vim-pathogen" property="og:title" /><meta content="https://github.com/tpope/vim-pathogen" property="og:url" /><meta content="vim-pathogen - pathogen.vim: manage your runtimepath" property="og:description" />

    <link rel="assets" href="https://assets-cdn.github.com/">
    <link rel="conduit-xhr" href="https://ghconduit.com:25035">
    

    <meta name="msapplication-TileImage" content="/windows-tile.png" />
    <meta name="msapplication-TileColor" content="#ffffff" />
    <meta name="selected-link" value="repo_source" data-pjax-transient />
      <meta name="google-analytics" content="UA-3769691-2">

    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="collector-cdn.github.com" name="octolytics-script-host" /><meta content="github" name="octolytics-app-id" /><meta content="70403CEA:485B:395EF9D:53B74A01" name="octolytics-dimension-request_id" />
    

    
    
    <link rel="icon" type="image/x-icon" href="https://assets-cdn.github.com/favicon.ico" />


    <meta content="authenticity_token" name="csrf-param" />
<meta content="q7nqzMzCgRbt/ZwDOfJe7txYBtMrIiStC7bkQoj6XyrxNyHY4wLNJ7z46oklwqClw8U50GHqIw3ieUYjvmJC5g==" name="csrf-token" />

    <link href="https://assets-cdn.github.com/assets/github-b86b560d4138567815944297e6bd9f0bb29e59eb.css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://assets-cdn.github.com/assets/github2-de984238bc39c374ee4a4db0ff8e49538c787680.css" media="all" rel="stylesheet" type="text/css" />
    


    <meta http-equiv="x-pjax-version" content="5b69c0d16986b0d363ce28fadb9bd912">

      
  <meta name="description" content="vim-pathogen - pathogen.vim: manage your runtimepath" />


  <meta content="378" name="octolytics-dimension-user_id" /><meta content="tpope" name="octolytics-dimension-user_login" /><meta content="434430" name="octolytics-dimension-repository_id" /><meta content="tpope/vim-pathogen" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="434430" name="octolytics-dimension-repository_network_root_id" /><meta content="tpope/vim-pathogen" name="octolytics-dimension-repository_network_root_nwo" />

  <link href="https://github.com/tpope/vim-pathogen/commits/master.atom" rel="alternate" title="Recent Commits to vim-pathogen:master" type="application/atom+xml" />

  </head>


  <body class="logged_out  env-production linux vis-public page-blob">
    <a href="#start-of-content" tabindex="1" class="accessibility-aid js-skip-to-content">Skip to content</a>
    <div class="wrapper">
      
      
      
      


      
      <div class="header header-logged-out">
  <div class="container clearfix">

    <a class="header-logo-wordmark" href="https://github.com/">
      <span class="mega-octicon octicon-logo-github"></span>
    </a>

    <div class="header-actions">
        <a class="button primary" href="/join">Sign up</a>
      <a class="button signin" href="/login?return_to=%2Ftpope%2Fvim-pathogen%2Fblob%2Fmaster%2Fautoload%2Fpathogen.vim">Sign in</a>
    </div>

    <div class="command-bar js-command-bar  in-repository">

      <ul class="top-nav">
          <li class="explore"><a href="/explore">Explore</a></li>
          <li class="features"><a href="/features">Features</a></li>
          <li class="enterprise"><a href="https://enterprise.github.com/">Enterprise</a></li>
          <li class="blog"><a href="/blog">Blog</a></li>
      </ul>
        <form accept-charset="UTF-8" action="/search" class="command-bar-form" id="top_search_form" method="get">

<div class="commandbar">
  <span class="message"></span>
  <input type="text" data-hotkey="s, /" name="q" id="js-command-bar-field" placeholder="Search or type a command" tabindex="1" autocapitalize="off"
    
    
      data-repo="tpope/vim-pathogen"
      data-branch="master"
      data-sha="e4961bf4102cef63b345f75df651f24f25fac910"
  >
  <div class="display hidden"></div>
</div>

    <input type="hidden" name="nwo" value="tpope/vim-pathogen" />

    <div class="select-menu js-menu-container js-select-menu search-context-select-menu">
      <span class="minibutton select-menu-button js-menu-target" role="button" aria-haspopup="true">
        <span class="js-select-button">This repository</span>
      </span>

      <div class="select-menu-modal-holder js-menu-content js-navigation-container" aria-hidden="true">
        <div class="select-menu-modal">

          <div class="select-menu-item js-navigation-item js-this-repository-navigation-item selected">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" class="js-search-this-repository" name="search_target" value="repository" checked="checked" />
            <div class="select-menu-item-text js-select-button-text">This repository</div>
          </div> <!-- /.select-menu-item -->

          <div class="select-menu-item js-navigation-item js-all-repositories-navigation-item">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" name="search_target" value="global" />
            <div class="select-menu-item-text js-select-button-text">All repositories</div>
          </div> <!-- /.select-menu-item -->

        </div>
      </div>
    </div>

  <span class="help tooltipped tooltipped-s" aria-label="Show command bar help">
    <span class="octicon octicon-question"></span>
  </span>


  <input type="hidden" name="ref" value="cmdform">

</form>
    </div>

  </div>
</div>



      <div id="start-of-content" class="accessibility-aid"></div>
          <div class="site" itemscope itemtype="http://schema.org/WebPage">
    <div id="js-flash-container">
      
    </div>
    <div class="pagehead repohead instapaper_ignore readability-menu">
      <div class="container">
        
<ul class="pagehead-actions">


  <li>
      <a href="/login?return_to=%2Ftpope%2Fvim-pathogen"
    class="minibutton with-count star-button tooltipped tooltipped-n"
    aria-label="You must be signed in to star a repository" rel="nofollow">
    <span class="octicon octicon-star"></span>
    Star
  </a>

    <a class="social-count js-social-count" href="/tpope/vim-pathogen/stargazers">
      4,871
    </a>

  </li>

    <li>
      <a href="/login?return_to=%2Ftpope%2Fvim-pathogen"
        class="minibutton with-count js-toggler-target fork-button tooltipped tooltipped-n"
        aria-label="You must be signed in to fork a repository" rel="nofollow">
        <span class="octicon octicon-repo-forked"></span>
        Fork
      </a>
      <a href="/tpope/vim-pathogen/network" class="social-count">
        568
      </a>
    </li>
</ul>

        <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
          <span class="repo-label"><span>public</span></span>
          <span class="mega-octicon octicon-repo"></span>
          <span class="author"><a href="/tpope" class="url fn" itemprop="url" rel="author"><span itemprop="title">tpope</span></a></span><!--
       --><span class="path-divider">/</span><!--
       --><strong><a href="/tpope/vim-pathogen" class="js-current-repository js-repo-home-link">vim-pathogen</a></strong>

          <span class="page-context-loader">
            <img alt="" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
          </span>

        </h1>
      </div><!-- /.container -->
    </div><!-- /.repohead -->

    <div class="container">
      <div class="repository-with-sidebar repo-container new-discussion-timeline js-new-discussion-timeline  ">
        <div class="repository-sidebar clearfix">
            

<div class="sunken-menu vertical-right repo-nav js-repo-nav js-repository-container-pjax js-octicon-loaders">
  <div class="sunken-menu-contents">
    <ul class="sunken-menu-group">
      <li class="tooltipped tooltipped-w" aria-label="Code">
        <a href="/tpope/vim-pathogen" aria-label="Code" class="selected js-selected-navigation-item sunken-menu-item" data-hotkey="g c" data-pjax="true" data-selected-links="repo_source repo_downloads repo_commits repo_releases repo_tags repo_branches /tpope/vim-pathogen">
          <span class="octicon octicon-code"></span> <span class="full-word">Code</span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

        <li class="tooltipped tooltipped-w" aria-label="Issues">
          <a href="/tpope/vim-pathogen/issues" aria-label="Issues" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-hotkey="g i" data-selected-links="repo_issues /tpope/vim-pathogen/issues">
            <span class="octicon octicon-issue-opened"></span> <span class="full-word">Issues</span>
            <span class='counter'>14</span>
            <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>        </li>

      <li class="tooltipped tooltipped-w" aria-label="Pull Requests">
        <a href="/tpope/vim-pathogen/pulls" aria-label="Pull Requests" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-hotkey="g p" data-selected-links="repo_pulls /tpope/vim-pathogen/pulls">
            <span class="octicon octicon-git-pull-request"></span> <span class="full-word">Pull Requests</span>
            <span class='counter'>3</span>
            <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>


    </ul>
    <div class="sunken-menu-separator"></div>
    <ul class="sunken-menu-group">

      <li class="tooltipped tooltipped-w" aria-label="Pulse">
        <a href="/tpope/vim-pathogen/pulse" aria-label="Pulse" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="pulse /tpope/vim-pathogen/pulse">
          <span class="octicon octicon-pulse"></span> <span class="full-word">Pulse</span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped tooltipped-w" aria-label="Graphs">
        <a href="/tpope/vim-pathogen/graphs" aria-label="Graphs" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="repo_graphs repo_contributors /tpope/vim-pathogen/graphs">
          <span class="octicon octicon-graph"></span> <span class="full-word">Graphs</span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped tooltipped-w" aria-label="Network">
        <a href="/tpope/vim-pathogen/network" aria-label="Network" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-selected-links="repo_network /tpope/vim-pathogen/network">
          <span class="octicon octicon-repo-forked"></span> <span class="full-word">Network</span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>
    </ul>


  </div>
</div>

              <div class="only-with-full-nav">
                

  

<div class="clone-url open"
  data-protocol-type="http"
  data-url="/users/set_protocol?protocol_selector=http&amp;protocol_type=clone">
  <h3><strong>HTTPS</strong> clone URL</h3>
  <div class="clone-url-box">
    <input type="text" class="clone js-url-field"
           value="https://github.com/tpope/vim-pathogen.git" readonly="readonly">
    <span class="url-box-clippy">
    <button aria-label="Copy to clipboard" class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="https://github.com/tpope/vim-pathogen.git" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>

  

<div class="clone-url "
  data-protocol-type="subversion"
  data-url="/users/set_protocol?protocol_selector=subversion&amp;protocol_type=clone">
  <h3><strong>Subversion</strong> checkout URL</h3>
  <div class="clone-url-box">
    <input type="text" class="clone js-url-field"
           value="https://github.com/tpope/vim-pathogen" readonly="readonly">
    <span class="url-box-clippy">
    <button aria-label="Copy to clipboard" class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="https://github.com/tpope/vim-pathogen" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>


<p class="clone-options">You can clone with
      <a href="#" class="js-clone-selector" data-protocol="http">HTTPS</a>
      or <a href="#" class="js-clone-selector" data-protocol="subversion">Subversion</a>.
  <a href="https://help.github.com/articles/which-remote-url-should-i-use" class="help tooltipped tooltipped-n" aria-label="Get help on which URL is right for you.">
    <span class="octicon octicon-question"></span>
  </a>
</p>



                <a href="/tpope/vim-pathogen/archive/master.zip"
                   class="minibutton sidebar-button"
                   aria-label="Download tpope/vim-pathogen as a zip file"
                   title="Download tpope/vim-pathogen as a zip file"
                   rel="nofollow">
                  <span class="octicon octicon-cloud-download"></span>
                  Download ZIP
                </a>
              </div>
        </div><!-- /.repository-sidebar -->

        <div id="js-repo-pjax-container" class="repository-content context-loader-container" data-pjax-container>
          


<a href="/tpope/vim-pathogen/blob/ed01fca95c271ab83e14b041aded328a9f9574a7/autoload/pathogen.vim" class="hidden js-permalink-shortcut" data-hotkey="y">Permalink</a>

<!-- blob contrib key: blob_contributors:v21:42c0132dc7f0fdbffa1b144296ebd663 -->

<p title="This is a placeholder element" class="js-history-link-replace hidden"></p>

<div class="file-navigation">
  

<div class="select-menu js-menu-container js-select-menu" >
  <span class="minibutton select-menu-button js-menu-target css-truncate" data-hotkey="w"
    data-master-branch="master"
    data-ref="master"
    title="master"
    role="button" aria-label="Switch branches or tags" tabindex="0" aria-haspopup="true">
    <span class="octicon octicon-git-branch"></span>
    <i>branch:</i>
    <span class="js-select-button css-truncate-target">master</span>
  </span>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax aria-hidden="true">

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <span class="select-menu-title">Switch branches/tags</span>
        <span class="octicon octicon-x js-menu-close"></span>
      </div> <!-- /.select-menu-header -->

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Filter branches/tags" id="context-commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" class="js-select-menu-tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" class="js-select-menu-tab">Tags</a>
            </li>
          </ul>
        </div><!-- /.select-menu-tabs -->
      </div><!-- /.select-menu-filters -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <div class="select-menu-item js-navigation-item selected">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/tpope/vim-pathogen/blob/master/autoload/pathogen.vim"
                 data-name="master"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="master">master</a>
            </div> <!-- /.select-menu-item -->
        </div>

          <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/tpope/vim-pathogen/tree/v2.3/autoload/pathogen.vim"
                 data-name="v2.3"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v2.3">v2.3</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/tpope/vim-pathogen/tree/v2.2/autoload/pathogen.vim"
                 data-name="v2.2"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v2.2">v2.2</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/tpope/vim-pathogen/tree/v2.1/autoload/pathogen.vim"
                 data-name="v2.1"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v2.1">v2.1</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/tpope/vim-pathogen/tree/v2.0/autoload/pathogen.vim"
                 data-name="v2.0"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v2.0">v2.0</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/tpope/vim-pathogen/tree/v1.3/autoload/pathogen.vim"
                 data-name="v1.3"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v1.3">v1.3</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/tpope/vim-pathogen/tree/v1.2/autoload/pathogen.vim"
                 data-name="v1.2"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v1.2">v1.2</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/tpope/vim-pathogen/tree/v1.1/autoload/pathogen.vim"
                 data-name="v1.1"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v1.1">v1.1</a>
            </div> <!-- /.select-menu-item -->
        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

    </div> <!-- /.select-menu-modal -->
  </div> <!-- /.select-menu-modal-holder -->
</div> <!-- /.select-menu -->

  <div class="button-group right">
    <a href="/tpope/vim-pathogen/find/master"
          class="js-show-file-finder minibutton empty-icon tooltipped tooltipped-s"
          data-pjax
          data-hotkey="t"
          aria-label="Quickly jump between files">
      <span class="octicon octicon-list-unordered"></span>
    </a>
    <button class="js-zeroclipboard minibutton zeroclipboard-button"
          data-clipboard-text="autoload/pathogen.vim"
          aria-label="Copy to clipboard"
          data-copied-hint="Copied!">
      <span class="octicon octicon-clippy"></span>
    </button>
  </div>

  <div class="breadcrumb">
    <span class='repo-root js-repo-root'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/tpope/vim-pathogen" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">vim-pathogen</span></a></span></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/tpope/vim-pathogen/tree/master/autoload" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">autoload</span></a></span><span class="separator"> / </span><strong class="final-path">pathogen.vim</strong>
  </div>
</div>


  <div class="commit file-history-tease">
      <img alt="Tim Pope" class="main-avatar js-avatar" data-user="378" height="24" src="https://avatars3.githubusercontent.com/u/378?s=140" width="24" />
      <span class="author"><a href="/tpope" rel="author">tpope</a></span>
      <time datetime="2014-04-01T23:42:58-04:00" is="relative-time">April 01, 2014</time>
      <div class="commit-title">
          <a href="/tpope/vim-pathogen/commit/bff90d72a1647cab496284e82cc533216f8f3b0c" class="message" data-pjax="true" title="Work around weird lockup on ancient Vim

Closes #118.">Work around weird lockup on ancient Vim</a>
      </div>

    <div class="participation">
      <p class="quickstat"><a href="#blob_contributors_box" rel="facebox"><strong>10</strong>  contributors</a></p>
          <a class="avatar tooltipped tooltipped-s" aria-label="tpope" href="/tpope/vim-pathogen/commits/master/autoload/pathogen.vim?author=tpope"><img alt="Tim Pope" class=" js-avatar" data-user="378" height="20" src="https://avatars3.githubusercontent.com/u/378?s=140" width="20" /></a>
    <a class="avatar tooltipped tooltipped-s" aria-label="lparry" href="/tpope/vim-pathogen/commits/master/autoload/pathogen.vim?author=lparry"><img alt="Lucas Parry" class=" js-avatar" data-user="126524" height="20" src="https://avatars2.githubusercontent.com/u/126524?s=140" width="20" /></a>
    <a class="avatar tooltipped tooltipped-s" aria-label="powerman" href="/tpope/vim-pathogen/commits/master/autoload/pathogen.vim?author=powerman"><img alt="Alex Efros" class=" js-avatar" data-user="1354301" height="20" src="https://avatars2.githubusercontent.com/u/1354301?s=140" width="20" /></a>
    <a class="avatar tooltipped tooltipped-s" aria-label="mattn" href="/tpope/vim-pathogen/commits/master/autoload/pathogen.vim?author=mattn"><img alt="mattn" class=" js-avatar" data-user="10111" height="20" src="https://avatars0.githubusercontent.com/u/10111?s=140" width="20" /></a>
    <a class="avatar tooltipped tooltipped-s" aria-label="maksimr" href="/tpope/vim-pathogen/commits/master/autoload/pathogen.vim?author=maksimr"><img alt="Maksim Ryzhikov" class=" js-avatar" data-user="616193" height="20" src="https://avatars0.githubusercontent.com/u/616193?s=140" width="20" /></a>
    <a class="avatar tooltipped tooltipped-s" aria-label="leoluz" href="/tpope/vim-pathogen/commits/master/autoload/pathogen.vim?author=leoluz"><img alt="Leonardo Luz" class=" js-avatar" data-user="44989" height="20" src="https://avatars0.githubusercontent.com/u/44989?s=140" width="20" /></a>
    <a class="avatar tooltipped tooltipped-s" aria-label="deadlyicon" href="/tpope/vim-pathogen/commits/master/autoload/pathogen.vim?author=deadlyicon"><img alt="Jared Grippe" class=" js-avatar" data-user="8385" height="20" src="https://avatars2.githubusercontent.com/u/8385?s=140" width="20" /></a>
    <a class="avatar tooltipped tooltipped-s" aria-label="graywh" href="/tpope/vim-pathogen/commits/master/autoload/pathogen.vim?author=graywh"><img alt="Will Gray" class=" js-avatar" data-user="6110" height="20" src="https://avatars3.githubusercontent.com/u/6110?s=140" width="20" /></a>
    <a class="avatar tooltipped tooltipped-s" aria-label="sofaking" href="/tpope/vim-pathogen/commits/master/autoload/pathogen.vim?author=sofaking"><img alt="Anton Petrov" class=" js-avatar" data-user="690515" height="20" src="https://avatars1.githubusercontent.com/u/690515?s=140" width="20" /></a>
    <a class="avatar tooltipped tooltipped-s" aria-label="sejaeger" href="/tpope/vim-pathogen/commits/master/autoload/pathogen.vim?author=sejaeger"><img alt="sejaeger" class=" js-avatar" data-user="440670" height="20" src="https://avatars0.githubusercontent.com/u/440670?s=140" width="20" /></a>


    </div>
    <div id="blob_contributors_box" style="display:none">
      <h2 class="facebox-header">Users who have contributed to this file</h2>
      <ul class="facebox-user-list">
          <li class="facebox-user-list-item">
            <img alt="Tim Pope" class=" js-avatar" data-user="378" height="24" src="https://avatars3.githubusercontent.com/u/378?s=140" width="24" />
            <a href="/tpope">tpope</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="Lucas Parry" class=" js-avatar" data-user="126524" height="24" src="https://avatars2.githubusercontent.com/u/126524?s=140" width="24" />
            <a href="/lparry">lparry</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="Alex Efros" class=" js-avatar" data-user="1354301" height="24" src="https://avatars2.githubusercontent.com/u/1354301?s=140" width="24" />
            <a href="/powerman">powerman</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="mattn" class=" js-avatar" data-user="10111" height="24" src="https://avatars0.githubusercontent.com/u/10111?s=140" width="24" />
            <a href="/mattn">mattn</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="Maksim Ryzhikov" class=" js-avatar" data-user="616193" height="24" src="https://avatars0.githubusercontent.com/u/616193?s=140" width="24" />
            <a href="/maksimr">maksimr</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="Leonardo Luz" class=" js-avatar" data-user="44989" height="24" src="https://avatars0.githubusercontent.com/u/44989?s=140" width="24" />
            <a href="/leoluz">leoluz</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="Jared Grippe" class=" js-avatar" data-user="8385" height="24" src="https://avatars2.githubusercontent.com/u/8385?s=140" width="24" />
            <a href="/deadlyicon">deadlyicon</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="Will Gray" class=" js-avatar" data-user="6110" height="24" src="https://avatars3.githubusercontent.com/u/6110?s=140" width="24" />
            <a href="/graywh">graywh</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="Anton Petrov" class=" js-avatar" data-user="690515" height="24" src="https://avatars1.githubusercontent.com/u/690515?s=140" width="24" />
            <a href="/sofaking">sofaking</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="sejaeger" class=" js-avatar" data-user="440670" height="24" src="https://avatars0.githubusercontent.com/u/440670?s=140" width="24" />
            <a href="/sejaeger">sejaeger</a>
          </li>
      </ul>
    </div>
  </div>

<div class="file-box">
  <div class="file">
    <div class="meta clearfix">
      <div class="info file-name">
        <span class="icon"><b class="octicon octicon-file-text"></b></span>
        <span class="mode" title="File Mode">file</span>
        <span class="meta-divider"></span>
          <span>344 lines (309 sloc)</span>
          <span class="meta-divider"></span>
        <span>12.064 kb</span>
      </div>
      <div class="actions">
        <div class="button-group">
              <a class="minibutton disabled tooltipped tooltipped-w" href="#"
                 aria-label="You must be signed in to make or propose changes">Edit</a>
          <a href="/tpope/vim-pathogen/raw/master/autoload/pathogen.vim" class="minibutton " id="raw-url">Raw</a>
            <a href="/tpope/vim-pathogen/blame/master/autoload/pathogen.vim" class="minibutton js-update-url-with-hash">Blame</a>
          <a href="/tpope/vim-pathogen/commits/master/autoload/pathogen.vim" class="minibutton " rel="nofollow">History</a>
        </div><!-- /.button-group -->
          <a class="minibutton danger disabled empty-icon tooltipped tooltipped-w" href="#"
             aria-label="You must be signed in to make or propose changes">
          Delete
        </a>
      </div><!-- /.actions -->
    </div>
      
  <div class="blob-wrapper data type-viml js-blob-data">
       <table class="file-code file-diff tab-size-8">
         <tr class="file-code-line">
           <td class="blob-line-nums">
             <span id="L1" rel="#L1">1</span>
<span id="L2" rel="#L2">2</span>
<span id="L3" rel="#L3">3</span>
<span id="L4" rel="#L4">4</span>
<span id="L5" rel="#L5">5</span>
<span id="L6" rel="#L6">6</span>
<span id="L7" rel="#L7">7</span>
<span id="L8" rel="#L8">8</span>
<span id="L9" rel="#L9">9</span>
<span id="L10" rel="#L10">10</span>
<span id="L11" rel="#L11">11</span>
<span id="L12" rel="#L12">12</span>
<span id="L13" rel="#L13">13</span>
<span id="L14" rel="#L14">14</span>
<span id="L15" rel="#L15">15</span>
<span id="L16" rel="#L16">16</span>
<span id="L17" rel="#L17">17</span>
<span id="L18" rel="#L18">18</span>
<span id="L19" rel="#L19">19</span>
<span id="L20" rel="#L20">20</span>
<span id="L21" rel="#L21">21</span>
<span id="L22" rel="#L22">22</span>
<span id="L23" rel="#L23">23</span>
<span id="L24" rel="#L24">24</span>
<span id="L25" rel="#L25">25</span>
<span id="L26" rel="#L26">26</span>
<span id="L27" rel="#L27">27</span>
<span id="L28" rel="#L28">28</span>
<span id="L29" rel="#L29">29</span>
<span id="L30" rel="#L30">30</span>
<span id="L31" rel="#L31">31</span>
<span id="L32" rel="#L32">32</span>
<span id="L33" rel="#L33">33</span>
<span id="L34" rel="#L34">34</span>
<span id="L35" rel="#L35">35</span>
<span id="L36" rel="#L36">36</span>
<span id="L37" rel="#L37">37</span>
<span id="L38" rel="#L38">38</span>
<span id="L39" rel="#L39">39</span>
<span id="L40" rel="#L40">40</span>
<span id="L41" rel="#L41">41</span>
<span id="L42" rel="#L42">42</span>
<span id="L43" rel="#L43">43</span>
<span id="L44" rel="#L44">44</span>
<span id="L45" rel="#L45">45</span>
<span id="L46" rel="#L46">46</span>
<span id="L47" rel="#L47">47</span>
<span id="L48" rel="#L48">48</span>
<span id="L49" rel="#L49">49</span>
<span id="L50" rel="#L50">50</span>
<span id="L51" rel="#L51">51</span>
<span id="L52" rel="#L52">52</span>
<span id="L53" rel="#L53">53</span>
<span id="L54" rel="#L54">54</span>
<span id="L55" rel="#L55">55</span>
<span id="L56" rel="#L56">56</span>
<span id="L57" rel="#L57">57</span>
<span id="L58" rel="#L58">58</span>
<span id="L59" rel="#L59">59</span>
<span id="L60" rel="#L60">60</span>
<span id="L61" rel="#L61">61</span>
<span id="L62" rel="#L62">62</span>
<span id="L63" rel="#L63">63</span>
<span id="L64" rel="#L64">64</span>
<span id="L65" rel="#L65">65</span>
<span id="L66" rel="#L66">66</span>
<span id="L67" rel="#L67">67</span>
<span id="L68" rel="#L68">68</span>
<span id="L69" rel="#L69">69</span>
<span id="L70" rel="#L70">70</span>
<span id="L71" rel="#L71">71</span>
<span id="L72" rel="#L72">72</span>
<span id="L73" rel="#L73">73</span>
<span id="L74" rel="#L74">74</span>
<span id="L75" rel="#L75">75</span>
<span id="L76" rel="#L76">76</span>
<span id="L77" rel="#L77">77</span>
<span id="L78" rel="#L78">78</span>
<span id="L79" rel="#L79">79</span>
<span id="L80" rel="#L80">80</span>
<span id="L81" rel="#L81">81</span>
<span id="L82" rel="#L82">82</span>
<span id="L83" rel="#L83">83</span>
<span id="L84" rel="#L84">84</span>
<span id="L85" rel="#L85">85</span>
<span id="L86" rel="#L86">86</span>
<span id="L87" rel="#L87">87</span>
<span id="L88" rel="#L88">88</span>
<span id="L89" rel="#L89">89</span>
<span id="L90" rel="#L90">90</span>
<span id="L91" rel="#L91">91</span>
<span id="L92" rel="#L92">92</span>
<span id="L93" rel="#L93">93</span>
<span id="L94" rel="#L94">94</span>
<span id="L95" rel="#L95">95</span>
<span id="L96" rel="#L96">96</span>
<span id="L97" rel="#L97">97</span>
<span id="L98" rel="#L98">98</span>
<span id="L99" rel="#L99">99</span>
<span id="L100" rel="#L100">100</span>
<span id="L101" rel="#L101">101</span>
<span id="L102" rel="#L102">102</span>
<span id="L103" rel="#L103">103</span>
<span id="L104" rel="#L104">104</span>
<span id="L105" rel="#L105">105</span>
<span id="L106" rel="#L106">106</span>
<span id="L107" rel="#L107">107</span>
<span id="L108" rel="#L108">108</span>
<span id="L109" rel="#L109">109</span>
<span id="L110" rel="#L110">110</span>
<span id="L111" rel="#L111">111</span>
<span id="L112" rel="#L112">112</span>
<span id="L113" rel="#L113">113</span>
<span id="L114" rel="#L114">114</span>
<span id="L115" rel="#L115">115</span>
<span id="L116" rel="#L116">116</span>
<span id="L117" rel="#L117">117</span>
<span id="L118" rel="#L118">118</span>
<span id="L119" rel="#L119">119</span>
<span id="L120" rel="#L120">120</span>
<span id="L121" rel="#L121">121</span>
<span id="L122" rel="#L122">122</span>
<span id="L123" rel="#L123">123</span>
<span id="L124" rel="#L124">124</span>
<span id="L125" rel="#L125">125</span>
<span id="L126" rel="#L126">126</span>
<span id="L127" rel="#L127">127</span>
<span id="L128" rel="#L128">128</span>
<span id="L129" rel="#L129">129</span>
<span id="L130" rel="#L130">130</span>
<span id="L131" rel="#L131">131</span>
<span id="L132" rel="#L132">132</span>
<span id="L133" rel="#L133">133</span>
<span id="L134" rel="#L134">134</span>
<span id="L135" rel="#L135">135</span>
<span id="L136" rel="#L136">136</span>
<span id="L137" rel="#L137">137</span>
<span id="L138" rel="#L138">138</span>
<span id="L139" rel="#L139">139</span>
<span id="L140" rel="#L140">140</span>
<span id="L141" rel="#L141">141</span>
<span id="L142" rel="#L142">142</span>
<span id="L143" rel="#L143">143</span>
<span id="L144" rel="#L144">144</span>
<span id="L145" rel="#L145">145</span>
<span id="L146" rel="#L146">146</span>
<span id="L147" rel="#L147">147</span>
<span id="L148" rel="#L148">148</span>
<span id="L149" rel="#L149">149</span>
<span id="L150" rel="#L150">150</span>
<span id="L151" rel="#L151">151</span>
<span id="L152" rel="#L152">152</span>
<span id="L153" rel="#L153">153</span>
<span id="L154" rel="#L154">154</span>
<span id="L155" rel="#L155">155</span>
<span id="L156" rel="#L156">156</span>
<span id="L157" rel="#L157">157</span>
<span id="L158" rel="#L158">158</span>
<span id="L159" rel="#L159">159</span>
<span id="L160" rel="#L160">160</span>
<span id="L161" rel="#L161">161</span>
<span id="L162" rel="#L162">162</span>
<span id="L163" rel="#L163">163</span>
<span id="L164" rel="#L164">164</span>
<span id="L165" rel="#L165">165</span>
<span id="L166" rel="#L166">166</span>
<span id="L167" rel="#L167">167</span>
<span id="L168" rel="#L168">168</span>
<span id="L169" rel="#L169">169</span>
<span id="L170" rel="#L170">170</span>
<span id="L171" rel="#L171">171</span>
<span id="L172" rel="#L172">172</span>
<span id="L173" rel="#L173">173</span>
<span id="L174" rel="#L174">174</span>
<span id="L175" rel="#L175">175</span>
<span id="L176" rel="#L176">176</span>
<span id="L177" rel="#L177">177</span>
<span id="L178" rel="#L178">178</span>
<span id="L179" rel="#L179">179</span>
<span id="L180" rel="#L180">180</span>
<span id="L181" rel="#L181">181</span>
<span id="L182" rel="#L182">182</span>
<span id="L183" rel="#L183">183</span>
<span id="L184" rel="#L184">184</span>
<span id="L185" rel="#L185">185</span>
<span id="L186" rel="#L186">186</span>
<span id="L187" rel="#L187">187</span>
<span id="L188" rel="#L188">188</span>
<span id="L189" rel="#L189">189</span>
<span id="L190" rel="#L190">190</span>
<span id="L191" rel="#L191">191</span>
<span id="L192" rel="#L192">192</span>
<span id="L193" rel="#L193">193</span>
<span id="L194" rel="#L194">194</span>
<span id="L195" rel="#L195">195</span>
<span id="L196" rel="#L196">196</span>
<span id="L197" rel="#L197">197</span>
<span id="L198" rel="#L198">198</span>
<span id="L199" rel="#L199">199</span>
<span id="L200" rel="#L200">200</span>
<span id="L201" rel="#L201">201</span>
<span id="L202" rel="#L202">202</span>
<span id="L203" rel="#L203">203</span>
<span id="L204" rel="#L204">204</span>
<span id="L205" rel="#L205">205</span>
<span id="L206" rel="#L206">206</span>
<span id="L207" rel="#L207">207</span>
<span id="L208" rel="#L208">208</span>
<span id="L209" rel="#L209">209</span>
<span id="L210" rel="#L210">210</span>
<span id="L211" rel="#L211">211</span>
<span id="L212" rel="#L212">212</span>
<span id="L213" rel="#L213">213</span>
<span id="L214" rel="#L214">214</span>
<span id="L215" rel="#L215">215</span>
<span id="L216" rel="#L216">216</span>
<span id="L217" rel="#L217">217</span>
<span id="L218" rel="#L218">218</span>
<span id="L219" rel="#L219">219</span>
<span id="L220" rel="#L220">220</span>
<span id="L221" rel="#L221">221</span>
<span id="L222" rel="#L222">222</span>
<span id="L223" rel="#L223">223</span>
<span id="L224" rel="#L224">224</span>
<span id="L225" rel="#L225">225</span>
<span id="L226" rel="#L226">226</span>
<span id="L227" rel="#L227">227</span>
<span id="L228" rel="#L228">228</span>
<span id="L229" rel="#L229">229</span>
<span id="L230" rel="#L230">230</span>
<span id="L231" rel="#L231">231</span>
<span id="L232" rel="#L232">232</span>
<span id="L233" rel="#L233">233</span>
<span id="L234" rel="#L234">234</span>
<span id="L235" rel="#L235">235</span>
<span id="L236" rel="#L236">236</span>
<span id="L237" rel="#L237">237</span>
<span id="L238" rel="#L238">238</span>
<span id="L239" rel="#L239">239</span>
<span id="L240" rel="#L240">240</span>
<span id="L241" rel="#L241">241</span>
<span id="L242" rel="#L242">242</span>
<span id="L243" rel="#L243">243</span>
<span id="L244" rel="#L244">244</span>
<span id="L245" rel="#L245">245</span>
<span id="L246" rel="#L246">246</span>
<span id="L247" rel="#L247">247</span>
<span id="L248" rel="#L248">248</span>
<span id="L249" rel="#L249">249</span>
<span id="L250" rel="#L250">250</span>
<span id="L251" rel="#L251">251</span>
<span id="L252" rel="#L252">252</span>
<span id="L253" rel="#L253">253</span>
<span id="L254" rel="#L254">254</span>
<span id="L255" rel="#L255">255</span>
<span id="L256" rel="#L256">256</span>
<span id="L257" rel="#L257">257</span>
<span id="L258" rel="#L258">258</span>
<span id="L259" rel="#L259">259</span>
<span id="L260" rel="#L260">260</span>
<span id="L261" rel="#L261">261</span>
<span id="L262" rel="#L262">262</span>
<span id="L263" rel="#L263">263</span>
<span id="L264" rel="#L264">264</span>
<span id="L265" rel="#L265">265</span>
<span id="L266" rel="#L266">266</span>
<span id="L267" rel="#L267">267</span>
<span id="L268" rel="#L268">268</span>
<span id="L269" rel="#L269">269</span>
<span id="L270" rel="#L270">270</span>
<span id="L271" rel="#L271">271</span>
<span id="L272" rel="#L272">272</span>
<span id="L273" rel="#L273">273</span>
<span id="L274" rel="#L274">274</span>
<span id="L275" rel="#L275">275</span>
<span id="L276" rel="#L276">276</span>
<span id="L277" rel="#L277">277</span>
<span id="L278" rel="#L278">278</span>
<span id="L279" rel="#L279">279</span>
<span id="L280" rel="#L280">280</span>
<span id="L281" rel="#L281">281</span>
<span id="L282" rel="#L282">282</span>
<span id="L283" rel="#L283">283</span>
<span id="L284" rel="#L284">284</span>
<span id="L285" rel="#L285">285</span>
<span id="L286" rel="#L286">286</span>
<span id="L287" rel="#L287">287</span>
<span id="L288" rel="#L288">288</span>
<span id="L289" rel="#L289">289</span>
<span id="L290" rel="#L290">290</span>
<span id="L291" rel="#L291">291</span>
<span id="L292" rel="#L292">292</span>
<span id="L293" rel="#L293">293</span>
<span id="L294" rel="#L294">294</span>
<span id="L295" rel="#L295">295</span>
<span id="L296" rel="#L296">296</span>
<span id="L297" rel="#L297">297</span>
<span id="L298" rel="#L298">298</span>
<span id="L299" rel="#L299">299</span>
<span id="L300" rel="#L300">300</span>
<span id="L301" rel="#L301">301</span>
<span id="L302" rel="#L302">302</span>
<span id="L303" rel="#L303">303</span>
<span id="L304" rel="#L304">304</span>
<span id="L305" rel="#L305">305</span>
<span id="L306" rel="#L306">306</span>
<span id="L307" rel="#L307">307</span>
<span id="L308" rel="#L308">308</span>
<span id="L309" rel="#L309">309</span>
<span id="L310" rel="#L310">310</span>
<span id="L311" rel="#L311">311</span>
<span id="L312" rel="#L312">312</span>
<span id="L313" rel="#L313">313</span>
<span id="L314" rel="#L314">314</span>
<span id="L315" rel="#L315">315</span>
<span id="L316" rel="#L316">316</span>
<span id="L317" rel="#L317">317</span>
<span id="L318" rel="#L318">318</span>
<span id="L319" rel="#L319">319</span>
<span id="L320" rel="#L320">320</span>
<span id="L321" rel="#L321">321</span>
<span id="L322" rel="#L322">322</span>
<span id="L323" rel="#L323">323</span>
<span id="L324" rel="#L324">324</span>
<span id="L325" rel="#L325">325</span>
<span id="L326" rel="#L326">326</span>
<span id="L327" rel="#L327">327</span>
<span id="L328" rel="#L328">328</span>
<span id="L329" rel="#L329">329</span>
<span id="L330" rel="#L330">330</span>
<span id="L331" rel="#L331">331</span>
<span id="L332" rel="#L332">332</span>
<span id="L333" rel="#L333">333</span>
<span id="L334" rel="#L334">334</span>
<span id="L335" rel="#L335">335</span>
<span id="L336" rel="#L336">336</span>
<span id="L337" rel="#L337">337</span>
<span id="L338" rel="#L338">338</span>
<span id="L339" rel="#L339">339</span>
<span id="L340" rel="#L340">340</span>
<span id="L341" rel="#L341">341</span>
<span id="L342" rel="#L342">342</span>
<span id="L343" rel="#L343">343</span>
<span id="L344" rel="#L344">344</span>

           </td>
           <td class="blob-line-code"><div class="code-body highlight"><pre><div class='line' id='LC1'><span class="c">&quot; pathogen.vim - path option manipulation</span></div><div class='line' id='LC2'><span class="c">&quot; Maintainer:   Tim Pope &lt;http://tpo.pe/&gt;</span></div><div class='line' id='LC3'><span class="c">&quot; Version:      2.3</span></div><div class='line' id='LC4'><br/></div><div class='line' id='LC5'><span class="c">&quot; Install in ~/.vim/autoload (or ~\vimfiles\autoload).</span></div><div class='line' id='LC6'><span class="c">&quot;</span></div><div class='line' id='LC7'><span class="c">&quot; For management of individually installed plugins in ~/.vim/bundle (or</span></div><div class='line' id='LC8'><span class="c">&quot; ~\vimfiles\bundle), adding `execute pathogen#infect()` to the top of your</span></div><div class='line' id='LC9'><span class="c">&quot; .vimrc is the only other setup necessary.</span></div><div class='line' id='LC10'><span class="c">&quot;</span></div><div class='line' id='LC11'><span class="c">&quot; The API is documented inline below.</span></div><div class='line' id='LC12'><br/></div><div class='line' id='LC13'><span class="k">if</span> exists<span class="p">(</span><span class="s2">&quot;g:loaded_pathogen&quot;</span><span class="p">)</span> <span class="p">||</span> &amp;<span class="k">cp</span></div><div class='line' id='LC14'>&nbsp;&nbsp;<span class="k">finish</span></div><div class='line' id='LC15'><span class="k">endif</span></div><div class='line' id='LC16'><span class="k">let</span> <span class="k">g</span>:loaded_pathogen <span class="p">=</span> <span class="m">1</span></div><div class='line' id='LC17'><br/></div><div class='line' id='LC18'><span class="c">&quot; Point of entry for basic default usage.  Give a relative path to invoke</span></div><div class='line' id='LC19'><span class="c">&quot; pathogen#interpose() (defaults to &quot;bundle/{}&quot;), or an absolute path to invoke</span></div><div class='line' id='LC20'><span class="c">&quot; pathogen#surround().  Curly braces are expanded with pathogen#expand():</span></div><div class='line' id='LC21'><span class="c">&quot; &quot;bundle/{}&quot; finds all subdirectories inside &quot;bundle&quot; inside all directories</span></div><div class='line' id='LC22'><span class="c">&quot; in the runtime path.</span></div><div class='line' id='LC23'><span class="k">function</span><span class="p">!</span> pathogen#infect<span class="p">(</span>...<span class="p">)</span> abort</div><div class='line' id='LC24'>&nbsp;&nbsp;<span class="k">for</span> <span class="nb">path</span> <span class="k">in</span> <span class="k">a</span>:<span class="m">0</span> ? filter<span class="p">(</span>reverse<span class="p">(</span>copy<span class="p">(</span><span class="k">a</span>:<span class="m">000</span><span class="p">)),</span> <span class="s1">&#39;type(v:val) == type(&quot;&quot;)&#39;</span><span class="p">)</span> : [<span class="s1">&#39;bundle/{}&#39;</span>]</div><div class='line' id='LC25'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="nb">path</span> <span class="p">=~</span># <span class="s1">&#39;^\%({\=[$~\\/]\|{\=\w:[\\/]\).*[{}*]&#39;</span></div><div class='line' id='LC26'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">call</span> pathogen#surround<span class="p">(</span><span class="nb">path</span><span class="p">)</span></div><div class='line' id='LC27'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">elseif</span> <span class="nb">path</span> <span class="p">=~</span># <span class="s1">&#39;^\%([$~\\/]\|\w:[\\/]\)&#39;</span></div><div class='line' id='LC28'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">call</span> <span class="k">s</span>:<span class="nb">warn</span><span class="p">(</span><span class="s1">&#39;Change pathogen#infect(&#39;</span>.string<span class="p">(</span><span class="nb">path</span><span class="p">)</span>.<span class="s1">&#39;) to pathogen#infect(&#39;</span>.string<span class="p">(</span><span class="nb">path</span>.<span class="s1">&#39;/{}&#39;</span><span class="p">)</span>.<span class="s1">&#39;)&#39;</span><span class="p">)</span></div><div class='line' id='LC29'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">call</span> pathogen#surround<span class="p">(</span><span class="nb">path</span> . <span class="s1">&#39;/{}&#39;</span><span class="p">)</span></div><div class='line' id='LC30'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">elseif</span> <span class="nb">path</span> <span class="p">=~</span># <span class="s1">&#39;[{}*]&#39;</span></div><div class='line' id='LC31'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">call</span> pathogen#interpose<span class="p">(</span><span class="nb">path</span><span class="p">)</span></div><div class='line' id='LC32'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">else</span></div><div class='line' id='LC33'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">call</span> <span class="k">s</span>:<span class="nb">warn</span><span class="p">(</span><span class="s1">&#39;Change pathogen#infect(&#39;</span>.string<span class="p">(</span><span class="nb">path</span><span class="p">)</span>.<span class="s1">&#39;) to pathogen#infect(&#39;</span>.string<span class="p">(</span><span class="nb">path</span>.<span class="s1">&#39;/{}&#39;</span><span class="p">)</span>.<span class="s1">&#39;)&#39;</span><span class="p">)</span></div><div class='line' id='LC34'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">call</span> pathogen#interpose<span class="p">(</span><span class="nb">path</span> . <span class="s1">&#39;/{}&#39;</span><span class="p">)</span></div><div class='line' id='LC35'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">endif</span></div><div class='line' id='LC36'>&nbsp;&nbsp;<span class="k">endfor</span></div><div class='line' id='LC37'>&nbsp;&nbsp;<span class="k">call</span> pathogen#cycle_filetype<span class="p">()</span></div><div class='line' id='LC38'>&nbsp;&nbsp;<span class="k">if</span> pathogen#is_disabled<span class="p">(</span>$MYVIMRC<span class="p">)</span></div><div class='line' id='LC39'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="s1">&#39;finish&#39;</span></div><div class='line' id='LC40'>&nbsp;&nbsp;<span class="k">endif</span></div><div class='line' id='LC41'>&nbsp;&nbsp;<span class="k">return</span> <span class="s1">&#39;&#39;</span></div><div class='line' id='LC42'><span class="k">endfunction</span></div><div class='line' id='LC43'><br/></div><div class='line' id='LC44'><span class="c">&quot; Split a path into a list.</span></div><div class='line' id='LC45'><span class="k">function</span><span class="p">!</span> pathogen#split<span class="p">(</span><span class="nb">path</span><span class="p">)</span> abort</div><div class='line' id='LC46'>&nbsp;&nbsp;<span class="k">if</span> type<span class="p">(</span><span class="k">a</span>:<span class="nb">path</span><span class="p">)</span> <span class="p">==</span> type<span class="p">(</span>[]<span class="p">)</span> <span class="p">|</span> <span class="k">return</span> <span class="k">a</span>:<span class="nb">path</span> <span class="p">|</span> <span class="k">endif</span></div><div class='line' id='LC47'>&nbsp;&nbsp;<span class="k">if</span> empty<span class="p">(</span><span class="k">a</span>:<span class="nb">path</span><span class="p">)</span> <span class="p">|</span> <span class="k">return</span> [] <span class="p">|</span> <span class="k">endif</span></div><div class='line' id='LC48'>&nbsp;&nbsp;<span class="k">let</span> split <span class="p">=</span> split<span class="p">(</span><span class="k">a</span>:<span class="nb">path</span><span class="p">,</span><span class="s1">&#39;\\\@&lt;!\%(\\\\\)*\zs,&#39;</span><span class="p">)</span></div><div class='line' id='LC49'>&nbsp;&nbsp;<span class="k">return</span> map<span class="p">(</span>split<span class="p">,</span><span class="s1">&#39;substitute(v:val,&#39;&#39;\\\([\\,]\)&#39;&#39;,&#39;&#39;\1&#39;&#39;,&quot;g&quot;)&#39;</span><span class="p">)</span></div><div class='line' id='LC50'><span class="k">endfunction</span></div><div class='line' id='LC51'><br/></div><div class='line' id='LC52'><span class="c">&quot; Convert a list to a path.</span></div><div class='line' id='LC53'><span class="k">function</span><span class="p">!</span> pathogen#<span class="k">join</span><span class="p">(</span>...<span class="p">)</span> abort</div><div class='line' id='LC54'>&nbsp;&nbsp;<span class="k">if</span> type<span class="p">(</span><span class="k">a</span>:<span class="m">1</span><span class="p">)</span> <span class="p">==</span> type<span class="p">(</span><span class="m">1</span><span class="p">)</span> &amp;&amp; <span class="k">a</span>:<span class="m">1</span></div><div class='line' id='LC55'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">let</span> <span class="k">i</span> <span class="p">=</span> <span class="m">1</span></div><div class='line' id='LC56'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">let</span> space <span class="p">=</span> <span class="s1">&#39; &#39;</span></div><div class='line' id='LC57'>&nbsp;&nbsp;<span class="k">else</span></div><div class='line' id='LC58'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">let</span> <span class="k">i</span> <span class="p">=</span> <span class="m">0</span></div><div class='line' id='LC59'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">let</span> space <span class="p">=</span> <span class="s1">&#39;&#39;</span></div><div class='line' id='LC60'>&nbsp;&nbsp;<span class="k">endif</span></div><div class='line' id='LC61'>&nbsp;&nbsp;<span class="k">let</span> <span class="nb">path</span> <span class="p">=</span> <span class="s2">&quot;&quot;</span></div><div class='line' id='LC62'>&nbsp;&nbsp;<span class="k">while</span> <span class="k">i</span> <span class="p">&lt;</span> <span class="k">a</span>:<span class="m">0</span></div><div class='line' id='LC63'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> type<span class="p">(</span><span class="k">a</span>:<span class="m">000</span>[<span class="k">i</span>]<span class="p">)</span> <span class="p">==</span> type<span class="p">(</span>[]<span class="p">)</span></div><div class='line' id='LC64'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">let</span> <span class="nb">list</span> <span class="p">=</span> <span class="k">a</span>:<span class="m">000</span>[<span class="k">i</span>]</div><div class='line' id='LC65'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">let</span> <span class="k">j</span> <span class="p">=</span> <span class="m">0</span></div><div class='line' id='LC66'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">while</span> <span class="k">j</span> <span class="p">&lt;</span> len<span class="p">(</span><span class="nb">list</span><span class="p">)</span></div><div class='line' id='LC67'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">let</span> escaped <span class="p">=</span> substitute<span class="p">(</span><span class="nb">list</span>[<span class="k">j</span>]<span class="p">,</span><span class="s1">&#39;[,&#39;</span>.space.<span class="s1">&#39;]\|\\[\,&#39;</span>.space.<span class="s1">&#39;]\@=&#39;</span><span class="p">,</span><span class="s1">&#39;\\&amp;&#39;</span><span class="p">,</span><span class="s1">&#39;g&#39;</span><span class="p">)</span></div><div class='line' id='LC68'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">let</span> <span class="nb">path</span> .<span class="p">=</span> <span class="s1">&#39;,&#39;</span> . escaped</div><div class='line' id='LC69'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">let</span> <span class="k">j</span> <span class="p">+=</span> <span class="m">1</span></div><div class='line' id='LC70'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">endwhile</span></div><div class='line' id='LC71'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">else</span></div><div class='line' id='LC72'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">let</span> <span class="nb">path</span> .<span class="p">=</span> <span class="s2">&quot;,&quot;</span> . <span class="k">a</span>:<span class="m">000</span>[<span class="k">i</span>]</div><div class='line' id='LC73'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">endif</span></div><div class='line' id='LC74'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">let</span> <span class="k">i</span> <span class="p">+=</span> <span class="m">1</span></div><div class='line' id='LC75'>&nbsp;&nbsp;<span class="k">endwhile</span></div><div class='line' id='LC76'>&nbsp;&nbsp;<span class="k">return</span> substitute<span class="p">(</span><span class="nb">path</span><span class="p">,</span><span class="s1">&#39;^,&#39;</span><span class="p">,</span><span class="s1">&#39;&#39;</span><span class="p">,</span><span class="s1">&#39;&#39;</span><span class="p">)</span></div><div class='line' id='LC77'><span class="k">endfunction</span></div><div class='line' id='LC78'><br/></div><div class='line' id='LC79'><span class="c">&quot; Convert a list to a path with escaped spaces for &#39;path&#39;, &#39;tag&#39;, etc.</span></div><div class='line' id='LC80'><span class="k">function</span><span class="p">!</span> pathogen#legacyjoin<span class="p">(</span>...<span class="p">)</span> abort</div><div class='line' id='LC81'>&nbsp;&nbsp;<span class="k">return</span> <span class="k">call</span><span class="p">(</span><span class="s1">&#39;pathogen#join&#39;</span><span class="p">,</span>[<span class="m">1</span>] <span class="p">+</span> <span class="k">a</span>:<span class="m">000</span><span class="p">)</span></div><div class='line' id='LC82'><span class="k">endfunction</span></div><div class='line' id='LC83'><br/></div><div class='line' id='LC84'><span class="c">&quot; Turn filetype detection off and back on again if it was already enabled.</span></div><div class='line' id='LC85'><span class="k">function</span><span class="p">!</span> pathogen#cycle_filetype<span class="p">()</span> abort</div><div class='line' id='LC86'>&nbsp;&nbsp;<span class="k">if</span> exists<span class="p">(</span><span class="s1">&#39;g:did_load_filetypes&#39;</span><span class="p">)</span></div><div class='line' id='LC87'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">filetype</span> off</div><div class='line' id='LC88'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">filetype</span> <span class="k">on</span></div><div class='line' id='LC89'>&nbsp;&nbsp;<span class="k">endif</span></div><div class='line' id='LC90'><span class="k">endfunction</span></div><div class='line' id='LC91'><br/></div><div class='line' id='LC92'><span class="c">&quot; Check if a bundle is disabled.  A bundle is considered disabled if its</span></div><div class='line' id='LC93'><span class="c">&quot; basename or full name is included in the list g:pathogen_disabled.</span></div><div class='line' id='LC94'><span class="k">function</span><span class="p">!</span> pathogen#is_disabled<span class="p">(</span><span class="nb">path</span><span class="p">)</span> abort</div><div class='line' id='LC95'>&nbsp;&nbsp;<span class="k">if</span> <span class="k">a</span>:<span class="nb">path</span> <span class="p">=~</span># <span class="s1">&#39;\~$&#39;</span></div><div class='line' id='LC96'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="m">1</span></div><div class='line' id='LC97'>&nbsp;&nbsp;<span class="k">endif</span></div><div class='line' id='LC98'>&nbsp;&nbsp;<span class="k">let</span> sep <span class="p">=</span> pathogen#slash<span class="p">()</span></div><div class='line' id='LC99'>&nbsp;&nbsp;<span class="k">let</span> blacklist <span class="p">=</span> <span class="k">get</span><span class="p">(</span><span class="k">g</span>:<span class="p">,</span> <span class="s1">&#39;pathogen_blacklist&#39;</span><span class="p">,</span> <span class="k">get</span><span class="p">(</span><span class="k">g</span>:<span class="p">,</span> <span class="s1">&#39;pathogen_disabled&#39;</span><span class="p">,</span> []<span class="p">))</span> <span class="p">+</span> pathogen#split<span class="p">(</span>$VIMBLACKLIST<span class="p">)</span></div><div class='line' id='LC100'>&nbsp;&nbsp;<span class="k">return</span> <span class="k">index</span><span class="p">(</span>blacklist<span class="p">,</span> fnamemodify<span class="p">(</span><span class="k">a</span>:<span class="nb">path</span><span class="p">,</span> <span class="s1">&#39;:t&#39;</span><span class="p">))</span> <span class="p">!=</span> <span class="m">-1</span> <span class="p">||</span> <span class="k">index</span><span class="p">(</span>blacklist<span class="p">,</span> <span class="k">a</span>:<span class="nb">path</span><span class="p">)</span> <span class="p">!=</span> <span class="m">-1</span></div><div class='line' id='LC101'><span class="k">endfunction</span> <span class="c">&quot;}}}1</span></div><div class='line' id='LC102'><br/></div><div class='line' id='LC103'><span class="c">&quot; Prepend the given directory to the runtime path and append its corresponding</span></div><div class='line' id='LC104'><span class="c">&quot; after directory.  Curly braces are expanded with pathogen#expand().</span></div><div class='line' id='LC105'><span class="k">function</span><span class="p">!</span> pathogen#surround<span class="p">(</span><span class="nb">path</span><span class="p">)</span> abort</div><div class='line' id='LC106'>&nbsp;&nbsp;<span class="k">let</span> sep <span class="p">=</span> pathogen#slash<span class="p">()</span></div><div class='line' id='LC107'>&nbsp;&nbsp;<span class="k">let</span> <span class="nb">rtp</span> <span class="p">=</span> pathogen#split<span class="p">(</span>&amp;<span class="nb">rtp</span><span class="p">)</span></div><div class='line' id='LC108'>&nbsp;&nbsp;<span class="k">let</span> <span class="nb">path</span> <span class="p">=</span> fnamemodify<span class="p">(</span><span class="k">a</span>:<span class="nb">path</span><span class="p">,</span> <span class="s1">&#39;:p:?[\\/]\=$??&#39;</span><span class="p">)</span></div><div class='line' id='LC109'>&nbsp;&nbsp;<span class="k">let</span> before <span class="p">=</span> filter<span class="p">(</span>pathogen#expand<span class="p">(</span><span class="nb">path</span><span class="p">),</span> <span class="s1">&#39;!pathogen#is_disabled(v:val)&#39;</span><span class="p">)</span></div><div class='line' id='LC110'>&nbsp;&nbsp;<span class="k">let</span> after <span class="p">=</span> filter<span class="p">(</span>reverse<span class="p">(</span>pathogen#expand<span class="p">(</span><span class="nb">path</span>.sep.<span class="s1">&#39;after&#39;</span><span class="p">)),</span> <span class="s1">&#39;!pathogen#is_disabled(v:val[0:-7])&#39;</span><span class="p">)</span></div><div class='line' id='LC111'>&nbsp;&nbsp;<span class="k">call</span> filter<span class="p">(</span><span class="nb">rtp</span><span class="p">,</span> <span class="s1">&#39;index(before + after, v:val) == -1&#39;</span><span class="p">)</span></div><div class='line' id='LC112'>&nbsp;&nbsp;<span class="k">let</span> &amp;<span class="nb">rtp</span> <span class="p">=</span> pathogen#<span class="k">join</span><span class="p">(</span>before<span class="p">,</span> <span class="nb">rtp</span><span class="p">,</span> after<span class="p">)</span></div><div class='line' id='LC113'>&nbsp;&nbsp;<span class="k">return</span> &amp;<span class="nb">rtp</span></div><div class='line' id='LC114'><span class="k">endfunction</span></div><div class='line' id='LC115'><br/></div><div class='line' id='LC116'><span class="c">&quot; For each directory in the runtime path, add a second entry with the given</span></div><div class='line' id='LC117'><span class="c">&quot; argument appended.  Curly braces are expanded with pathogen#expand().</span></div><div class='line' id='LC118'><span class="k">function</span><span class="p">!</span> pathogen#interpose<span class="p">(</span>name<span class="p">)</span> abort</div><div class='line' id='LC119'>&nbsp;&nbsp;<span class="k">let</span> sep <span class="p">=</span> pathogen#slash<span class="p">()</span></div><div class='line' id='LC120'>&nbsp;&nbsp;<span class="k">let</span> name <span class="p">=</span> <span class="k">a</span>:name</div><div class='line' id='LC121'>&nbsp;&nbsp;<span class="k">if</span> has_key<span class="p">(</span><span class="k">s</span>:done_bundles<span class="p">,</span> name<span class="p">)</span></div><div class='line' id='LC122'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="s2">&quot;&quot;</span></div><div class='line' id='LC123'>&nbsp;&nbsp;<span class="k">endif</span></div><div class='line' id='LC124'>&nbsp;&nbsp;<span class="k">let</span> <span class="k">s</span>:done_bundles[name] <span class="p">=</span> <span class="m">1</span></div><div class='line' id='LC125'>&nbsp;&nbsp;<span class="k">let</span> <span class="nb">list</span> <span class="p">=</span> []</div><div class='line' id='LC126'>&nbsp;&nbsp;<span class="k">for</span> <span class="nb">dir</span> <span class="k">in</span> pathogen#split<span class="p">(</span>&amp;<span class="nb">rtp</span><span class="p">)</span></div><div class='line' id='LC127'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="nb">dir</span> <span class="p">=~</span># <span class="s1">&#39;\&lt;after$&#39;</span></div><div class='line' id='LC128'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">let</span> <span class="nb">list</span> <span class="p">+=</span> reverse<span class="p">(</span>filter<span class="p">(</span>pathogen#expand<span class="p">(</span><span class="nb">dir</span>[<span class="m">0</span>:<span class="m">-6</span>].name.sep.<span class="s1">&#39;after&#39;</span><span class="p">),</span> <span class="s1">&#39;!pathogen#is_disabled(v:val[0:-7])&#39;</span><span class="p">))</span> <span class="p">+</span> [<span class="nb">dir</span>]</div><div class='line' id='LC129'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">else</span></div><div class='line' id='LC130'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">let</span> <span class="nb">list</span> <span class="p">+=</span> [<span class="nb">dir</span>] <span class="p">+</span> filter<span class="p">(</span>pathogen#expand<span class="p">(</span><span class="nb">dir</span>.sep.name<span class="p">),</span> <span class="s1">&#39;!pathogen#is_disabled(v:val)&#39;</span><span class="p">)</span></div><div class='line' id='LC131'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">endif</span></div><div class='line' id='LC132'>&nbsp;&nbsp;<span class="k">endfor</span></div><div class='line' id='LC133'>&nbsp;&nbsp;<span class="k">let</span> &amp;<span class="nb">rtp</span> <span class="p">=</span> pathogen#<span class="k">join</span><span class="p">(</span>pathogen#uniq<span class="p">(</span><span class="nb">list</span><span class="p">))</span></div><div class='line' id='LC134'>&nbsp;&nbsp;<span class="k">return</span> <span class="m">1</span></div><div class='line' id='LC135'><span class="k">endfunction</span></div><div class='line' id='LC136'><br/></div><div class='line' id='LC137'><span class="k">let</span> <span class="k">s</span>:done_bundles <span class="p">=</span> {}</div><div class='line' id='LC138'><br/></div><div class='line' id='LC139'><span class="c">&quot; Invoke :helptags on all non-$VIM doc directories in runtimepath.</span></div><div class='line' id='LC140'><span class="k">function</span><span class="p">!</span> pathogen#<span class="k">helptags</span><span class="p">()</span> abort</div><div class='line' id='LC141'>&nbsp;&nbsp;<span class="k">let</span> sep <span class="p">=</span> pathogen#slash<span class="p">()</span></div><div class='line' id='LC142'>&nbsp;&nbsp;<span class="k">for</span> glob <span class="k">in</span> pathogen#split<span class="p">(</span>&amp;<span class="nb">rtp</span><span class="p">)</span></div><div class='line' id='LC143'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">for</span> <span class="nb">dir</span> <span class="k">in</span> map<span class="p">(</span>split<span class="p">(</span>glob<span class="p">(</span>glob<span class="p">),</span> <span class="s2">&quot;\n&quot;</span><span class="p">),</span> <span class="s1">&#39;v:val.sep.&quot;/doc/&quot;.sep&#39;</span><span class="p">)</span></div><div class='line' id='LC144'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="nb">dir</span><span class="p">)</span>[<span class="m">0</span> : strlen<span class="p">(</span>$VIMRUNTIME<span class="p">)</span>] <span class="p">!=</span># $VIMRUNTIME.sep &amp;&amp; filewritable<span class="p">(</span><span class="nb">dir</span><span class="p">)</span> <span class="p">==</span> <span class="m">2</span> &amp;&amp; <span class="p">!</span>empty<span class="p">(</span>split<span class="p">(</span>glob<span class="p">(</span><span class="nb">dir</span>.<span class="s1">&#39;*.txt&#39;</span><span class="p">)))</span> &amp;&amp; <span class="p">(!</span>filereadable<span class="p">(</span><span class="nb">dir</span>.<span class="s1">&#39;tags&#39;</span><span class="p">)</span> <span class="p">||</span> filewritable<span class="p">(</span><span class="nb">dir</span>.<span class="s1">&#39;tags&#39;</span><span class="p">))</span></div><div class='line' id='LC145'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">silent</span><span class="p">!</span> execute <span class="s1">&#39;helptags&#39;</span> pathogen#fnameescape<span class="p">(</span><span class="nb">dir</span><span class="p">)</span></div><div class='line' id='LC146'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">endif</span></div><div class='line' id='LC147'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">endfor</span></div><div class='line' id='LC148'>&nbsp;&nbsp;<span class="k">endfor</span></div><div class='line' id='LC149'><span class="k">endfunction</span></div><div class='line' id='LC150'><br/></div><div class='line' id='LC151'>command<span class="p">!</span> <span class="p">-</span><span class="k">bar</span> Helptags :<span class="k">call</span> pathogen#<span class="k">helptags</span><span class="p">()</span></div><div class='line' id='LC152'><br/></div><div class='line' id='LC153'><span class="c">&quot; Execute the given command.  This is basically a backdoor for --remote-expr.</span></div><div class='line' id='LC154'><span class="k">function</span><span class="p">!</span> pathogen#execute<span class="p">(</span>...<span class="p">)</span> abort</div><div class='line' id='LC155'>&nbsp;&nbsp;<span class="k">for</span> command <span class="k">in</span> <span class="k">a</span>:<span class="m">000</span></div><div class='line' id='LC156'>&nbsp;&nbsp;&nbsp;&nbsp;execute command</div><div class='line' id='LC157'>&nbsp;&nbsp;<span class="k">endfor</span></div><div class='line' id='LC158'>&nbsp;&nbsp;<span class="k">return</span> <span class="s1">&#39;&#39;</span></div><div class='line' id='LC159'><span class="k">endfunction</span></div><div class='line' id='LC160'><br/></div><div class='line' id='LC161'><span class="c">&quot; Section: Unofficial</span></div><div class='line' id='LC162'><br/></div><div class='line' id='LC163'><span class="k">function</span><span class="p">!</span> pathogen#is_absolute<span class="p">(</span><span class="nb">path</span><span class="p">)</span> abort</div><div class='line' id='LC164'>&nbsp;&nbsp;<span class="k">return</span> <span class="k">a</span>:<span class="nb">path</span> <span class="p">=~</span># <span class="p">(</span>has<span class="p">(</span><span class="s1">&#39;win32&#39;</span><span class="p">)</span> ? <span class="s1">&#39;^\%([\\/]\|\w:\)[\\/]\|^[~$]&#39;</span> : <span class="s1">&#39;^[/~$]&#39;</span><span class="p">)</span></div><div class='line' id='LC165'><span class="k">endfunction</span></div><div class='line' id='LC166'><br/></div><div class='line' id='LC167'><span class="c">&quot; Given a string, returns all possible permutations of comma delimited braced</span></div><div class='line' id='LC168'><span class="c">&quot; alternatives of that string.  pathogen#expand(&#39;/{a,b}/{c,d}&#39;) yields</span></div><div class='line' id='LC169'><span class="c">&quot; [&#39;/a/c&#39;, &#39;/a/d&#39;, &#39;/b/c&#39;, &#39;/b/d&#39;].  Empty braces are treated as a wildcard</span></div><div class='line' id='LC170'><span class="c">&quot; and globbed.  Actual globs are preserved.</span></div><div class='line' id='LC171'><span class="k">function</span><span class="p">!</span> pathogen#expand<span class="p">(</span>pattern<span class="p">)</span> abort</div><div class='line' id='LC172'>&nbsp;&nbsp;<span class="k">if</span> <span class="k">a</span>:pattern <span class="p">=~</span># <span class="s1">&#39;{[^{}]\+}&#39;</span></div><div class='line' id='LC173'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">let</span> [<span class="k">pre</span><span class="p">,</span> <span class="k">pat</span><span class="p">,</span> post] <span class="p">=</span> split<span class="p">(</span>substitute<span class="p">(</span><span class="k">a</span>:pattern<span class="p">,</span> <span class="s1">&#39;\(.\{-\}\){\([^{}]\+\)}\(.*\)&#39;</span><span class="p">,</span> <span class="s2">&quot;\\1\001\\2\001\\3&quot;</span><span class="p">,</span> <span class="s1">&#39;&#39;</span><span class="p">),</span> <span class="s2">&quot;\001&quot;</span><span class="p">,</span> <span class="m">1</span><span class="p">)</span></div><div class='line' id='LC174'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">let</span> found <span class="p">=</span> map<span class="p">(</span>split<span class="p">(</span><span class="k">pat</span><span class="p">,</span> <span class="s1">&#39;,&#39;</span><span class="p">,</span> <span class="m">1</span><span class="p">),</span> <span class="s1">&#39;pre.v:val.post&#39;</span><span class="p">)</span></div><div class='line' id='LC175'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">let</span> results <span class="p">=</span> []</div><div class='line' id='LC176'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">for</span> pattern <span class="k">in</span> found</div><div class='line' id='LC177'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">call</span> extend<span class="p">(</span>results<span class="p">,</span> pathogen#expand<span class="p">(</span>pattern<span class="p">))</span></div><div class='line' id='LC178'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">endfor</span></div><div class='line' id='LC179'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> results</div><div class='line' id='LC180'>&nbsp;&nbsp;<span class="k">elseif</span> <span class="k">a</span>:pattern <span class="p">=~</span># <span class="s1">&#39;{}&#39;</span></div><div class='line' id='LC181'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">let</span> <span class="k">pat</span> <span class="p">=</span> matchstr<span class="p">(</span><span class="k">a</span>:pattern<span class="p">,</span> <span class="s1">&#39;^.*{}[^*]*\%($\|[\\/]\)&#39;</span><span class="p">)</span></div><div class='line' id='LC182'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">let</span> post <span class="p">=</span> <span class="k">a</span>:pattern[strlen<span class="p">(</span><span class="k">pat</span><span class="p">)</span> : <span class="m">-1</span>]</div><div class='line' id='LC183'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> map<span class="p">(</span>split<span class="p">(</span>glob<span class="p">(</span>substitute<span class="p">(</span><span class="k">pat</span><span class="p">,</span> <span class="s1">&#39;{}&#39;</span><span class="p">,</span> <span class="s1">&#39;*&#39;</span><span class="p">,</span> <span class="s1">&#39;g&#39;</span><span class="p">)),</span> <span class="s2">&quot;\n&quot;</span><span class="p">),</span> <span class="s1">&#39;v:val.post&#39;</span><span class="p">)</span></div><div class='line' id='LC184'>&nbsp;&nbsp;<span class="k">else</span></div><div class='line' id='LC185'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> [<span class="k">a</span>:pattern]</div><div class='line' id='LC186'>&nbsp;&nbsp;<span class="k">endif</span></div><div class='line' id='LC187'><span class="k">endfunction</span></div><div class='line' id='LC188'><br/></div><div class='line' id='LC189'><span class="c">&quot; \ on Windows unless shellslash is set, / everywhere else.</span></div><div class='line' id='LC190'><span class="k">function</span><span class="p">!</span> pathogen#slash<span class="p">()</span> abort</div><div class='line' id='LC191'>&nbsp;&nbsp;<span class="k">return</span> <span class="p">!</span>exists<span class="p">(</span><span class="s2">&quot;+shellslash&quot;</span><span class="p">)</span> <span class="p">||</span> &amp;<span class="nb">shellslash</span> ? <span class="s1">&#39;/&#39;</span> : <span class="s1">&#39;\&#39;</span></div><div class='line' id='LC192'><span class="k">endfunction</span></div><div class='line' id='LC193'><br/></div><div class='line' id='LC194'><span class="k">function</span><span class="p">!</span> pathogen#separator<span class="p">()</span> abort</div><div class='line' id='LC195'>&nbsp;&nbsp;<span class="k">return</span> pathogen#slash<span class="p">()</span></div><div class='line' id='LC196'><span class="k">endfunction</span></div><div class='line' id='LC197'><br/></div><div class='line' id='LC198'><span class="c">&quot; Convenience wrapper around glob() which returns a list.</span></div><div class='line' id='LC199'><span class="k">function</span><span class="p">!</span> pathogen#glob<span class="p">(</span>pattern<span class="p">)</span> abort</div><div class='line' id='LC200'>&nbsp;&nbsp;<span class="k">let</span> <span class="k">files</span> <span class="p">=</span> split<span class="p">(</span>glob<span class="p">(</span><span class="k">a</span>:pattern<span class="p">),</span><span class="s2">&quot;\n&quot;</span><span class="p">)</span></div><div class='line' id='LC201'>&nbsp;&nbsp;<span class="k">return</span> map<span class="p">(</span><span class="k">files</span><span class="p">,</span><span class="s1">&#39;substitute(v:val,&quot;[&quot;.pathogen#slash().&quot;/]$&quot;,&quot;&quot;,&quot;&quot;)&#39;</span><span class="p">)</span></div><div class='line' id='LC202'><span class="k">endfunction</span> <span class="c">&quot;}}}1</span></div><div class='line' id='LC203'><br/></div><div class='line' id='LC204'><span class="c">&quot; Like pathogen#glob(), only limit the results to directories.</span></div><div class='line' id='LC205'><span class="k">function</span><span class="p">!</span> pathogen#glob_directories<span class="p">(</span>pattern<span class="p">)</span> abort</div><div class='line' id='LC206'>&nbsp;&nbsp;<span class="k">return</span> filter<span class="p">(</span>pathogen#glob<span class="p">(</span><span class="k">a</span>:pattern<span class="p">),</span><span class="s1">&#39;isdirectory(v:val)&#39;</span><span class="p">)</span></div><div class='line' id='LC207'><span class="k">endfunction</span> <span class="c">&quot;}}}1</span></div><div class='line' id='LC208'><br/></div><div class='line' id='LC209'><span class="c">&quot; Remove duplicates from a list.</span></div><div class='line' id='LC210'><span class="k">function</span><span class="p">!</span> pathogen#uniq<span class="p">(</span><span class="nb">list</span><span class="p">)</span> abort</div><div class='line' id='LC211'>&nbsp;&nbsp;<span class="k">let</span> <span class="k">i</span> <span class="p">=</span> <span class="m">0</span></div><div class='line' id='LC212'>&nbsp;&nbsp;<span class="k">let</span> seen <span class="p">=</span> {}</div><div class='line' id='LC213'>&nbsp;&nbsp;<span class="k">while</span> <span class="k">i</span> <span class="p">&lt;</span> len<span class="p">(</span><span class="k">a</span>:<span class="nb">list</span><span class="p">)</span></div><div class='line' id='LC214'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> <span class="p">(</span><span class="k">a</span>:<span class="nb">list</span>[<span class="k">i</span>] <span class="p">==</span># <span class="s1">&#39;&#39;</span> &amp;&amp; exists<span class="p">(</span><span class="s1">&#39;empty&#39;</span><span class="p">))</span> <span class="p">||</span> has_key<span class="p">(</span>seen<span class="p">,</span><span class="k">a</span>:<span class="nb">list</span>[<span class="k">i</span>]<span class="p">)</span></div><div class='line' id='LC215'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">call</span> remove<span class="p">(</span><span class="k">a</span>:<span class="nb">list</span><span class="p">,</span><span class="k">i</span><span class="p">)</span></div><div class='line' id='LC216'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">elseif</span> <span class="k">a</span>:<span class="nb">list</span>[<span class="k">i</span>] <span class="p">==</span># <span class="s1">&#39;&#39;</span></div><div class='line' id='LC217'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">let</span> <span class="k">i</span> <span class="p">+=</span> <span class="m">1</span></div><div class='line' id='LC218'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">let</span> empty <span class="p">=</span> <span class="m">1</span></div><div class='line' id='LC219'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">else</span></div><div class='line' id='LC220'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">let</span> seen[<span class="k">a</span>:<span class="nb">list</span>[<span class="k">i</span>]] <span class="p">=</span> <span class="m">1</span></div><div class='line' id='LC221'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">let</span> <span class="k">i</span> <span class="p">+=</span> <span class="m">1</span></div><div class='line' id='LC222'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">endif</span></div><div class='line' id='LC223'>&nbsp;&nbsp;<span class="k">endwhile</span></div><div class='line' id='LC224'>&nbsp;&nbsp;<span class="k">return</span> <span class="k">a</span>:<span class="nb">list</span></div><div class='line' id='LC225'><span class="k">endfunction</span></div><div class='line' id='LC226'><br/></div><div class='line' id='LC227'><span class="c">&quot; Backport of fnameescape().</span></div><div class='line' id='LC228'><span class="k">function</span><span class="p">!</span> pathogen#fnameescape<span class="p">(</span>string<span class="p">)</span> abort</div><div class='line' id='LC229'>&nbsp;&nbsp;<span class="k">if</span> exists<span class="p">(</span><span class="s1">&#39;*fnameescape&#39;</span><span class="p">)</span></div><div class='line' id='LC230'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> fnameescape<span class="p">(</span><span class="k">a</span>:string<span class="p">)</span></div><div class='line' id='LC231'>&nbsp;&nbsp;<span class="k">elseif</span> <span class="k">a</span>:string <span class="p">==</span># <span class="s1">&#39;-&#39;</span></div><div class='line' id='LC232'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="s1">&#39;\-&#39;</span></div><div class='line' id='LC233'>&nbsp;&nbsp;<span class="k">else</span></div><div class='line' id='LC234'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> substitute<span class="p">(</span>escape<span class="p">(</span><span class="k">a</span>:string<span class="p">,</span><span class="s2">&quot; \t\n*?[{`$\\%#&#39;\&quot;|!&lt;&quot;</span><span class="p">),</span><span class="s1">&#39;^[+&gt;]&#39;</span><span class="p">,</span><span class="s1">&#39;\\&amp;&#39;</span><span class="p">,</span><span class="s1">&#39;&#39;</span><span class="p">)</span></div><div class='line' id='LC235'>&nbsp;&nbsp;<span class="k">endif</span></div><div class='line' id='LC236'><span class="k">endfunction</span></div><div class='line' id='LC237'><br/></div><div class='line' id='LC238'><span class="c">&quot; Like findfile(), but hardcoded to use the runtimepath.</span></div><div class='line' id='LC239'><span class="k">function</span><span class="p">!</span> pathogen#runtime_findfile<span class="p">(</span><span class="k">file</span><span class="p">,</span><span class="k">count</span><span class="p">)</span> abort <span class="c">&quot;{{{1</span></div><div class='line' id='LC240'>&nbsp;&nbsp;<span class="k">let</span> <span class="nb">rtp</span> <span class="p">=</span> pathogen#<span class="k">join</span><span class="p">(</span><span class="m">1</span><span class="p">,</span>pathogen#split<span class="p">(</span>&amp;<span class="nb">rtp</span><span class="p">))</span></div><div class='line' id='LC241'>&nbsp;&nbsp;<span class="k">let</span> <span class="k">file</span> <span class="p">=</span> findfile<span class="p">(</span><span class="k">a</span>:<span class="k">file</span><span class="p">,</span><span class="nb">rtp</span><span class="p">,</span><span class="k">a</span>:<span class="k">count</span><span class="p">)</span></div><div class='line' id='LC242'>&nbsp;&nbsp;<span class="k">if</span> <span class="k">file</span> <span class="p">==</span># <span class="s1">&#39;&#39;</span></div><div class='line' id='LC243'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="s1">&#39;&#39;</span></div><div class='line' id='LC244'>&nbsp;&nbsp;<span class="k">else</span></div><div class='line' id='LC245'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> fnamemodify<span class="p">(</span><span class="k">file</span><span class="p">,</span><span class="s1">&#39;:p&#39;</span><span class="p">)</span></div><div class='line' id='LC246'>&nbsp;&nbsp;<span class="k">endif</span></div><div class='line' id='LC247'><span class="k">endfunction</span></div><div class='line' id='LC248'><br/></div><div class='line' id='LC249'><span class="c">&quot; Section: Deprecated</span></div><div class='line' id='LC250'><br/></div><div class='line' id='LC251'><span class="k">function</span><span class="p">!</span> <span class="k">s</span>:<span class="nb">warn</span><span class="p">(</span>msg<span class="p">)</span> abort</div><div class='line' id='LC252'>&nbsp;&nbsp;echohl WarningMsg</div><div class='line' id='LC253'>&nbsp;&nbsp;<span class="k">echomsg</span> <span class="k">a</span>:msg</div><div class='line' id='LC254'>&nbsp;&nbsp;echohl <span class="nb">NONE</span></div><div class='line' id='LC255'><span class="k">endfunction</span></div><div class='line' id='LC256'><br/></div><div class='line' id='LC257'><span class="c">&quot; Prepend all subdirectories of path to the rtp, and append all &#39;after&#39;</span></div><div class='line' id='LC258'><span class="c">&quot; directories in those subdirectories.  Deprecated.</span></div><div class='line' id='LC259'><span class="k">function</span><span class="p">!</span> pathogen#runtime_prepend_subdirectories<span class="p">(</span><span class="nb">path</span><span class="p">)</span> abort</div><div class='line' id='LC260'>&nbsp;&nbsp;<span class="k">call</span> <span class="k">s</span>:<span class="nb">warn</span><span class="p">(</span><span class="s1">&#39;Change pathogen#runtime_prepend_subdirectories(&#39;</span>.string<span class="p">(</span><span class="k">a</span>:<span class="nb">path</span><span class="p">)</span>.<span class="s1">&#39;) to pathogen#infect(&#39;</span>.string<span class="p">(</span><span class="k">a</span>:<span class="nb">path</span>.<span class="s1">&#39;/{}&#39;</span><span class="p">)</span>.<span class="s1">&#39;)&#39;</span><span class="p">)</span></div><div class='line' id='LC261'>&nbsp;&nbsp;<span class="k">return</span> pathogen#surround<span class="p">(</span><span class="k">a</span>:<span class="nb">path</span> . pathogen#slash<span class="p">()</span> . <span class="s1">&#39;{}&#39;</span><span class="p">)</span></div><div class='line' id='LC262'><span class="k">endfunction</span></div><div class='line' id='LC263'><br/></div><div class='line' id='LC264'><span class="k">function</span><span class="p">!</span> pathogen#incubate<span class="p">(</span>...<span class="p">)</span> abort</div><div class='line' id='LC265'>&nbsp;&nbsp;<span class="k">let</span> name <span class="p">=</span> <span class="k">a</span>:<span class="m">0</span> ? <span class="k">a</span>:<span class="m">1</span> : <span class="s1">&#39;bundle/{}&#39;</span></div><div class='line' id='LC266'>&nbsp;&nbsp;<span class="k">call</span> <span class="k">s</span>:<span class="nb">warn</span><span class="p">(</span><span class="s1">&#39;Change pathogen#incubate(&#39;</span>.<span class="p">(</span><span class="k">a</span>:<span class="m">0</span> ? string<span class="p">(</span><span class="k">a</span>:<span class="m">1</span><span class="p">)</span> : <span class="s1">&#39;&#39;</span><span class="p">)</span>.<span class="s1">&#39;) to pathogen#infect(&#39;</span>.string<span class="p">(</span>name<span class="p">)</span>.<span class="s1">&#39;)&#39;</span><span class="p">)</span></div><div class='line' id='LC267'>&nbsp;&nbsp;<span class="k">return</span> pathogen#interpose<span class="p">(</span>name<span class="p">)</span></div><div class='line' id='LC268'><span class="k">endfunction</span></div><div class='line' id='LC269'><br/></div><div class='line' id='LC270'><span class="c">&quot; Deprecated alias for pathogen#interpose().</span></div><div class='line' id='LC271'><span class="k">function</span><span class="p">!</span> pathogen#runtime_append_all_bundles<span class="p">(</span>...<span class="p">)</span> abort</div><div class='line' id='LC272'>&nbsp;&nbsp;<span class="k">if</span> <span class="k">a</span>:<span class="m">0</span></div><div class='line' id='LC273'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">call</span> <span class="k">s</span>:<span class="nb">warn</span><span class="p">(</span><span class="s1">&#39;Change pathogen#runtime_append_all_bundles(&#39;</span>.string<span class="p">(</span><span class="k">a</span>:<span class="m">1</span><span class="p">)</span>.<span class="s1">&#39;) to pathogen#infect(&#39;</span>.string<span class="p">(</span><span class="k">a</span>:<span class="m">1</span>.<span class="s1">&#39;/{}&#39;</span><span class="p">)</span>.<span class="s1">&#39;)&#39;</span><span class="p">)</span></div><div class='line' id='LC274'>&nbsp;&nbsp;<span class="k">else</span></div><div class='line' id='LC275'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">call</span> <span class="k">s</span>:<span class="nb">warn</span><span class="p">(</span><span class="s1">&#39;Change pathogen#runtime_append_all_bundles() to pathogen#infect()&#39;</span><span class="p">)</span></div><div class='line' id='LC276'>&nbsp;&nbsp;<span class="k">endif</span></div><div class='line' id='LC277'>&nbsp;&nbsp;<span class="k">return</span> pathogen#interpose<span class="p">(</span><span class="k">a</span>:<span class="m">0</span> ? <span class="k">a</span>:<span class="m">1</span> . <span class="s1">&#39;/{}&#39;</span> : <span class="s1">&#39;bundle/{}&#39;</span><span class="p">)</span></div><div class='line' id='LC278'><span class="k">endfunction</span></div><div class='line' id='LC279'><br/></div><div class='line' id='LC280'><span class="k">if</span> exists<span class="p">(</span><span class="s1">&#39;:Vedit&#39;</span><span class="p">)</span></div><div class='line' id='LC281'>&nbsp;&nbsp;<span class="k">finish</span></div><div class='line' id='LC282'><span class="k">endif</span></div><div class='line' id='LC283'><br/></div><div class='line' id='LC284'><span class="k">let</span> <span class="k">s</span>:vopen_warning <span class="p">=</span> <span class="m">0</span></div><div class='line' id='LC285'><br/></div><div class='line' id='LC286'><span class="k">function</span><span class="p">!</span> <span class="k">s</span>:find<span class="p">(</span><span class="k">count</span><span class="p">,</span>cmd<span class="p">,</span><span class="k">file</span><span class="p">,</span><span class="k">lcd</span><span class="p">)</span></div><div class='line' id='LC287'>&nbsp;&nbsp;<span class="k">let</span> <span class="nb">rtp</span> <span class="p">=</span> pathogen#<span class="k">join</span><span class="p">(</span><span class="m">1</span><span class="p">,</span>pathogen#split<span class="p">(</span>&amp;<span class="nb">runtimepath</span><span class="p">))</span></div><div class='line' id='LC288'>&nbsp;&nbsp;<span class="k">let</span> <span class="k">file</span> <span class="p">=</span> pathogen#runtime_findfile<span class="p">(</span><span class="k">a</span>:<span class="k">file</span><span class="p">,</span><span class="k">a</span>:<span class="k">count</span><span class="p">)</span></div><div class='line' id='LC289'>&nbsp;&nbsp;<span class="k">if</span> <span class="k">file</span> <span class="p">==</span># <span class="s1">&#39;&#39;</span></div><div class='line' id='LC290'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="s2">&quot;echoerr &#39;E345: Can&#39;&#39;t find file \&quot;&quot;</span>.<span class="k">a</span>:<span class="k">file</span>.<span class="s2">&quot;\&quot; in runtimepath&#39;&quot;</span></div><div class='line' id='LC291'>&nbsp;&nbsp;<span class="k">endif</span></div><div class='line' id='LC292'>&nbsp;&nbsp;<span class="k">if</span> <span class="p">!</span><span class="k">s</span>:vopen_warning</div><div class='line' id='LC293'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">let</span> <span class="k">s</span>:vopen_warning <span class="p">=</span> <span class="m">1</span></div><div class='line' id='LC294'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">let</span> warning <span class="p">=</span> <span class="s1">&#39;|echohl WarningMsg|echo &quot;Install scriptease.vim to continue using :V&#39;</span>.<span class="k">a</span>:cmd.<span class="s1">&#39;&quot;|echohl NONE&#39;</span></div><div class='line' id='LC295'>&nbsp;&nbsp;<span class="k">else</span></div><div class='line' id='LC296'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">let</span> warning <span class="p">=</span> <span class="s1">&#39;&#39;</span></div><div class='line' id='LC297'>&nbsp;&nbsp;<span class="k">endif</span></div><div class='line' id='LC298'>&nbsp;&nbsp;<span class="k">if</span> <span class="k">a</span>:<span class="k">lcd</span></div><div class='line' id='LC299'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">let</span> <span class="nb">path</span> <span class="p">=</span> <span class="k">file</span>[<span class="m">0</span>:<span class="p">-</span>strlen<span class="p">(</span><span class="k">a</span>:<span class="k">file</span><span class="p">)</span><span class="m">-2</span>]</div><div class='line' id='LC300'>&nbsp;&nbsp;&nbsp;&nbsp;execute <span class="s1">&#39;lcd `=path`&#39;</span></div><div class='line' id='LC301'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="k">a</span>:cmd.<span class="s1">&#39; &#39;</span>.pathogen#fnameescape<span class="p">(</span><span class="k">a</span>:<span class="k">file</span><span class="p">)</span> . warning</div><div class='line' id='LC302'>&nbsp;&nbsp;<span class="k">else</span></div><div class='line' id='LC303'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">return</span> <span class="k">a</span>:cmd.<span class="s1">&#39; &#39;</span>.pathogen#fnameescape<span class="p">(</span><span class="k">file</span><span class="p">)</span> . warning</div><div class='line' id='LC304'>&nbsp;&nbsp;<span class="k">endif</span></div><div class='line' id='LC305'><span class="k">endfunction</span></div><div class='line' id='LC306'><br/></div><div class='line' id='LC307'><span class="k">function</span><span class="p">!</span> <span class="k">s</span>:Findcomplete<span class="p">(</span>A<span class="p">,</span>L<span class="p">,</span><span class="k">P</span><span class="p">)</span></div><div class='line' id='LC308'>&nbsp;&nbsp;<span class="k">let</span> sep <span class="p">=</span> pathogen#slash<span class="p">()</span></div><div class='line' id='LC309'>&nbsp;&nbsp;<span class="k">let</span> cheats <span class="p">=</span> {</div><div class='line' id='LC310'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\<span class="s1">&#39;a&#39;</span>: <span class="s1">&#39;autoload&#39;</span><span class="p">,</span></div><div class='line' id='LC311'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\<span class="s1">&#39;d&#39;</span>: <span class="s1">&#39;doc&#39;</span><span class="p">,</span></div><div class='line' id='LC312'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\<span class="s1">&#39;f&#39;</span>: <span class="s1">&#39;ftplugin&#39;</span><span class="p">,</span></div><div class='line' id='LC313'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\<span class="s1">&#39;i&#39;</span>: <span class="s1">&#39;indent&#39;</span><span class="p">,</span></div><div class='line' id='LC314'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\<span class="s1">&#39;p&#39;</span>: <span class="s1">&#39;plugin&#39;</span><span class="p">,</span></div><div class='line' id='LC315'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\<span class="s1">&#39;s&#39;</span>: <span class="s1">&#39;syntax&#39;</span>}</div><div class='line' id='LC316'>&nbsp;&nbsp;<span class="k">if</span> <span class="k">a</span>:A <span class="p">=~</span># <span class="s1">&#39;^\w[\\/]&#39;</span> &amp;&amp; has_key<span class="p">(</span>cheats<span class="p">,</span><span class="k">a</span>:A[<span class="m">0</span>]<span class="p">)</span></div><div class='line' id='LC317'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">let</span> request <span class="p">=</span> cheats[<span class="k">a</span>:A[<span class="m">0</span>]].<span class="k">a</span>:A[<span class="m">1</span>:<span class="m">-1</span>]</div><div class='line' id='LC318'>&nbsp;&nbsp;<span class="k">else</span></div><div class='line' id='LC319'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">let</span> request <span class="p">=</span> <span class="k">a</span>:A</div><div class='line' id='LC320'>&nbsp;&nbsp;<span class="k">endif</span></div><div class='line' id='LC321'>&nbsp;&nbsp;<span class="k">let</span> pattern <span class="p">=</span> substitute<span class="p">(</span>request<span class="p">,</span><span class="s1">&#39;/\|\&#39;</span>.sep<span class="p">,</span><span class="s1">&#39;*&#39;</span>.sep<span class="p">,</span><span class="s1">&#39;g&#39;</span><span class="p">)</span>.<span class="s1">&#39;*&#39;</span></div><div class='line' id='LC322'>&nbsp;&nbsp;<span class="k">let</span> found <span class="p">=</span> {}</div><div class='line' id='LC323'>&nbsp;&nbsp;<span class="k">for</span> <span class="nb">path</span> <span class="k">in</span> pathogen#split<span class="p">(</span>&amp;<span class="nb">runtimepath</span><span class="p">)</span></div><div class='line' id='LC324'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">let</span> <span class="nb">path</span> <span class="p">=</span> expand<span class="p">(</span><span class="nb">path</span><span class="p">,</span> <span class="s1">&#39;:p&#39;</span><span class="p">)</span></div><div class='line' id='LC325'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">let</span> matches <span class="p">=</span> split<span class="p">(</span>glob<span class="p">(</span><span class="nb">path</span>.sep.pattern<span class="p">),</span><span class="s2">&quot;\n&quot;</span><span class="p">)</span></div><div class='line' id='LC326'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">call</span> map<span class="p">(</span>matches<span class="p">,</span><span class="s1">&#39;isdirectory(v:val) ? v:val.sep : v:val&#39;</span><span class="p">)</span></div><div class='line' id='LC327'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">call</span> map<span class="p">(</span>matches<span class="p">,</span><span class="s1">&#39;expand(v:val, &quot;:p&quot;)[strlen(path)+1:-1]&#39;</span><span class="p">)</span></div><div class='line' id='LC328'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">for</span> <span class="k">match</span> <span class="k">in</span> matches</div><div class='line' id='LC329'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">let</span> found[<span class="k">match</span>] <span class="p">=</span> <span class="m">1</span></div><div class='line' id='LC330'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">endfor</span></div><div class='line' id='LC331'>&nbsp;&nbsp;<span class="k">endfor</span></div><div class='line' id='LC332'>&nbsp;&nbsp;<span class="k">return</span> <span class="k">sort</span><span class="p">(</span>keys<span class="p">(</span>found<span class="p">))</span></div><div class='line' id='LC333'><span class="k">endfunction</span></div><div class='line' id='LC334'><br/></div><div class='line' id='LC335'>command<span class="p">!</span> <span class="p">-</span><span class="k">bar</span> <span class="p">-</span>bang <span class="p">-</span>range<span class="p">=</span><span class="m">1</span> <span class="p">-</span>nargs<span class="p">=</span><span class="m">1</span> <span class="p">-</span><span class="nb">complete</span><span class="p">=</span>customlist<span class="p">,</span><span class="k">s</span>:Findcomplete Ve       :execute <span class="k">s</span>:find<span class="p">(&lt;</span><span class="k">count</span><span class="p">&gt;,</span><span class="s1">&#39;edit&lt;bang&gt;&#39;</span><span class="p">,&lt;</span><span class="k">q</span><span class="p">-</span>args<span class="p">&gt;,</span><span class="m">0</span><span class="p">)</span></div><div class='line' id='LC336'>command<span class="p">!</span> <span class="p">-</span><span class="k">bar</span> <span class="p">-</span>bang <span class="p">-</span>range<span class="p">=</span><span class="m">1</span> <span class="p">-</span>nargs<span class="p">=</span><span class="m">1</span> <span class="p">-</span><span class="nb">complete</span><span class="p">=</span>customlist<span class="p">,</span><span class="k">s</span>:Findcomplete Vedit    :execute <span class="k">s</span>:find<span class="p">(&lt;</span><span class="k">count</span><span class="p">&gt;,</span><span class="s1">&#39;edit&lt;bang&gt;&#39;</span><span class="p">,&lt;</span><span class="k">q</span><span class="p">-</span>args<span class="p">&gt;,</span><span class="m">0</span><span class="p">)</span></div><div class='line' id='LC337'>command<span class="p">!</span> <span class="p">-</span><span class="k">bar</span> <span class="p">-</span>bang <span class="p">-</span>range<span class="p">=</span><span class="m">1</span> <span class="p">-</span>nargs<span class="p">=</span><span class="m">1</span> <span class="p">-</span><span class="nb">complete</span><span class="p">=</span>customlist<span class="p">,</span><span class="k">s</span>:Findcomplete Vopen    :execute <span class="k">s</span>:find<span class="p">(&lt;</span><span class="k">count</span><span class="p">&gt;,</span><span class="s1">&#39;edit&lt;bang&gt;&#39;</span><span class="p">,&lt;</span><span class="k">q</span><span class="p">-</span>args<span class="p">&gt;,</span><span class="m">1</span><span class="p">)</span></div><div class='line' id='LC338'>command<span class="p">!</span> <span class="p">-</span><span class="k">bar</span> <span class="p">-</span>bang <span class="p">-</span>range<span class="p">=</span><span class="m">1</span> <span class="p">-</span>nargs<span class="p">=</span><span class="m">1</span> <span class="p">-</span><span class="nb">complete</span><span class="p">=</span>customlist<span class="p">,</span><span class="k">s</span>:Findcomplete Vsplit   :execute <span class="k">s</span>:find<span class="p">(&lt;</span><span class="k">count</span><span class="p">&gt;,</span><span class="s1">&#39;split&#39;</span><span class="p">,&lt;</span><span class="k">q</span><span class="p">-</span>args<span class="p">&gt;,&lt;</span>bang<span class="p">&gt;</span><span class="m">1</span><span class="p">)</span></div><div class='line' id='LC339'>command<span class="p">!</span> <span class="p">-</span><span class="k">bar</span> <span class="p">-</span>bang <span class="p">-</span>range<span class="p">=</span><span class="m">1</span> <span class="p">-</span>nargs<span class="p">=</span><span class="m">1</span> <span class="p">-</span><span class="nb">complete</span><span class="p">=</span>customlist<span class="p">,</span><span class="k">s</span>:Findcomplete Vvsplit  :execute <span class="k">s</span>:find<span class="p">(&lt;</span><span class="k">count</span><span class="p">&gt;,</span><span class="s1">&#39;vsplit&#39;</span><span class="p">,&lt;</span><span class="k">q</span><span class="p">-</span>args<span class="p">&gt;,&lt;</span>bang<span class="p">&gt;</span><span class="m">1</span><span class="p">)</span></div><div class='line' id='LC340'>command<span class="p">!</span> <span class="p">-</span><span class="k">bar</span> <span class="p">-</span>bang <span class="p">-</span>range<span class="p">=</span><span class="m">1</span> <span class="p">-</span>nargs<span class="p">=</span><span class="m">1</span> <span class="p">-</span><span class="nb">complete</span><span class="p">=</span>customlist<span class="p">,</span><span class="k">s</span>:Findcomplete Vtabedit :execute <span class="k">s</span>:find<span class="p">(&lt;</span><span class="k">count</span><span class="p">&gt;,</span><span class="s1">&#39;tabedit&#39;</span><span class="p">,&lt;</span><span class="k">q</span><span class="p">-</span>args<span class="p">&gt;,&lt;</span>bang<span class="p">&gt;</span><span class="m">1</span><span class="p">)</span></div><div class='line' id='LC341'>command<span class="p">!</span> <span class="p">-</span><span class="k">bar</span> <span class="p">-</span>bang <span class="p">-</span>range<span class="p">=</span><span class="m">1</span> <span class="p">-</span>nargs<span class="p">=</span><span class="m">1</span> <span class="p">-</span><span class="nb">complete</span><span class="p">=</span>customlist<span class="p">,</span><span class="k">s</span>:Findcomplete Vpedit   :execute <span class="k">s</span>:find<span class="p">(&lt;</span><span class="k">count</span><span class="p">&gt;,</span><span class="s1">&#39;pedit&#39;</span><span class="p">,&lt;</span><span class="k">q</span><span class="p">-</span>args<span class="p">&gt;,&lt;</span>bang<span class="p">&gt;</span><span class="m">1</span><span class="p">)</span></div><div class='line' id='LC342'>command<span class="p">!</span> <span class="p">-</span><span class="k">bar</span> <span class="p">-</span>bang <span class="p">-</span>range<span class="p">=</span><span class="m">1</span> <span class="p">-</span>nargs<span class="p">=</span><span class="m">1</span> <span class="p">-</span><span class="nb">complete</span><span class="p">=</span>customlist<span class="p">,</span><span class="k">s</span>:Findcomplete Vread    :execute <span class="k">s</span>:find<span class="p">(&lt;</span><span class="k">count</span><span class="p">&gt;,</span><span class="s1">&#39;read&#39;</span><span class="p">,&lt;</span><span class="k">q</span><span class="p">-</span>args<span class="p">&gt;,&lt;</span>bang<span class="p">&gt;</span><span class="m">1</span><span class="p">)</span></div><div class='line' id='LC343'><br/></div><div class='line' id='LC344'><span class="c">&quot; vim:set et sw=2 foldmethod=expr foldexpr=getline(v\:lnum)=~&#39;^\&quot;\ Section\:&#39;?&#39;&gt;1&#39;\:getline(v\:lnum)=~#&#39;^fu&#39;?&#39;a1&#39;\:getline(v\:lnum)=~#&#39;^endf&#39;?&#39;s1&#39;\:&#39;=&#39;:</span></div></pre></div></td>
         </tr>
       </table>
  </div>

  </div>
</div>

<a href="#jump-to-line" rel="facebox[.linejump]" data-hotkey="l" class="js-jump-to-line" style="display:none">Jump to Line</a>
<div id="jump-to-line" style="display:none">
  <form accept-charset="UTF-8" class="js-jump-to-line-form">
    <input class="linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" autofocus>
    <button type="submit" class="button">Go</button>
  </form>
</div>

        </div>

      </div><!-- /.repo-container -->
      <div class="modal-backdrop"></div>
    </div><!-- /.container -->
  </div><!-- /.site -->


    </div><!-- /.wrapper -->

      <div class="container">
  <div class="site-footer">
    <ul class="site-footer-links right">
      <li><a href="https://status.github.com/">Status</a></li>
      <li><a href="http://developer.github.com">API</a></li>
      <li><a href="http://training.github.com">Training</a></li>
      <li><a href="http://shop.github.com">Shop</a></li>
      <li><a href="/blog">Blog</a></li>
      <li><a href="/about">About</a></li>

    </ul>

    <a href="/">
      <span class="mega-octicon octicon-mark-github" title="GitHub"></span>
    </a>

    <ul class="site-footer-links">
      <li>&copy; 2014 <span title="0.02859s from github-fe139-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="/site/terms">Terms</a></li>
        <li><a href="/site/privacy">Privacy</a></li>
        <li><a href="/security">Security</a></li>
        <li><a href="/contact">Contact</a></li>
    </ul>
  </div><!-- /.site-footer -->
</div><!-- /.container -->


    <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-fullscreen-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="fullscreen-contents js-fullscreen-contents" placeholder="" data-suggester="fullscreen_suggester"></textarea>
    </div>
  </div>
  <div class="fullscreen-sidebar">
    <a href="#" class="exit-fullscreen js-exit-fullscreen tooltipped tooltipped-w" aria-label="Exit Zen Mode">
      <span class="mega-octicon octicon-screen-normal"></span>
    </a>
    <a href="#" class="theme-switcher js-theme-switcher tooltipped tooltipped-w"
      aria-label="Switch themes">
      <span class="octicon octicon-color-mode"></span>
    </a>
  </div>
</div>



    <div id="ajax-error-message" class="flash flash-error">
      <span class="octicon octicon-alert"></span>
      <a href="#" class="octicon octicon-x close js-ajax-error-dismiss" aria-label="Dismiss error"></a>
      Something went wrong with that request. Please try again.
    </div>


      <script crossorigin="anonymous" src="https://assets-cdn.github.com/assets/frameworks-df9e4beac80276ed3dfa56be0d97b536d0f5ee12.js" type="text/javascript"></script>
      <script async="async" crossorigin="anonymous" src="https://assets-cdn.github.com/assets/github-df82ba4b57b9d4b49e4ef38975077d08caba28c5.js" type="text/javascript"></script>
      
      
        <script async src="https://www.google-analytics.com/analytics.js"></script>
  </body>
</html>

