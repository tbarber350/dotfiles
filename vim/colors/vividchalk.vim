


<!DOCTYPE html>
<html lang="en" class="">
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# object: http://ogp.me/ns/object# article: http://ogp.me/ns/article# profile: http://ogp.me/ns/profile#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    
    
    <title>vim-vividchalk/vividchalk.vim at master · tpope/vim-vividchalk</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub">
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub">
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png">
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png">
    <meta property="fb:app_id" content="1401488693436528">

      <meta content="@github" name="twitter:site" /><meta content="summary" name="twitter:card" /><meta content="tpope/vim-vividchalk" name="twitter:title" /><meta content="vim-vividchalk - vividchalk.vim: a colorscheme strangely reminiscent of Vibrant Ink for a certain OS X editor" name="twitter:description" /><meta content="https://avatars2.githubusercontent.com/u/378?v=3&amp;s=400" name="twitter:image:src" />
      <meta content="GitHub" property="og:site_name" /><meta content="object" property="og:type" /><meta content="https://avatars2.githubusercontent.com/u/378?v=3&amp;s=400" property="og:image" /><meta content="tpope/vim-vividchalk" property="og:title" /><meta content="https://github.com/tpope/vim-vividchalk" property="og:url" /><meta content="vim-vividchalk - vividchalk.vim: a colorscheme strangely reminiscent of Vibrant Ink for a certain OS X editor" property="og:description" />
      <meta name="browser-stats-url" content="/_stats">
    <link rel="assets" href="https://assets-cdn.github.com/">
    <link rel="conduit-xhr" href="https://ghconduit.com:25035">
    <link rel="xhr-socket" href="/_sockets">
    <meta name="pjax-timeout" content="1000">
    <link rel="sudo-modal" href="/sessions/sudo_modal">

    <meta name="msapplication-TileImage" content="/windows-tile.png">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="selected-link" value="repo_source" data-pjax-transient>
      <meta name="google-analytics" content="UA-3769691-2">

    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="collector-cdn.github.com" name="octolytics-script-host" /><meta content="github" name="octolytics-app-id" /><meta content="9F76F0D9:202C:279AEE3B:54DC42E2" name="octolytics-dimension-request_id" /><meta content="2417311" name="octolytics-actor-id" /><meta content="tbarber350" name="octolytics-actor-login" /><meta content="ad83ff1d609dfe2c6a66163ce3d5ee70c37478180536a47b328184890aa73974" name="octolytics-actor-hash" />
    
    <meta content="Rails, view, blob#show" name="analytics-event" />

    
    
    <link rel="icon" type="image/x-icon" href="https://assets-cdn.github.com/favicon.ico">


    <meta content="authenticity_token" name="csrf-param" />
<meta content="yU40ok3eE6kdM9hX8WblZiyg1jZvxElGlwrsDFs0Cr45+inGPsQFMJsuRv9Jw0eKrvpaOacKumFIIqZvTXYNTQ==" name="csrf-token" />

    <link href="https://assets-cdn.github.com/assets/github-a4b171dd2431f87b38fda8fb16f70ffd9b828087c63c1c0a11a0f2a6d3042c1c.css" media="all" rel="stylesheet" />
    <link href="https://assets-cdn.github.com/assets/github2-32bd1c1dfee77fb5e02738e6cd174a96ec7d5cd428ca633652d31df1a7a7ea3d.css" media="all" rel="stylesheet" />
    
    


    <meta http-equiv="x-pjax-version" content="d290348011fa70e235a15550e1954459">

      
  <meta name="description" content="vim-vividchalk - vividchalk.vim: a colorscheme strangely reminiscent of Vibrant Ink for a certain OS X editor">
  <meta name="go-import" content="github.com/tpope/vim-vividchalk git https://github.com/tpope/vim-vividchalk.git">

  <meta content="378" name="octolytics-dimension-user_id" /><meta content="tpope" name="octolytics-dimension-user_login" /><meta content="434332" name="octolytics-dimension-repository_id" /><meta content="tpope/vim-vividchalk" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="434332" name="octolytics-dimension-repository_network_root_id" /><meta content="tpope/vim-vividchalk" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/tpope/vim-vividchalk/commits/master.atom" rel="alternate" title="Recent Commits to vim-vividchalk:master" type="application/atom+xml">

  </head>


  <body class="logged_in  env-production macintosh vis-public page-blob">
    <a href="#start-of-content" tabindex="1" class="accessibility-aid js-skip-to-content">Skip to content</a>
    <div class="wrapper">
      
      
      
      


      <div class="header header-logged-in true" role="banner">
  <div class="container clearfix">

    <a class="header-logo-invertocat" href="https://github.com/" data-hotkey="g d" aria-label="Homepage" ga-data-click="Header, go to dashboard, icon:logo">
  <span class="mega-octicon octicon-mark-github"></span>
</a>


      <div class="site-search repo-scope js-site-search" role="search">
          <form accept-charset="UTF-8" action="/tpope/vim-vividchalk/search" class="js-site-search-form" data-global-search-url="/search" data-repo-search-url="/tpope/vim-vividchalk/search" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
  <input type="text"
    class="js-site-search-field is-clearable"
    data-hotkey="s"
    name="q"
    placeholder="Search"
    data-global-scope-placeholder="Search GitHub"
    data-repo-scope-placeholder="Search"
    tabindex="1"
    autocapitalize="off">
  <div class="scope-badge">This repository</div>
</form>
      </div>
      <ul class="header-nav left" role="navigation">
        <li class="header-nav-item explore">
          <a class="header-nav-link" href="/explore" data-ga-click="Header, go to explore, text:explore">Explore</a>
        </li>
          <li class="header-nav-item">
            <a class="header-nav-link" href="https://gist.github.com" data-ga-click="Header, go to gist, text:gist">Gist</a>
          </li>
          <li class="header-nav-item">
            <a class="header-nav-link" href="/blog" data-ga-click="Header, go to blog, text:blog">Blog</a>
          </li>
        <li class="header-nav-item">
          <a class="header-nav-link" href="https://help.github.com" data-ga-click="Header, go to help, text:help">Help</a>
        </li>
      </ul>

    
<ul class="header-nav user-nav right" id="user-links">
  <li class="header-nav-item dropdown js-menu-container">
    <a class="header-nav-link name" href="/tbarber350" data-ga-click="Header, go to profile, text:username">
      <img alt="Travis L Barber" class="avatar" data-user="2417311" height="20" src="https://avatars3.githubusercontent.com/u/2417311?v=3&amp;s=40" width="20" />
      <span class="css-truncate">
        <span class="css-truncate-target">tbarber350</span>
      </span>
    </a>
  </li>

  <li class="header-nav-item dropdown js-menu-container">
    <a class="header-nav-link js-menu-target tooltipped tooltipped-s" href="#" aria-label="Create new..." data-ga-click="Header, create new, icon:add">
      <span class="octicon octicon-plus"></span>
      <span class="dropdown-caret"></span>
    </a>

    <div class="dropdown-menu-content js-menu-content">
      
<ul class="dropdown-menu">
  <li>
    <a href="/new" data-ga-click="Header, create new repository, icon:repo"><span class="octicon octicon-repo"></span> New repository</a>
  </li>
  <li>
    <a href="/organizations/new" data-ga-click="Header, create new organization, icon:organization"><span class="octicon octicon-organization"></span> New organization</a>
  </li>


    <li class="dropdown-divider"></li>
    <li class="dropdown-header">
      <span title="tpope/vim-vividchalk">This repository</span>
    </li>
      <li>
        <a href="/tpope/vim-vividchalk/issues/new" data-ga-click="Header, create new issue, icon:issue"><span class="octicon octicon-issue-opened"></span> New issue</a>
      </li>
</ul>

    </div>
  </li>

  <li class="header-nav-item">
        <a href="/notifications" aria-label="You have unread notifications" class="header-nav-link notification-indicator tooltipped tooltipped-s" data-ga-click="Header, go to notifications, icon:unread" data-hotkey="g n">
        <span class="mail-status unread"></span>
        <span class="octicon octicon-inbox"></span>
</a>
  </li>

  <li class="header-nav-item">
    <a class="header-nav-link tooltipped tooltipped-s" href="/settings/profile" id="account_settings" aria-label="Settings" data-ga-click="Header, go to settings, icon:settings">
      <span class="octicon octicon-gear"></span>
    </a>
  </li>

  <li class="header-nav-item">
    <form accept-charset="UTF-8" action="/logout" class="logout-form" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="bPvqJpwHHhL6WKVFxrk9sEYP2KOA4pku2zqXo57BcCBYiNcmydMrqe0XpIG7r25gehXSMNYUpI/vSjmeChG0mQ==" /></div>
      <button class="header-nav-link sign-out-button tooltipped tooltipped-s" aria-label="Sign out" data-ga-click="Header, sign out, icon:logout">
        <span class="octicon octicon-sign-out"></span>
      </button>
</form>  </li>

</ul>


    
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
      <form accept-charset="UTF-8" action="/notifications/subscribe" class="js-social-container" data-autosubmit="true" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="d50xDxX3jDVeWt+VL90+HZ5MKYwnoEtr1hRSa+RuZODXlhsbIxoFi0gTTNTv8m5Ub9IjwJB5Xu3PQVEWLVrI4A==" /></div>    <input id="repository_id" name="repository_id" type="hidden" value="434332" />

      <div class="select-menu js-menu-container js-select-menu">
        <a class="social-count js-social-count" href="/tpope/vim-vividchalk/watchers">
          16
        </a>
        <a href="/tpope/vim-vividchalk/subscription"
          class="minibutton select-menu-button with-count js-menu-target" role="button" tabindex="0" aria-haspopup="true">
          <span class="js-select-button">
            <span class="octicon octicon-eye"></span>
            Watch
          </span>
        </a>

        <div class="select-menu-modal-holder">
          <div class="select-menu-modal subscription-menu-modal js-menu-content" aria-hidden="true">
            <div class="select-menu-header">
              <span class="select-menu-title">Notifications</span>
              <span class="octicon octicon-x js-menu-close" role="button" aria-label="Close"></span>
            </div>

            <div class="select-menu-list js-navigation-container" role="menu">

              <div class="select-menu-item js-navigation-item selected" role="menuitem" tabindex="0">
                <span class="select-menu-item-icon octicon octicon-check"></span>
                <div class="select-menu-item-text">
                  <input checked="checked" id="do_included" name="do" type="radio" value="included" />
                  <span class="select-menu-item-heading">Not watching</span>
                  <span class="description">Be notified when participating or @mentioned.</span>
                  <span class="js-select-button-text hidden-select-button-text">
                    <span class="octicon octicon-eye"></span>
                    Watch
                  </span>
                </div>
              </div>

              <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
                <span class="select-menu-item-icon octicon octicon octicon-check"></span>
                <div class="select-menu-item-text">
                  <input id="do_subscribed" name="do" type="radio" value="subscribed" />
                  <span class="select-menu-item-heading">Watching</span>
                  <span class="description">Be notified of all conversations.</span>
                  <span class="js-select-button-text hidden-select-button-text">
                    <span class="octicon octicon-eye"></span>
                    Unwatch
                  </span>
                </div>
              </div>

              <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
                <span class="select-menu-item-icon octicon octicon-check"></span>
                <div class="select-menu-item-text">
                  <input id="do_ignore" name="do" type="radio" value="ignore" />
                  <span class="select-menu-item-heading">Ignoring</span>
                  <span class="description">Never be notified.</span>
                  <span class="js-select-button-text hidden-select-button-text">
                    <span class="octicon octicon-mute"></span>
                    Stop ignoring
                  </span>
                </div>
              </div>

            </div>

          </div>
        </div>
      </div>
</form>

  </li>

  <li>
    
  <div class="js-toggler-container js-social-container starring-container ">

    <form accept-charset="UTF-8" action="/tpope/vim-vividchalk/unstar" class="js-toggler-form starred js-unstar-button" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="WXNX+tmvKi6qfh3le8CYI2V6GEZun3lkGD6xbXdCgOXpc8ngK9yom8+56B2NRvCxmYnwOZcJodSCWwQ+Fdm3Tg==" /></div>
      <button
        class="minibutton with-count js-toggler-target"
        aria-label="Unstar this repository" title="Unstar tpope/vim-vividchalk">
        <span class="octicon octicon-star"></span>
        Unstar
      </button>
        <a class="social-count js-social-count" href="/tpope/vim-vividchalk/stargazers">
          193
        </a>
</form>
    <form accept-charset="UTF-8" action="/tpope/vim-vividchalk/star" class="js-toggler-form unstarred js-star-button" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="4It3SIfYlaklmeT4yC6LltBLcbxbb5uOWjs3pCIFp4eBCnLJleWnA+8cpCCQSTNLYyR1joD/KnTPlkTsie13dw==" /></div>
      <button
        class="minibutton with-count js-toggler-target"
        aria-label="Star this repository" title="Star tpope/vim-vividchalk">
        <span class="octicon octicon-star"></span>
        Star
      </button>
        <a class="social-count js-social-count" href="/tpope/vim-vividchalk/stargazers">
          193
        </a>
</form>  </div>

  </li>

        <li>
          <a href="/tpope/vim-vividchalk/fork" class="minibutton with-count js-toggler-target tooltipped-n" title="Fork your own copy of tpope/vim-vividchalk to your account" aria-label="Fork your own copy of tpope/vim-vividchalk to your account" rel="nofollow" data-method="post">
            <span class="octicon octicon-repo-forked"></span>
            Fork
          </a>
          <a href="/tpope/vim-vividchalk/network" class="social-count">107</a>
        </li>

</ul>

        <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
          <span class="mega-octicon octicon-repo"></span>
          <span class="author"><a href="/tpope" class="url fn" itemprop="url" rel="author"><span itemprop="title">tpope</span></a></span><!--
       --><span class="path-divider">/</span><!--
       --><strong><a href="/tpope/vim-vividchalk" class="js-current-repository" data-pjax="#js-repo-pjax-container">vim-vividchalk</a></strong>

          <span class="page-context-loader">
            <img alt="" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
          </span>

        </h1>
      </div><!-- /.container -->
    </div><!-- /.repohead -->

    <div class="container">
      <div class="repository-with-sidebar repo-container new-discussion-timeline  ">
        <div class="repository-sidebar clearfix">
            
<nav class="sunken-menu repo-nav js-repo-nav js-sidenav-container-pjax js-octicon-loaders"
     role="navigation"
     data-pjax="#js-repo-pjax-container"
     data-issue-count-url="/tpope/vim-vividchalk/issues/counts">
  <ul class="sunken-menu-group">
    <li class="tooltipped tooltipped-w" aria-label="Code">
      <a href="/tpope/vim-vividchalk" aria-label="Code" class="selected js-selected-navigation-item sunken-menu-item" data-hotkey="g c" data-selected-links="repo_source repo_downloads repo_commits repo_releases repo_tags repo_branches /tpope/vim-vividchalk">
        <span class="octicon octicon-code"></span> <span class="full-word">Code</span>
        <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>    </li>

      <li class="tooltipped tooltipped-w" aria-label="Issues">
        <a href="/tpope/vim-vividchalk/issues" aria-label="Issues" class="js-selected-navigation-item sunken-menu-item" data-hotkey="g i" data-selected-links="repo_issues repo_labels repo_milestones /tpope/vim-vividchalk/issues">
          <span class="octicon octicon-issue-opened"></span> <span class="full-word">Issues</span>
          <span class="js-issue-replace-counter"></span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>      </li>

    <li class="tooltipped tooltipped-w" aria-label="Pull Requests">
      <a href="/tpope/vim-vividchalk/pulls" aria-label="Pull Requests" class="js-selected-navigation-item sunken-menu-item" data-hotkey="g p" data-selected-links="repo_pulls /tpope/vim-vividchalk/pulls">
          <span class="octicon octicon-git-pull-request"></span> <span class="full-word">Pull Requests</span>
          <span class="js-pull-replace-counter"></span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>    </li>


  </ul>
  <div class="sunken-menu-separator"></div>
  <ul class="sunken-menu-group">

    <li class="tooltipped tooltipped-w" aria-label="Pulse">
      <a href="/tpope/vim-vividchalk/pulse" aria-label="Pulse" class="js-selected-navigation-item sunken-menu-item" data-selected-links="pulse /tpope/vim-vividchalk/pulse">
        <span class="octicon octicon-pulse"></span> <span class="full-word">Pulse</span>
        <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>    </li>

    <li class="tooltipped tooltipped-w" aria-label="Graphs">
      <a href="/tpope/vim-vividchalk/graphs" aria-label="Graphs" class="js-selected-navigation-item sunken-menu-item" data-selected-links="repo_graphs repo_contributors /tpope/vim-vividchalk/graphs">
        <span class="octicon octicon-graph"></span> <span class="full-word">Graphs</span>
        <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/assets/spinners/octocat-spinner-32-e513294efa576953719e4e2de888dd9cf929b7d62ed8d05f25e731d02452ab6c.gif" width="16" />
</a>    </li>
  </ul>


</nav>

              <div class="only-with-full-nav">
                  
<div class="clone-url open"
  data-protocol-type="http"
  data-url="/users/set_protocol?protocol_selector=http&amp;protocol_type=clone">
  <h3><span class="text-emphasized">HTTPS</span> clone URL</h3>
  <div class="input-group js-zeroclipboard-container">
    <input type="text" class="input-mini input-monospace js-url-field js-zeroclipboard-target"
           value="https://github.com/tpope/vim-vividchalk.git" readonly="readonly">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard minibutton zeroclipboard-button" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>

  
<div class="clone-url "
  data-protocol-type="ssh"
  data-url="/users/set_protocol?protocol_selector=ssh&amp;protocol_type=clone">
  <h3><span class="text-emphasized">SSH</span> clone URL</h3>
  <div class="input-group js-zeroclipboard-container">
    <input type="text" class="input-mini input-monospace js-url-field js-zeroclipboard-target"
           value="git@github.com:tpope/vim-vividchalk.git" readonly="readonly">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard minibutton zeroclipboard-button" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>

  
<div class="clone-url "
  data-protocol-type="subversion"
  data-url="/users/set_protocol?protocol_selector=subversion&amp;protocol_type=clone">
  <h3><span class="text-emphasized">Subversion</span> checkout URL</h3>
  <div class="input-group js-zeroclipboard-container">
    <input type="text" class="input-mini input-monospace js-url-field js-zeroclipboard-target"
           value="https://github.com/tpope/vim-vividchalk" readonly="readonly">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard minibutton zeroclipboard-button" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>



<p class="clone-options">You can clone with
  <a href="#" class="js-clone-selector" data-protocol="http">HTTPS</a>, <a href="#" class="js-clone-selector" data-protocol="ssh">SSH</a>, or <a href="#" class="js-clone-selector" data-protocol="subversion">Subversion</a>.
  <a href="https://help.github.com/articles/which-remote-url-should-i-use" class="help tooltipped tooltipped-n" aria-label="Get help on which URL is right for you.">
    <span class="octicon octicon-question"></span>
  </a>
</p>

  <a href="http://mac.github.com" data-url="github-mac://openRepo/https://github.com/tpope/vim-vividchalk" class="minibutton sidebar-button js-conduit-rewrite-url" title="Save tpope/vim-vividchalk to your computer and use it in GitHub Desktop." aria-label="Save tpope/vim-vividchalk to your computer and use it in GitHub Desktop.">
    <span class="octicon octicon-device-desktop"></span>
    Clone in Desktop
  </a>


                <a href="/tpope/vim-vividchalk/archive/master.zip"
                   class="minibutton sidebar-button"
                   aria-label="Download the contents of tpope/vim-vividchalk as a zip file"
                   title="Download the contents of tpope/vim-vividchalk as a zip file"
                   rel="nofollow">
                  <span class="octicon octicon-cloud-download"></span>
                  Download ZIP
                </a>
              </div>
        </div><!-- /.repository-sidebar -->

        <div id="js-repo-pjax-container" class="repository-content context-loader-container" data-pjax-container>
          

<a href="/tpope/vim-vividchalk/blob/fd696065c7b27e8fca91907ba51151a887c36803/colors/vividchalk.vim" class="hidden js-permalink-shortcut" data-hotkey="y">Permalink</a>

<!-- blob contrib key: blob_contributors:v21:69b963534fe1d794994b7fd8455ba59e -->

<div class="file-navigation js-zeroclipboard-container">
  
<div class="select-menu js-menu-container js-select-menu left">
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
        <span class="octicon octicon-x js-menu-close" role="button" aria-label="Close"></span>
      </div>

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Filter branches/tags" id="context-commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" data-filter-placeholder="Filter branches/tags" class="js-select-menu-tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" data-filter-placeholder="Find a tag…" class="js-select-menu-tab">Tags</a>
            </li>
          </ul>
        </div>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <div class="select-menu-item js-navigation-item selected">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/tpope/vim-vividchalk/blob/master/colors/vividchalk.vim"
                 data-name="master"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="master">master</a>
            </div>
        </div>

          <div class="select-menu-no-results">Nothing to show</div>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/tpope/vim-vividchalk/tree/v2.0/colors/vividchalk.vim"
                 data-name="v2.0"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="v2.0">v2.0</a>
            </div>
        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div>

    </div>
  </div>
</div>

  <div class="button-group right">
    <a href="/tpope/vim-vividchalk/find/master"
          class="js-show-file-finder minibutton empty-icon tooltipped tooltipped-s"
          data-pjax
          data-hotkey="t"
          aria-label="Quickly jump between files">
      <span class="octicon octicon-list-unordered"></span>
    </a>
    <button aria-label="Copy file path to clipboard" class="js-zeroclipboard minibutton zeroclipboard-button" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
  </div>

  <div class="breadcrumb js-zeroclipboard-target">
    <span class='repo-root js-repo-root'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/tpope/vim-vividchalk" class="" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">vim-vividchalk</span></a></span></span><span class="separator">/</span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/tpope/vim-vividchalk/tree/master/colors" class="" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">colors</span></a></span><span class="separator">/</span><strong class="final-path">vividchalk.vim</strong>
  </div>
</div>


  <div class="commit file-history-tease">
    <div class="file-history-tease-header">
        <img alt="Joel Elkins" class="avatar" data-user="1231886" height="24" src="https://avatars3.githubusercontent.com/u/1231886?v=3&amp;s=48" width="24" />
        <span class="author"><a href="/jdelkins" rel="contributor">jdelkins</a></span>
        <time datetime="2012-03-03T11:25:03Z" is="relative-time">Mar 3, 2012</time>
        <div class="commit-title">
            <a href="/tpope/vim-vividchalk/commit/fd696065c7b27e8fca91907ba51151a887c36803" class="message" data-pjax="true" title="Change ColorColumn, CursorLine, and CursorColumn to use s:hibg

The colors were not being set on terminals.">Change ColorColumn, CursorLine, and CursorColumn to use s:hibg</a>
        </div>
    </div>

    <div class="participation">
      <p class="quickstat">
        <a href="#blob_contributors_box" rel="facebox">
          <strong>2</strong>
           contributors
        </a>
      </p>
          <a class="avatar-link tooltipped tooltipped-s" aria-label="tpope" href="/tpope/vim-vividchalk/commits/master/colors/vividchalk.vim?author=tpope"><img alt="Tim Pope" class="avatar" data-user="378" height="20" src="https://avatars0.githubusercontent.com/u/378?v=3&amp;s=40" width="20" /></a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="jdelkins" href="/tpope/vim-vividchalk/commits/master/colors/vividchalk.vim?author=jdelkins"><img alt="Joel Elkins" class="avatar" data-user="1231886" height="20" src="https://avatars1.githubusercontent.com/u/1231886?v=3&amp;s=40" width="20" /></a>


    </div>
    <div id="blob_contributors_box" style="display:none">
      <h2 class="facebox-header">Users who have contributed to this file</h2>
      <ul class="facebox-user-list">
          <li class="facebox-user-list-item">
            <img alt="Tim Pope" data-user="378" height="24" src="https://avatars2.githubusercontent.com/u/378?v=3&amp;s=48" width="24" />
            <a href="/tpope">tpope</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="Joel Elkins" data-user="1231886" height="24" src="https://avatars3.githubusercontent.com/u/1231886?v=3&amp;s=48" width="24" />
            <a href="/jdelkins">jdelkins</a>
          </li>
      </ul>
    </div>
  </div>

<div class="file-box">
  <div class="file">
    <div class="meta clearfix">
      <div class="info file-name">
          <span>193 lines (176 sloc)</span>
          <span class="meta-divider"></span>
        <span>6.923 kb</span>
      </div>
      <div class="actions">
        <div class="button-group">
          <a href="/tpope/vim-vividchalk/raw/master/colors/vividchalk.vim" class="minibutton " id="raw-url">Raw</a>
            <a href="/tpope/vim-vividchalk/blame/master/colors/vividchalk.vim" class="minibutton js-update-url-with-hash">Blame</a>
          <a href="/tpope/vim-vividchalk/commits/master/colors/vividchalk.vim" class="minibutton " rel="nofollow">History</a>
        </div><!-- /.button-group -->

          <a class="octicon-button tooltipped tooltipped-nw js-conduit-openfile-check"
             href="http://mac.github.com"
             data-url="github-mac://openRepo/https://github.com/tpope/vim-vividchalk?branch=master&amp;filepath=colors%2Fvividchalk.vim"
             aria-label="Open this file in GitHub for Mac"
             data-failed-title="Your version of GitHub for Mac is too old to open this file. Try checking for updates.">
              <span class="octicon octicon-device-desktop"></span>
          </a>

              <a class="octicon-button tooltipped tooltipped-n js-update-url-with-hash"
                 aria-label="Clicking this button will fork this project so you can edit the file"
                 href="/tpope/vim-vividchalk/edit/master/colors/vividchalk.vim"
                 data-method="post" rel="nofollow"><span class="octicon octicon-pencil"></span></a>

            <a class="octicon-button danger tooltipped tooltipped-s"
               href="/tpope/vim-vividchalk/delete/master/colors/vividchalk.vim"
               aria-label="Fork this project and delete file"
               data-method="post" data-test-id="delete-blob-file" rel="nofollow">
          <span class="octicon octicon-trashcan"></span>
        </a>
      </div><!-- /.actions -->
    </div>
    

  <div class="blob-wrapper data type-viml">
      <table class="highlight tab-size-8 js-file-line-container">
      <tr>
        <td id="L1" class="blob-num js-line-number" data-line-number="1"></td>
        <td id="LC1" class="blob-code js-file-line"><span class="pl-c">&quot; Vim color scheme</span></td>
      </tr>
      <tr>
        <td id="L2" class="blob-num js-line-number" data-line-number="2"></td>
        <td id="LC2" class="blob-code js-file-line"><span class="pl-c">&quot; Name:         vividchalk.vim</span></td>
      </tr>
      <tr>
        <td id="L3" class="blob-num js-line-number" data-line-number="3"></td>
        <td id="LC3" class="blob-code js-file-line"><span class="pl-c">&quot; Author:       Tim Pope &lt;vimNOSPAM@tpope.info&gt;</span></td>
      </tr>
      <tr>
        <td id="L4" class="blob-num js-line-number" data-line-number="4"></td>
        <td id="LC4" class="blob-code js-file-line"><span class="pl-c">&quot; Version:      2.0</span></td>
      </tr>
      <tr>
        <td id="L5" class="blob-num js-line-number" data-line-number="5"></td>
        <td id="LC5" class="blob-code js-file-line"><span class="pl-c">&quot; GetLatestVimScripts: 1891 1 :AutoInstall: vividchalk.vim</span></td>
      </tr>
      <tr>
        <td id="L6" class="blob-num js-line-number" data-line-number="6"></td>
        <td id="LC6" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L7" class="blob-num js-line-number" data-line-number="7"></td>
        <td id="LC7" class="blob-code js-file-line"><span class="pl-c">&quot; Based on the Vibrank Ink theme for TextMate</span></td>
      </tr>
      <tr>
        <td id="L8" class="blob-num js-line-number" data-line-number="8"></td>
        <td id="LC8" class="blob-code js-file-line"><span class="pl-c">&quot; Distributable under the same terms as Vim itself (see :help license)</span></td>
      </tr>
      <tr>
        <td id="L9" class="blob-num js-line-number" data-line-number="9"></td>
        <td id="LC9" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L10" class="blob-num js-line-number" data-line-number="10"></td>
        <td id="LC10" class="blob-code js-file-line"><span class="pl-k">if</span> <span class="pl-s3">has</span>(<span class="pl-s1">&quot;gui_running&quot;</span>)</td>
      </tr>
      <tr>
        <td id="L11" class="blob-num js-line-number" data-line-number="11"></td>
        <td id="LC11" class="blob-code js-file-line">    <span class="pl-s3">set</span> background=dark</td>
      </tr>
      <tr>
        <td id="L12" class="blob-num js-line-number" data-line-number="12"></td>
        <td id="LC12" class="blob-code js-file-line"><span class="pl-k">endif</span></td>
      </tr>
      <tr>
        <td id="L13" class="blob-num js-line-number" data-line-number="13"></td>
        <td id="LC13" class="blob-code js-file-line">hi clear</td>
      </tr>
      <tr>
        <td id="L14" class="blob-num js-line-number" data-line-number="14"></td>
        <td id="LC14" class="blob-code js-file-line"><span class="pl-k">if</span> <span class="pl-s3">exists</span>(<span class="pl-s1">&quot;syntax_on&quot;</span>)</td>
      </tr>
      <tr>
        <td id="L15" class="blob-num js-line-number" data-line-number="15"></td>
        <td id="LC15" class="blob-code js-file-line">   syntax reset</td>
      </tr>
      <tr>
        <td id="L16" class="blob-num js-line-number" data-line-number="16"></td>
        <td id="LC16" class="blob-code js-file-line"><span class="pl-k">endif</span></td>
      </tr>
      <tr>
        <td id="L17" class="blob-num js-line-number" data-line-number="17"></td>
        <td id="LC17" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L18" class="blob-num js-line-number" data-line-number="18"></td>
        <td id="LC18" class="blob-code js-file-line"><span class="pl-s3">let</span> colors_name = <span class="pl-s1">&quot;vividchalk&quot;</span></td>
      </tr>
      <tr>
        <td id="L19" class="blob-num js-line-number" data-line-number="19"></td>
        <td id="LC19" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L20" class="blob-num js-line-number" data-line-number="20"></td>
        <td id="LC20" class="blob-code js-file-line"><span class="pl-c">&quot; First two functions adapted from inkpot.vim</span></td>
      </tr>
      <tr>
        <td id="L21" class="blob-num js-line-number" data-line-number="21"></td>
        <td id="LC21" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L22" class="blob-num js-line-number" data-line-number="22"></td>
        <td id="LC22" class="blob-code js-file-line"><span class="pl-c">&quot; map a urxvt cube number to an xterm-256 cube number</span></td>
      </tr>
      <tr>
        <td id="L23" class="blob-num js-line-number" data-line-number="23"></td>
        <td id="LC23" class="blob-code js-file-line"><span class="pl-s">fun</span>! <span class="pl-s3">s:M</span>(a)</td>
      </tr>
      <tr>
        <td id="L24" class="blob-num js-line-number" data-line-number="24"></td>
        <td id="LC24" class="blob-code js-file-line">    <span class="pl-k">return</span> <span class="pl-s3">strpart</span>(<span class="pl-s1">&quot;0245&quot;</span>, <span class="pl-vo">a:a</span>, <span class="pl-c1">1</span>) + <span class="pl-c1">0</span></td>
      </tr>
      <tr>
        <td id="L25" class="blob-num js-line-number" data-line-number="25"></td>
        <td id="LC25" class="blob-code js-file-line"><span class="pl-s">endfun</span></td>
      </tr>
      <tr>
        <td id="L26" class="blob-num js-line-number" data-line-number="26"></td>
        <td id="LC26" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L27" class="blob-num js-line-number" data-line-number="27"></td>
        <td id="LC27" class="blob-code js-file-line"><span class="pl-c">&quot; map a urxvt colour to an xterm-256 colour</span></td>
      </tr>
      <tr>
        <td id="L28" class="blob-num js-line-number" data-line-number="28"></td>
        <td id="LC28" class="blob-code js-file-line"><span class="pl-s">fun</span>! <span class="pl-s3">s:X</span>(a)</td>
      </tr>
      <tr>
        <td id="L29" class="blob-num js-line-number" data-line-number="29"></td>
        <td id="LC29" class="blob-code js-file-line">    <span class="pl-k">if</span> <span class="pl-vo">&amp;t_Co</span> <span class="pl-s">==</span> <span class="pl-c1">88</span></td>
      </tr>
      <tr>
        <td id="L30" class="blob-num js-line-number" data-line-number="30"></td>
        <td id="LC30" class="blob-code js-file-line">        <span class="pl-k">return</span> <span class="pl-vo">a:a</span></td>
      </tr>
      <tr>
        <td id="L31" class="blob-num js-line-number" data-line-number="31"></td>
        <td id="LC31" class="blob-code js-file-line">    <span class="pl-k">else</span></td>
      </tr>
      <tr>
        <td id="L32" class="blob-num js-line-number" data-line-number="32"></td>
        <td id="LC32" class="blob-code js-file-line">        <span class="pl-k">if</span> <span class="pl-vo">a:a</span> <span class="pl-s">==</span> <span class="pl-c1">8</span></td>
      </tr>
      <tr>
        <td id="L33" class="blob-num js-line-number" data-line-number="33"></td>
        <td id="LC33" class="blob-code js-file-line">            <span class="pl-k">return</span> <span class="pl-c1">237</span></td>
      </tr>
      <tr>
        <td id="L34" class="blob-num js-line-number" data-line-number="34"></td>
        <td id="LC34" class="blob-code js-file-line">        <span class="pl-k">elseif</span> <span class="pl-vo">a:a</span> &lt; <span class="pl-c1">16</span></td>
      </tr>
      <tr>
        <td id="L35" class="blob-num js-line-number" data-line-number="35"></td>
        <td id="LC35" class="blob-code js-file-line">            <span class="pl-k">return</span> <span class="pl-vo">a:a</span></td>
      </tr>
      <tr>
        <td id="L36" class="blob-num js-line-number" data-line-number="36"></td>
        <td id="LC36" class="blob-code js-file-line">        <span class="pl-k">elseif</span> <span class="pl-vo">a:a</span> &gt; <span class="pl-c1">79</span></td>
      </tr>
      <tr>
        <td id="L37" class="blob-num js-line-number" data-line-number="37"></td>
        <td id="LC37" class="blob-code js-file-line">            <span class="pl-k">return</span> <span class="pl-c1">232</span> + (<span class="pl-c1">3</span> <span class="pl-s">*</span> (<span class="pl-vo">a:a</span> - <span class="pl-c1">80</span>))</td>
      </tr>
      <tr>
        <td id="L38" class="blob-num js-line-number" data-line-number="38"></td>
        <td id="LC38" class="blob-code js-file-line">        <span class="pl-k">else</span></td>
      </tr>
      <tr>
        <td id="L39" class="blob-num js-line-number" data-line-number="39"></td>
        <td id="LC39" class="blob-code js-file-line">            <span class="pl-s3">let</span> <span class="pl-vo">l:b</span> = <span class="pl-vo">a:a</span> - <span class="pl-c1">16</span></td>
      </tr>
      <tr>
        <td id="L40" class="blob-num js-line-number" data-line-number="40"></td>
        <td id="LC40" class="blob-code js-file-line">            <span class="pl-s3">let</span> <span class="pl-vo">l:x</span> = <span class="pl-vo">l:b</span> <span class="pl-s">%</span> <span class="pl-c1">4</span></td>
      </tr>
      <tr>
        <td id="L41" class="blob-num js-line-number" data-line-number="41"></td>
        <td id="LC41" class="blob-code js-file-line">            <span class="pl-s3">let</span> <span class="pl-vo">l:y</span> = (<span class="pl-vo">l:b</span> / <span class="pl-c1">4</span>) <span class="pl-s">%</span> <span class="pl-c1">4</span></td>
      </tr>
      <tr>
        <td id="L42" class="blob-num js-line-number" data-line-number="42"></td>
        <td id="LC42" class="blob-code js-file-line">            <span class="pl-s3">let</span> <span class="pl-vo">l:z</span> = (<span class="pl-vo">l:b</span> / <span class="pl-c1">16</span>)</td>
      </tr>
      <tr>
        <td id="L43" class="blob-num js-line-number" data-line-number="43"></td>
        <td id="LC43" class="blob-code js-file-line">            <span class="pl-k">return</span> <span class="pl-c1">16</span> + <span class="pl-s3">s:M</span>(<span class="pl-vo">l:x</span>) + (<span class="pl-c1">6</span> <span class="pl-s">*</span> <span class="pl-s3">s:M</span>(<span class="pl-vo">l:y</span>)) + (<span class="pl-c1">36</span> <span class="pl-s">*</span> <span class="pl-s3">s:M</span>(<span class="pl-vo">l:z</span>))</td>
      </tr>
      <tr>
        <td id="L44" class="blob-num js-line-number" data-line-number="44"></td>
        <td id="LC44" class="blob-code js-file-line">        <span class="pl-k">endif</span></td>
      </tr>
      <tr>
        <td id="L45" class="blob-num js-line-number" data-line-number="45"></td>
        <td id="LC45" class="blob-code js-file-line">    <span class="pl-k">endif</span></td>
      </tr>
      <tr>
        <td id="L46" class="blob-num js-line-number" data-line-number="46"></td>
        <td id="LC46" class="blob-code js-file-line"><span class="pl-s">endfun</span></td>
      </tr>
      <tr>
        <td id="L47" class="blob-num js-line-number" data-line-number="47"></td>
        <td id="LC47" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L48" class="blob-num js-line-number" data-line-number="48"></td>
        <td id="LC48" class="blob-code js-file-line"><span class="pl-s">function</span>! <span class="pl-en">E2T</span>(a)</td>
      </tr>
      <tr>
        <td id="L49" class="blob-num js-line-number" data-line-number="49"></td>
        <td id="LC49" class="blob-code js-file-line">    <span class="pl-k">return</span> <span class="pl-s3">s:X</span>(<span class="pl-vo">a:a</span>)</td>
      </tr>
      <tr>
        <td id="L50" class="blob-num js-line-number" data-line-number="50"></td>
        <td id="LC50" class="blob-code js-file-line"><span class="pl-s">endfunction</span></td>
      </tr>
      <tr>
        <td id="L51" class="blob-num js-line-number" data-line-number="51"></td>
        <td id="LC51" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L52" class="blob-num js-line-number" data-line-number="52"></td>
        <td id="LC52" class="blob-code js-file-line"><span class="pl-s">function</span>! <span class="pl-en">s:choose</span>(mediocre,good)</td>
      </tr>
      <tr>
        <td id="L53" class="blob-num js-line-number" data-line-number="53"></td>
        <td id="LC53" class="blob-code js-file-line">    <span class="pl-k">if</span> <span class="pl-vo">&amp;t_Co</span> <span class="pl-s">!=</span> <span class="pl-c1">88</span> <span class="pl-s">&amp;&amp;</span> <span class="pl-vo">&amp;t_Co</span> <span class="pl-s">!=</span> <span class="pl-c1">256</span></td>
      </tr>
      <tr>
        <td id="L54" class="blob-num js-line-number" data-line-number="54"></td>
        <td id="LC54" class="blob-code js-file-line">        <span class="pl-k">return</span> <span class="pl-vo">a:mediocre</span></td>
      </tr>
      <tr>
        <td id="L55" class="blob-num js-line-number" data-line-number="55"></td>
        <td id="LC55" class="blob-code js-file-line">    <span class="pl-k">else</span></td>
      </tr>
      <tr>
        <td id="L56" class="blob-num js-line-number" data-line-number="56"></td>
        <td id="LC56" class="blob-code js-file-line">        <span class="pl-k">return</span> <span class="pl-s3">s:X</span>(<span class="pl-vo">a:good</span>)</td>
      </tr>
      <tr>
        <td id="L57" class="blob-num js-line-number" data-line-number="57"></td>
        <td id="LC57" class="blob-code js-file-line">    <span class="pl-k">endif</span></td>
      </tr>
      <tr>
        <td id="L58" class="blob-num js-line-number" data-line-number="58"></td>
        <td id="LC58" class="blob-code js-file-line"><span class="pl-s">endfunction</span></td>
      </tr>
      <tr>
        <td id="L59" class="blob-num js-line-number" data-line-number="59"></td>
        <td id="LC59" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L60" class="blob-num js-line-number" data-line-number="60"></td>
        <td id="LC60" class="blob-code js-file-line"><span class="pl-s">function</span>! <span class="pl-en">s:hifg</span>(group,guifg,first,second,<span class="pl-s">...</span>)</td>
      </tr>
      <tr>
        <td id="L61" class="blob-num js-line-number" data-line-number="61"></td>
        <td id="LC61" class="blob-code js-file-line">    <span class="pl-k">if</span> <span class="pl-vo">a:0</span> <span class="pl-s">&amp;&amp;</span> <span class="pl-vo">&amp;t_Co</span> <span class="pl-s">==</span> <span class="pl-c1">256</span></td>
      </tr>
      <tr>
        <td id="L62" class="blob-num js-line-number" data-line-number="62"></td>
        <td id="LC62" class="blob-code js-file-line">        <span class="pl-s3">let</span> ctermfg = <span class="pl-vo">a:1</span></td>
      </tr>
      <tr>
        <td id="L63" class="blob-num js-line-number" data-line-number="63"></td>
        <td id="LC63" class="blob-code js-file-line">    <span class="pl-k">else</span></td>
      </tr>
      <tr>
        <td id="L64" class="blob-num js-line-number" data-line-number="64"></td>
        <td id="LC64" class="blob-code js-file-line">        <span class="pl-s3">let</span> ctermfg = <span class="pl-s3">s:choose</span>(<span class="pl-vo">a:first</span>,<span class="pl-vo">a:second</span>)</td>
      </tr>
      <tr>
        <td id="L65" class="blob-num js-line-number" data-line-number="65"></td>
        <td id="LC65" class="blob-code js-file-line">    <span class="pl-k">endif</span></td>
      </tr>
      <tr>
        <td id="L66" class="blob-num js-line-number" data-line-number="66"></td>
        <td id="LC66" class="blob-code js-file-line">    <span class="pl-s3">exe</span> <span class="pl-s1">&quot;highlight &quot;</span><span class="pl-s">.</span><span class="pl-vo">a:group</span><span class="pl-s">.</span><span class="pl-s1">&quot; guifg=&quot;</span><span class="pl-s">.</span><span class="pl-vo">a:guifg</span><span class="pl-s">.</span><span class="pl-s1">&quot; ctermfg=&quot;</span><span class="pl-s">.</span>ctermfg</td>
      </tr>
      <tr>
        <td id="L67" class="blob-num js-line-number" data-line-number="67"></td>
        <td id="LC67" class="blob-code js-file-line"><span class="pl-s">endfunction</span></td>
      </tr>
      <tr>
        <td id="L68" class="blob-num js-line-number" data-line-number="68"></td>
        <td id="LC68" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L69" class="blob-num js-line-number" data-line-number="69"></td>
        <td id="LC69" class="blob-code js-file-line"><span class="pl-s">function</span>! <span class="pl-en">s:hibg</span>(group,guibg,first,second)</td>
      </tr>
      <tr>
        <td id="L70" class="blob-num js-line-number" data-line-number="70"></td>
        <td id="LC70" class="blob-code js-file-line">    <span class="pl-s3">let</span> ctermbg = <span class="pl-s3">s:choose</span>(<span class="pl-vo">a:first</span>,<span class="pl-vo">a:second</span>)</td>
      </tr>
      <tr>
        <td id="L71" class="blob-num js-line-number" data-line-number="71"></td>
        <td id="LC71" class="blob-code js-file-line">    <span class="pl-s3">exe</span> <span class="pl-s1">&quot;highlight &quot;</span><span class="pl-s">.</span><span class="pl-vo">a:group</span><span class="pl-s">.</span><span class="pl-s1">&quot; guibg=&quot;</span><span class="pl-s">.</span><span class="pl-vo">a:guibg</span><span class="pl-s">.</span><span class="pl-s1">&quot; ctermbg=&quot;</span><span class="pl-s">.</span>ctermbg</td>
      </tr>
      <tr>
        <td id="L72" class="blob-num js-line-number" data-line-number="72"></td>
        <td id="LC72" class="blob-code js-file-line"><span class="pl-s">endfunction</span></td>
      </tr>
      <tr>
        <td id="L73" class="blob-num js-line-number" data-line-number="73"></td>
        <td id="LC73" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L74" class="blob-num js-line-number" data-line-number="74"></td>
        <td id="LC74" class="blob-code js-file-line">hi link railsMethod         PreProc</td>
      </tr>
      <tr>
        <td id="L75" class="blob-num js-line-number" data-line-number="75"></td>
        <td id="LC75" class="blob-code js-file-line">hi link rubyDefine          Keyword</td>
      </tr>
      <tr>
        <td id="L76" class="blob-num js-line-number" data-line-number="76"></td>
        <td id="LC76" class="blob-code js-file-line">hi link rubySymbol          Constant</td>
      </tr>
      <tr>
        <td id="L77" class="blob-num js-line-number" data-line-number="77"></td>
        <td id="LC77" class="blob-code js-file-line">hi link rubyAccess          rubyMethod</td>
      </tr>
      <tr>
        <td id="L78" class="blob-num js-line-number" data-line-number="78"></td>
        <td id="LC78" class="blob-code js-file-line">hi link rubyAttribute       rubyMethod</td>
      </tr>
      <tr>
        <td id="L79" class="blob-num js-line-number" data-line-number="79"></td>
        <td id="LC79" class="blob-code js-file-line">hi link rubyEval            rubyMethod</td>
      </tr>
      <tr>
        <td id="L80" class="blob-num js-line-number" data-line-number="80"></td>
        <td id="LC80" class="blob-code js-file-line">hi link rubyException       rubyMethod</td>
      </tr>
      <tr>
        <td id="L81" class="blob-num js-line-number" data-line-number="81"></td>
        <td id="LC81" class="blob-code js-file-line">hi link rubyInclude         rubyMethod</td>
      </tr>
      <tr>
        <td id="L82" class="blob-num js-line-number" data-line-number="82"></td>
        <td id="LC82" class="blob-code js-file-line">hi link rubyStringDelimiter rubyString</td>
      </tr>
      <tr>
        <td id="L83" class="blob-num js-line-number" data-line-number="83"></td>
        <td id="LC83" class="blob-code js-file-line">hi link rubyRegexp          Regexp</td>
      </tr>
      <tr>
        <td id="L84" class="blob-num js-line-number" data-line-number="84"></td>
        <td id="LC84" class="blob-code js-file-line">hi link rubyRegexpDelimiter rubyRegexp</td>
      </tr>
      <tr>
        <td id="L85" class="blob-num js-line-number" data-line-number="85"></td>
        <td id="LC85" class="blob-code js-file-line"><span class="pl-c">&quot;hi link rubyConstant        Variable</span></td>
      </tr>
      <tr>
        <td id="L86" class="blob-num js-line-number" data-line-number="86"></td>
        <td id="LC86" class="blob-code js-file-line"><span class="pl-c">&quot;hi link rubyGlobalVariable  Variable</span></td>
      </tr>
      <tr>
        <td id="L87" class="blob-num js-line-number" data-line-number="87"></td>
        <td id="LC87" class="blob-code js-file-line"><span class="pl-c">&quot;hi link rubyClassVariable   Variable</span></td>
      </tr>
      <tr>
        <td id="L88" class="blob-num js-line-number" data-line-number="88"></td>
        <td id="LC88" class="blob-code js-file-line"><span class="pl-c">&quot;hi link rubyInstanceVariable Variable</span></td>
      </tr>
      <tr>
        <td id="L89" class="blob-num js-line-number" data-line-number="89"></td>
        <td id="LC89" class="blob-code js-file-line">hi link javascriptRegexpString  Regexp</td>
      </tr>
      <tr>
        <td id="L90" class="blob-num js-line-number" data-line-number="90"></td>
        <td id="LC90" class="blob-code js-file-line">hi link javascriptNumber        Number</td>
      </tr>
      <tr>
        <td id="L91" class="blob-num js-line-number" data-line-number="91"></td>
        <td id="LC91" class="blob-code js-file-line">hi link javascriptNull          Constant</td>
      </tr>
      <tr>
        <td id="L92" class="blob-num js-line-number" data-line-number="92"></td>
        <td id="LC92" class="blob-code js-file-line">highlight link diffAdded        String</td>
      </tr>
      <tr>
        <td id="L93" class="blob-num js-line-number" data-line-number="93"></td>
        <td id="LC93" class="blob-code js-file-line">highlight link diffRemoved      Statement</td>
      </tr>
      <tr>
        <td id="L94" class="blob-num js-line-number" data-line-number="94"></td>
        <td id="LC94" class="blob-code js-file-line">highlight link diffLine         PreProc</td>
      </tr>
      <tr>
        <td id="L95" class="blob-num js-line-number" data-line-number="95"></td>
        <td id="LC95" class="blob-code js-file-line">highlight link diffSubname      Comment</td>
      </tr>
      <tr>
        <td id="L96" class="blob-num js-line-number" data-line-number="96"></td>
        <td id="LC96" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L97" class="blob-num js-line-number" data-line-number="97"></td>
        <td id="LC97" class="blob-code js-file-line">call <span class="pl-s3">s:hifg</span>(<span class="pl-s1">&quot;Normal&quot;</span>,<span class="pl-s1">&quot;#EEEEEE&quot;</span>,<span class="pl-s1">&quot;White&quot;</span>,<span class="pl-c1">87</span>)</td>
      </tr>
      <tr>
        <td id="L98" class="blob-num js-line-number" data-line-number="98"></td>
        <td id="LC98" class="blob-code js-file-line"><span class="pl-k">if</span> <span class="pl-vo">&amp;background</span> <span class="pl-s">==</span> <span class="pl-s1">&quot;light&quot;</span> <span class="pl-s">||</span> <span class="pl-s3">has</span>(<span class="pl-s1">&quot;gui_running&quot;</span>)</td>
      </tr>
      <tr>
        <td id="L99" class="blob-num js-line-number" data-line-number="99"></td>
        <td id="LC99" class="blob-code js-file-line">    hi Normal guibg=Black ctermbg=Black</td>
      </tr>
      <tr>
        <td id="L100" class="blob-num js-line-number" data-line-number="100"></td>
        <td id="LC100" class="blob-code js-file-line"><span class="pl-k">else</span></td>
      </tr>
      <tr>
        <td id="L101" class="blob-num js-line-number" data-line-number="101"></td>
        <td id="LC101" class="blob-code js-file-line">    hi Normal guibg=Black ctermbg=NONE</td>
      </tr>
      <tr>
        <td id="L102" class="blob-num js-line-number" data-line-number="102"></td>
        <td id="LC102" class="blob-code js-file-line"><span class="pl-k">endif</span></td>
      </tr>
      <tr>
        <td id="L103" class="blob-num js-line-number" data-line-number="103"></td>
        <td id="LC103" class="blob-code js-file-line">highlight StatusLine    guifg=Black   guibg=<span class="pl-c1">#aabbee</span> gui=bold ctermfg=Black ctermbg=White  cterm=bold</td>
      </tr>
      <tr>
        <td id="L104" class="blob-num js-line-number" data-line-number="104"></td>
        <td id="LC104" class="blob-code js-file-line">highlight StatusLineNC  guifg=<span class="pl-c1">#444444</span> guibg=<span class="pl-c1">#aaaaaa</span> gui=none ctermfg=Black ctermbg=Grey   cterm=none</td>
      </tr>
      <tr>
        <td id="L105" class="blob-num js-line-number" data-line-number="105"></td>
        <td id="LC105" class="blob-code js-file-line"><span class="pl-c">&quot;if &amp;t_Co == 256</span></td>
      </tr>
      <tr>
        <td id="L106" class="blob-num js-line-number" data-line-number="106"></td>
        <td id="LC106" class="blob-code js-file-line"><span class="pl-c">    &quot;highlight StatusLine ctermbg=117</span></td>
      </tr>
      <tr>
        <td id="L107" class="blob-num js-line-number" data-line-number="107"></td>
        <td id="LC107" class="blob-code js-file-line"><span class="pl-c">&quot;else</span></td>
      </tr>
      <tr>
        <td id="L108" class="blob-num js-line-number" data-line-number="108"></td>
        <td id="LC108" class="blob-code js-file-line"><span class="pl-c">    &quot;highlight StatusLine ctermbg=43</span></td>
      </tr>
      <tr>
        <td id="L109" class="blob-num js-line-number" data-line-number="109"></td>
        <td id="LC109" class="blob-code js-file-line"><span class="pl-c">&quot;endif</span></td>
      </tr>
      <tr>
        <td id="L110" class="blob-num js-line-number" data-line-number="110"></td>
        <td id="LC110" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L111" class="blob-num js-line-number" data-line-number="111"></td>
        <td id="LC111" class="blob-code js-file-line">highlight Ignore        ctermfg=Black</td>
      </tr>
      <tr>
        <td id="L112" class="blob-num js-line-number" data-line-number="112"></td>
        <td id="LC112" class="blob-code js-file-line">highlight WildMenu      guifg=Black   guibg=<span class="pl-c1">#ffff00</span> gui=bold ctermfg=Black ctermbg=Yellow cterm=bold</td>
      </tr>
      <tr>
        <td id="L113" class="blob-num js-line-number" data-line-number="113"></td>
        <td id="LC113" class="blob-code js-file-line">highlight Cursor        guifg=Black guibg=White ctermfg=Black ctermbg=White</td>
      </tr>
      <tr>
        <td id="L114" class="blob-num js-line-number" data-line-number="114"></td>
        <td id="LC114" class="blob-code js-file-line">call <span class="pl-s3">s:hibg</span>(<span class="pl-s1">&quot;ColorColumn&quot;</span>,<span class="pl-s1">&quot;#333333&quot;</span>,<span class="pl-s1">&quot;DarkGrey&quot;</span>,<span class="pl-c1">81</span>)</td>
      </tr>
      <tr>
        <td id="L115" class="blob-num js-line-number" data-line-number="115"></td>
        <td id="LC115" class="blob-code js-file-line">call <span class="pl-s3">s:hibg</span>(<span class="pl-s1">&quot;CursorLine&quot;</span>,<span class="pl-s1">&quot;#333333&quot;</span>,<span class="pl-s1">&quot;DarkGrey&quot;</span>,<span class="pl-c1">81</span>)</td>
      </tr>
      <tr>
        <td id="L116" class="blob-num js-line-number" data-line-number="116"></td>
        <td id="LC116" class="blob-code js-file-line">call <span class="pl-s3">s:hibg</span>(<span class="pl-s1">&quot;CursorColumn&quot;</span>,<span class="pl-s1">&quot;#333333&quot;</span>,<span class="pl-s1">&quot;DarkGrey&quot;</span>,<span class="pl-c1">81</span>)</td>
      </tr>
      <tr>
        <td id="L117" class="blob-num js-line-number" data-line-number="117"></td>
        <td id="LC117" class="blob-code js-file-line">highlight NonText       guifg=<span class="pl-c1">#404040</span> ctermfg=<span class="pl-c1">8</span></td>
      </tr>
      <tr>
        <td id="L118" class="blob-num js-line-number" data-line-number="118"></td>
        <td id="LC118" class="blob-code js-file-line">highlight SpecialKey    guifg=<span class="pl-c1">#404040</span> ctermfg=<span class="pl-c1">8</span></td>
      </tr>
      <tr>
        <td id="L119" class="blob-num js-line-number" data-line-number="119"></td>
        <td id="LC119" class="blob-code js-file-line">highlight Directory     none</td>
      </tr>
      <tr>
        <td id="L120" class="blob-num js-line-number" data-line-number="120"></td>
        <td id="LC120" class="blob-code js-file-line">high link Directory     Identifier</td>
      </tr>
      <tr>
        <td id="L121" class="blob-num js-line-number" data-line-number="121"></td>
        <td id="LC121" class="blob-code js-file-line">highlight ErrorMsg      guibg=Red ctermbg=DarkRed guifg=NONE ctermfg=NONE</td>
      </tr>
      <tr>
        <td id="L122" class="blob-num js-line-number" data-line-number="122"></td>
        <td id="LC122" class="blob-code js-file-line">highlight Search        guifg=NONE ctermfg=NONE gui=none cterm=none</td>
      </tr>
      <tr>
        <td id="L123" class="blob-num js-line-number" data-line-number="123"></td>
        <td id="LC123" class="blob-code js-file-line">call <span class="pl-s3">s:hibg</span>(<span class="pl-s1">&quot;Search&quot;</span>    ,<span class="pl-s1">&quot;#555555&quot;</span>,<span class="pl-s1">&quot;DarkBlue&quot;</span>,<span class="pl-c1">81</span>)</td>
      </tr>
      <tr>
        <td id="L124" class="blob-num js-line-number" data-line-number="124"></td>
        <td id="LC124" class="blob-code js-file-line">highlight IncSearch     guifg=White guibg=Black ctermfg=White ctermbg=Black</td>
      </tr>
      <tr>
        <td id="L125" class="blob-num js-line-number" data-line-number="125"></td>
        <td id="LC125" class="blob-code js-file-line">highlight MoreMsg       guifg=#<span class="pl-c1">00</span>AA<span class="pl-c1">00</span> ctermfg=Green</td>
      </tr>
      <tr>
        <td id="L126" class="blob-num js-line-number" data-line-number="126"></td>
        <td id="LC126" class="blob-code js-file-line">highlight LineNr        guifg=#DDEEFF ctermfg=White</td>
      </tr>
      <tr>
        <td id="L127" class="blob-num js-line-number" data-line-number="127"></td>
        <td id="LC127" class="blob-code js-file-line">call <span class="pl-s3">s:hibg</span>(<span class="pl-s1">&quot;LineNr&quot;</span>    ,<span class="pl-s1">&quot;#222222&quot;</span>,<span class="pl-s1">&quot;DarkBlue&quot;</span>,<span class="pl-c1">80</span>)</td>
      </tr>
      <tr>
        <td id="L128" class="blob-num js-line-number" data-line-number="128"></td>
        <td id="LC128" class="blob-code js-file-line">highlight Question      none</td>
      </tr>
      <tr>
        <td id="L129" class="blob-num js-line-number" data-line-number="129"></td>
        <td id="LC129" class="blob-code js-file-line">high link Question      MoreMsg</td>
      </tr>
      <tr>
        <td id="L130" class="blob-num js-line-number" data-line-number="130"></td>
        <td id="LC130" class="blob-code js-file-line">highlight Title         guifg=Magenta ctermfg=Magenta</td>
      </tr>
      <tr>
        <td id="L131" class="blob-num js-line-number" data-line-number="131"></td>
        <td id="LC131" class="blob-code js-file-line">highlight VisualNOS     gui=none cterm=none</td>
      </tr>
      <tr>
        <td id="L132" class="blob-num js-line-number" data-line-number="132"></td>
        <td id="LC132" class="blob-code js-file-line">call <span class="pl-s3">s:hibg</span>(<span class="pl-s1">&quot;Visual&quot;</span>    ,<span class="pl-s1">&quot;#555577&quot;</span>,<span class="pl-s1">&quot;LightBlue&quot;</span>,<span class="pl-c1">83</span>)</td>
      </tr>
      <tr>
        <td id="L133" class="blob-num js-line-number" data-line-number="133"></td>
        <td id="LC133" class="blob-code js-file-line">call <span class="pl-s3">s:hibg</span>(<span class="pl-s1">&quot;VisualNOS&quot;</span> ,<span class="pl-s1">&quot;#444444&quot;</span>,<span class="pl-s1">&quot;DarkBlue&quot;</span>,<span class="pl-c1">81</span>)</td>
      </tr>
      <tr>
        <td id="L134" class="blob-num js-line-number" data-line-number="134"></td>
        <td id="LC134" class="blob-code js-file-line">call <span class="pl-s3">s:hibg</span>(<span class="pl-s1">&quot;MatchParen&quot;</span>,<span class="pl-s1">&quot;#1100AA&quot;</span>,<span class="pl-s1">&quot;DarkBlue&quot;</span>,<span class="pl-c1">18</span>)</td>
      </tr>
      <tr>
        <td id="L135" class="blob-num js-line-number" data-line-number="135"></td>
        <td id="LC135" class="blob-code js-file-line">highlight WarningMsg    guifg=Red ctermfg=Red</td>
      </tr>
      <tr>
        <td id="L136" class="blob-num js-line-number" data-line-number="136"></td>
        <td id="LC136" class="blob-code js-file-line">highlight Error         ctermbg=DarkRed</td>
      </tr>
      <tr>
        <td id="L137" class="blob-num js-line-number" data-line-number="137"></td>
        <td id="LC137" class="blob-code js-file-line">highlight SpellBad      ctermbg=DarkRed</td>
      </tr>
      <tr>
        <td id="L138" class="blob-num js-line-number" data-line-number="138"></td>
        <td id="LC138" class="blob-code js-file-line"><span class="pl-c">&quot; FIXME: Comments</span></td>
      </tr>
      <tr>
        <td id="L139" class="blob-num js-line-number" data-line-number="139"></td>
        <td id="LC139" class="blob-code js-file-line">highlight SpellRare     ctermbg=DarkMagenta</td>
      </tr>
      <tr>
        <td id="L140" class="blob-num js-line-number" data-line-number="140"></td>
        <td id="LC140" class="blob-code js-file-line">highlight SpellCap      ctermbg=DarkBlue</td>
      </tr>
      <tr>
        <td id="L141" class="blob-num js-line-number" data-line-number="141"></td>
        <td id="LC141" class="blob-code js-file-line">highlight SpellLocal    ctermbg=DarkCyan</td>
      </tr>
      <tr>
        <td id="L142" class="blob-num js-line-number" data-line-number="142"></td>
        <td id="LC142" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L143" class="blob-num js-line-number" data-line-number="143"></td>
        <td id="LC143" class="blob-code js-file-line">call <span class="pl-s3">s:hibg</span>(<span class="pl-s1">&quot;Folded&quot;</span>    ,<span class="pl-s1">&quot;#110077&quot;</span>,<span class="pl-s1">&quot;DarkBlue&quot;</span>,<span class="pl-c1">17</span>)</td>
      </tr>
      <tr>
        <td id="L144" class="blob-num js-line-number" data-line-number="144"></td>
        <td id="LC144" class="blob-code js-file-line">call <span class="pl-s3">s:hifg</span>(<span class="pl-s1">&quot;Folded&quot;</span>    ,<span class="pl-s1">&quot;#aaddee&quot;</span>,<span class="pl-s1">&quot;LightCyan&quot;</span>,<span class="pl-c1">63</span>)</td>
      </tr>
      <tr>
        <td id="L145" class="blob-num js-line-number" data-line-number="145"></td>
        <td id="LC145" class="blob-code js-file-line">highlight FoldColumn    none</td>
      </tr>
      <tr>
        <td id="L146" class="blob-num js-line-number" data-line-number="146"></td>
        <td id="LC146" class="blob-code js-file-line">high link FoldColumn    Folded</td>
      </tr>
      <tr>
        <td id="L147" class="blob-num js-line-number" data-line-number="147"></td>
        <td id="LC147" class="blob-code js-file-line">highlight DiffAdd       ctermbg=<span class="pl-c1">4</span> guibg=DarkBlue</td>
      </tr>
      <tr>
        <td id="L148" class="blob-num js-line-number" data-line-number="148"></td>
        <td id="LC148" class="blob-code js-file-line">highlight DiffChange    ctermbg=<span class="pl-c1">5</span> guibg=DarkMagenta</td>
      </tr>
      <tr>
        <td id="L149" class="blob-num js-line-number" data-line-number="149"></td>
        <td id="LC149" class="blob-code js-file-line">highlight DiffDelete    ctermfg=<span class="pl-c1">12</span> ctermbg=<span class="pl-c1">6</span> gui=bold guifg=Blue guibg=DarkCyan</td>
      </tr>
      <tr>
        <td id="L150" class="blob-num js-line-number" data-line-number="150"></td>
        <td id="LC150" class="blob-code js-file-line">highlight DiffText      ctermbg=DarkRed</td>
      </tr>
      <tr>
        <td id="L151" class="blob-num js-line-number" data-line-number="151"></td>
        <td id="LC151" class="blob-code js-file-line">highlight DiffText      cterm=bold ctermbg=<span class="pl-c1">9</span> gui=bold guibg=Red</td>
      </tr>
      <tr>
        <td id="L152" class="blob-num js-line-number" data-line-number="152"></td>
        <td id="LC152" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L153" class="blob-num js-line-number" data-line-number="153"></td>
        <td id="LC153" class="blob-code js-file-line">highlight Pmenu         guifg=White ctermfg=White gui=bold cterm=bold</td>
      </tr>
      <tr>
        <td id="L154" class="blob-num js-line-number" data-line-number="154"></td>
        <td id="LC154" class="blob-code js-file-line">highlight PmenuSel      guifg=White ctermfg=White gui=bold cterm=bold</td>
      </tr>
      <tr>
        <td id="L155" class="blob-num js-line-number" data-line-number="155"></td>
        <td id="LC155" class="blob-code js-file-line">call <span class="pl-s3">s:hibg</span>(<span class="pl-s1">&quot;Pmenu&quot;</span>     ,<span class="pl-s1">&quot;#000099&quot;</span>,<span class="pl-s1">&quot;Blue&quot;</span>,<span class="pl-c1">18</span>)</td>
      </tr>
      <tr>
        <td id="L156" class="blob-num js-line-number" data-line-number="156"></td>
        <td id="LC156" class="blob-code js-file-line">call <span class="pl-s3">s:hibg</span>(<span class="pl-s1">&quot;PmenuSel&quot;</span>  ,<span class="pl-s1">&quot;#5555ff&quot;</span>,<span class="pl-s1">&quot;DarkCyan&quot;</span>,<span class="pl-c1">39</span>)</td>
      </tr>
      <tr>
        <td id="L157" class="blob-num js-line-number" data-line-number="157"></td>
        <td id="LC157" class="blob-code js-file-line">highlight PmenuSbar     guibg=Grey ctermbg=Grey</td>
      </tr>
      <tr>
        <td id="L158" class="blob-num js-line-number" data-line-number="158"></td>
        <td id="LC158" class="blob-code js-file-line">highlight PmenuThumb    guibg=White ctermbg=White</td>
      </tr>
      <tr>
        <td id="L159" class="blob-num js-line-number" data-line-number="159"></td>
        <td id="LC159" class="blob-code js-file-line">highlight TabLine       gui=underline cterm=underline</td>
      </tr>
      <tr>
        <td id="L160" class="blob-num js-line-number" data-line-number="160"></td>
        <td id="LC160" class="blob-code js-file-line">call <span class="pl-s3">s:hifg</span>(<span class="pl-s1">&quot;TabLine&quot;</span>   ,<span class="pl-s1">&quot;#bbbbbb&quot;</span>,<span class="pl-s1">&quot;LightGrey&quot;</span>,<span class="pl-c1">85</span>)</td>
      </tr>
      <tr>
        <td id="L161" class="blob-num js-line-number" data-line-number="161"></td>
        <td id="LC161" class="blob-code js-file-line">call <span class="pl-s3">s:hibg</span>(<span class="pl-s1">&quot;TabLine&quot;</span>   ,<span class="pl-s1">&quot;#333333&quot;</span>,<span class="pl-s1">&quot;DarkGrey&quot;</span>,<span class="pl-c1">80</span>)</td>
      </tr>
      <tr>
        <td id="L162" class="blob-num js-line-number" data-line-number="162"></td>
        <td id="LC162" class="blob-code js-file-line">highlight TabLineSel    guifg=White guibg=Black ctermfg=White ctermbg=Black</td>
      </tr>
      <tr>
        <td id="L163" class="blob-num js-line-number" data-line-number="163"></td>
        <td id="LC163" class="blob-code js-file-line">highlight TabLineFill   gui=underline cterm=underline</td>
      </tr>
      <tr>
        <td id="L164" class="blob-num js-line-number" data-line-number="164"></td>
        <td id="LC164" class="blob-code js-file-line">call <span class="pl-s3">s:hifg</span>(<span class="pl-s1">&quot;TabLineFill&quot;</span>,<span class="pl-s1">&quot;#bbbbbb&quot;</span>,<span class="pl-s1">&quot;LightGrey&quot;</span>,<span class="pl-c1">85</span>)</td>
      </tr>
      <tr>
        <td id="L165" class="blob-num js-line-number" data-line-number="165"></td>
        <td id="LC165" class="blob-code js-file-line">call <span class="pl-s3">s:hibg</span>(<span class="pl-s1">&quot;TabLineFill&quot;</span>,<span class="pl-s1">&quot;#808080&quot;</span>,<span class="pl-s1">&quot;Grey&quot;</span>,<span class="pl-c1">83</span>)</td>
      </tr>
      <tr>
        <td id="L166" class="blob-num js-line-number" data-line-number="166"></td>
        <td id="LC166" class="blob-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L167" class="blob-num js-line-number" data-line-number="167"></td>
        <td id="LC167" class="blob-code js-file-line">hi Type gui=none</td>
      </tr>
      <tr>
        <td id="L168" class="blob-num js-line-number" data-line-number="168"></td>
        <td id="LC168" class="blob-code js-file-line">hi Statement gui=none</td>
      </tr>
      <tr>
        <td id="L169" class="blob-num js-line-number" data-line-number="169"></td>
        <td id="LC169" class="blob-code js-file-line"><span class="pl-k">if</span> !<span class="pl-s3">has</span>(<span class="pl-s1">&quot;gui_mac&quot;</span>)</td>
      </tr>
      <tr>
        <td id="L170" class="blob-num js-line-number" data-line-number="170"></td>
        <td id="LC170" class="blob-code js-file-line"><span class="pl-c">    &quot; Mac GUI degrades italics to ugly underlining.</span></td>
      </tr>
      <tr>
        <td id="L171" class="blob-num js-line-number" data-line-number="171"></td>
        <td id="LC171" class="blob-code js-file-line">    hi Comment gui=italic</td>
      </tr>
      <tr>
        <td id="L172" class="blob-num js-line-number" data-line-number="172"></td>
        <td id="LC172" class="blob-code js-file-line">    hi railsUserClass  gui=italic</td>
      </tr>
      <tr>
        <td id="L173" class="blob-num js-line-number" data-line-number="173"></td>
        <td id="LC173" class="blob-code js-file-line">    hi railsUserMethod gui=italic</td>
      </tr>
      <tr>
        <td id="L174" class="blob-num js-line-number" data-line-number="174"></td>
        <td id="LC174" class="blob-code js-file-line"><span class="pl-k">endif</span></td>
      </tr>
      <tr>
        <td id="L175" class="blob-num js-line-number" data-line-number="175"></td>
        <td id="LC175" class="blob-code js-file-line">hi Identifier cterm=none</td>
      </tr>
      <tr>
        <td id="L176" class="blob-num js-line-number" data-line-number="176"></td>
        <td id="LC176" class="blob-code js-file-line"><span class="pl-c">&quot; Commented numbers at the end are *old* 256 color values</span></td>
      </tr>
      <tr>
        <td id="L177" class="blob-num js-line-number" data-line-number="177"></td>
        <td id="LC177" class="blob-code js-file-line"><span class="pl-c">&quot;highlight PreProc       guifg=#EDF8F9</span></td>
      </tr>
      <tr>
        <td id="L178" class="blob-num js-line-number" data-line-number="178"></td>
        <td id="LC178" class="blob-code js-file-line">call <span class="pl-s3">s:hifg</span>(<span class="pl-s1">&quot;Comment&quot;</span>        ,<span class="pl-s1">&quot;#9933CC&quot;</span>,<span class="pl-s1">&quot;DarkMagenta&quot;</span>,<span class="pl-c1">34</span>) <span class="pl-c">&quot; 92</span></td>
      </tr>
      <tr>
        <td id="L179" class="blob-num js-line-number" data-line-number="179"></td>
        <td id="LC179" class="blob-code js-file-line"><span class="pl-c">&quot; 26 instead?</span></td>
      </tr>
      <tr>
        <td id="L180" class="blob-num js-line-number" data-line-number="180"></td>
        <td id="LC180" class="blob-code js-file-line">call <span class="pl-s3">s:hifg</span>(<span class="pl-s1">&quot;Constant&quot;</span>       ,<span class="pl-s1">&quot;#339999&quot;</span>,<span class="pl-s1">&quot;DarkCyan&quot;</span>,<span class="pl-c1">21</span>) <span class="pl-c">&quot; 30</span></td>
      </tr>
      <tr>
        <td id="L181" class="blob-num js-line-number" data-line-number="181"></td>
        <td id="LC181" class="blob-code js-file-line">call <span class="pl-s3">s:hifg</span>(<span class="pl-s1">&quot;rubyNumber&quot;</span>     ,<span class="pl-s1">&quot;#CCFF33&quot;</span>,<span class="pl-s1">&quot;Yellow&quot;</span>,<span class="pl-c1">60</span>) <span class="pl-c">&quot; 190</span></td>
      </tr>
      <tr>
        <td id="L182" class="blob-num js-line-number" data-line-number="182"></td>
        <td id="LC182" class="blob-code js-file-line">call <span class="pl-s3">s:hifg</span>(<span class="pl-s1">&quot;String&quot;</span>         ,<span class="pl-s1">&quot;#66FF00&quot;</span>,<span class="pl-s1">&quot;LightGreen&quot;</span>,<span class="pl-c1">44</span>,<span class="pl-c1">82</span>) <span class="pl-c">&quot; 82</span></td>
      </tr>
      <tr>
        <td id="L183" class="blob-num js-line-number" data-line-number="183"></td>
        <td id="LC183" class="blob-code js-file-line">call <span class="pl-s3">s:hifg</span>(<span class="pl-s1">&quot;Identifier&quot;</span>     ,<span class="pl-s1">&quot;#FFCC00&quot;</span>,<span class="pl-s1">&quot;Yellow&quot;</span>,<span class="pl-c1">72</span>) <span class="pl-c">&quot; 220</span></td>
      </tr>
      <tr>
        <td id="L184" class="blob-num js-line-number" data-line-number="184"></td>
        <td id="LC184" class="blob-code js-file-line">call <span class="pl-s3">s:hifg</span>(<span class="pl-s1">&quot;Statement&quot;</span>      ,<span class="pl-s1">&quot;#FF6600&quot;</span>,<span class="pl-s1">&quot;Brown&quot;</span>,<span class="pl-c1">68</span>) <span class="pl-c">&quot; 202</span></td>
      </tr>
      <tr>
        <td id="L185" class="blob-num js-line-number" data-line-number="185"></td>
        <td id="LC185" class="blob-code js-file-line">call <span class="pl-s3">s:hifg</span>(<span class="pl-s1">&quot;PreProc&quot;</span>        ,<span class="pl-s1">&quot;#AAFFFF&quot;</span>,<span class="pl-s1">&quot;LightCyan&quot;</span>,<span class="pl-c1">47</span>) <span class="pl-c">&quot; 213</span></td>
      </tr>
      <tr>
        <td id="L186" class="blob-num js-line-number" data-line-number="186"></td>
        <td id="LC186" class="blob-code js-file-line">call <span class="pl-s3">s:hifg</span>(<span class="pl-s1">&quot;railsUserMethod&quot;</span>,<span class="pl-s1">&quot;#AACCFF&quot;</span>,<span class="pl-s1">&quot;LightCyan&quot;</span>,<span class="pl-c1">27</span>)</td>
      </tr>
      <tr>
        <td id="L187" class="blob-num js-line-number" data-line-number="187"></td>
        <td id="LC187" class="blob-code js-file-line">call <span class="pl-s3">s:hifg</span>(<span class="pl-s1">&quot;Type&quot;</span>           ,<span class="pl-s1">&quot;#AAAA77&quot;</span>,<span class="pl-s1">&quot;Grey&quot;</span>,<span class="pl-c1">57</span>) <span class="pl-c">&quot; 101</span></td>
      </tr>
      <tr>
        <td id="L188" class="blob-num js-line-number" data-line-number="188"></td>
        <td id="LC188" class="blob-code js-file-line">call <span class="pl-s3">s:hifg</span>(<span class="pl-s1">&quot;railsUserClass&quot;</span> ,<span class="pl-s1">&quot;#AAAAAA&quot;</span>,<span class="pl-s1">&quot;Grey&quot;</span>,<span class="pl-c1">7</span>) <span class="pl-c">&quot; 101</span></td>
      </tr>
      <tr>
        <td id="L189" class="blob-num js-line-number" data-line-number="189"></td>
        <td id="LC189" class="blob-code js-file-line">call <span class="pl-s3">s:hifg</span>(<span class="pl-s1">&quot;Special&quot;</span>        ,<span class="pl-s1">&quot;#33AA00&quot;</span>,<span class="pl-s1">&quot;DarkGreen&quot;</span>,<span class="pl-c1">24</span>) <span class="pl-c">&quot; 7</span></td>
      </tr>
      <tr>
        <td id="L190" class="blob-num js-line-number" data-line-number="190"></td>
        <td id="LC190" class="blob-code js-file-line">call <span class="pl-s3">s:hifg</span>(<span class="pl-s1">&quot;Regexp&quot;</span>         ,<span class="pl-s1">&quot;#44B4CC&quot;</span>,<span class="pl-s1">&quot;DarkCyan&quot;</span>,<span class="pl-c1">21</span>) <span class="pl-c">&quot; 74</span></td>
      </tr>
      <tr>
        <td id="L191" class="blob-num js-line-number" data-line-number="191"></td>
        <td id="LC191" class="blob-code js-file-line">call <span class="pl-s3">s:hifg</span>(<span class="pl-s1">&quot;rubyMethod&quot;</span>     ,<span class="pl-s1">&quot;#DDE93D&quot;</span>,<span class="pl-s1">&quot;Yellow&quot;</span>,<span class="pl-c1">77</span>) <span class="pl-c">&quot; 191</span></td>
      </tr>
      <tr>
        <td id="L192" class="blob-num js-line-number" data-line-number="192"></td>
        <td id="LC192" class="blob-code js-file-line"><span class="pl-c">&quot;highlight railsMethod   guifg=#EE1122 ctermfg=1</span></td>
      </tr>
</table>

  </div>

  </div>
</div>

<a href="#jump-to-line" rel="facebox[.linejump]" data-hotkey="l" style="display:none">Jump to Line</a>
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
  <div class="site-footer" role="contentinfo">
    <ul class="site-footer-links right">
      <li><a href="https://status.github.com/">Status</a></li>
      <li><a href="https://developer.github.com">API</a></li>
      <li><a href="http://training.github.com">Training</a></li>
      <li><a href="http://shop.github.com">Shop</a></li>
      <li><a href="/blog">Blog</a></li>
      <li><a href="/about">About</a></li>

    </ul>

    <a href="/" aria-label="Homepage">
      <span class="mega-octicon octicon-mark-github" title="GitHub"></span>
    </a>

    <ul class="site-footer-links">
      <li>&copy; 2015 <span title="0.05103s from github-fe135-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="/site/terms">Terms</a></li>
        <li><a href="/site/privacy">Privacy</a></li>
        <li><a href="/security">Security</a></li>
        <li><a href="/contact">Contact</a></li>
    </ul>
  </div><!-- /.site-footer -->
</div><!-- /.container -->


    <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-suggester-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="fullscreen-contents js-fullscreen-contents" placeholder=""></textarea>
      <div class="suggester-container">
        <div class="suggester fullscreen-suggester js-suggester js-navigation-container"></div>
      </div>
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
      <a href="#" class="octicon octicon-x flash-close js-ajax-error-dismiss" aria-label="Dismiss error"></a>
      Something went wrong with that request. Please try again.
    </div>


      <script crossorigin="anonymous" src="https://assets-cdn.github.com/assets/frameworks-996268c2962f947579cb9ec2908bd576591bc94b6a2db184a78e78815022ba2c.js"></script>
      <script async="async" crossorigin="anonymous" src="https://assets-cdn.github.com/assets/github-87d95fe9c4332174f9c7761d3be4ee3b59996fe3e3f60ced320522493e1014a6.js"></script>
      
      

  </body>
</html>

