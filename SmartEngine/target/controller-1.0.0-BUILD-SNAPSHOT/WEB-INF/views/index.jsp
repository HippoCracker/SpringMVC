<%--
  Created by IntelliJ IDEA.
  User: zongzesheng
  Date: 11/19/15
  Time: 3:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" ng-app="neuApp">
<head>
  <meta charset="UTF-8">
  <title>NEU Smart Engine | Sentence context detection</title>
  <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
  <link rel="stylesheet" href="resources/css/style.css">
</head>
<body ng-controller="MainCtrl">
<header class="nav-bar">
  <div class="wrap">
    <section class="menu-btn">
      <a href="#"><i class="fa fa-list"></i></a>
    </section><!-- menu-btn -->
    <section id="main-submenu" class="dropdown-menu main-menu hide">
      <ul class="menu-options">
        <li><a href="#">No option</a></li>
        <li><a href="#">No option</a></li>
      </ul>
    </section><!-- dropdown-menu main-menu -->
    <nav>
      <section class="left-actions">
        <ul>
          <li><a href="#" class="active">Home</a></li>
          <li><a href="#">Wiki</a></li>
        </ul>
      </section><!-- left-actions -->
      <secion class="right-actions">
        <ul>
          <li><a id="notify-btn"  href="#"><i class="fa fa-bell"></i></a></li>
          <li><a id="settings-btn" href="#"><i class="fa fa-cog"></i></a></li>
        </ul>
      </secion><!-- right-actions -->
      <section id="notify-submenu" class="dropdown-menu notification-menu hide">
        <ul class="menu-options">
          <li><a href="#">No option</a></li>
          <li><a href="#">No option</a></li>
        </ul>
      </section><!-- dropdown-menu notification-menu -->
      <section id="settings-submenu" class="dropdown-menu settings-menu hide">
        <ul class="menu-options">
          <li><a href="#">No option</a></li>
          <li><a href="#">No option</a></li>
        </ul>
      </section><!-- dropdown-menu settings-menu -->
    </nav>
  </div><!-- wrap -->
</header>
<div class="contents">
  <section class="banner">
    <h1><span>NEU</span> Smart Engine</h1>
  </section><!-- banner -->
  <section class="form-container">
    <form>
      <section class="form-contents">
        <textarea class="input-text" ng-model="sentence" placeholder="Try some sentences... :-)"></textarea>
        <section class="btn-group">
          <div id="submit-btn" ng-click="upload($sentence)" class="submit-btn btn">Submit</div>
          <a href="#" id="submit-dropdown-btn" class="drop-down-btn btn"><i class="fa fa-caret-square-o-down"></i></a>
        </section><!-- btn-group -->
      </section><!-- form-contents -->
      <section id="upload-submenu" class="dropdown-menu upload-menu hide">
        <div class="menu-options">
          <div class="file-upload-btn" ng-model="file" ngf-select="uploadFile($file, $invalidFiles)">
            <i class="fa fa-upload"></i> Upload File
          </div>
          <!-- <input type="file" id ="file-upload" name="#"> -->
          <div class="file-upload-btn" ng-model="files" ngf-select="uploadFiles($files)" multiple>
            <i class="fa fa-folder"></i> Multiple Files
          </div>
          <!-- <input type="file" id ="folder-upload" name="#"> -->
        </div><!-- menu-options -->
      </section><!-- dropdown-menu -->
    </form>
  </section><!-- form-contents -->

  <div class="loading-effect-container">
    <div class="loading-effect">
      <span class="dots"></span>
      <span class="dots"></span>
      <span class="dots"></span>
      <span class="dots"></span>
      <span class="dots"></span>
      <span class="dots"></span>
      <span class="dots"></span>
      <span class="dots"></span>
      <span class="dots"></span>
      <span class="dots"></span>
    </div>
  </div>

  <div class="wrap">
    <section class="process-results-container">
      <header class="results-nav">
        <nav>
          <ul class="nav-options">
            <li><a id="result-label" href="#" class="left-label active">Result</a></li>
            <li><a id="download-label" href="#" class="right-label">Download</a></li>
          </ul>
        </nav>
      </header><!-- results-nav -->
      <div class="result-download-container">
        <section class="process-results">
          <p>
            <span class="word"> Nihil <span class="notation noun">NN</span> </span><span class="word"> minima <span class="notation verb">VB</span></span> tenetur voluptates repudiandae earum quam vel
          </p>
          <p>
            sequi eveniet velit non perferendis, odio voluptate amet consequuntur voluptas voluptatum temporibus debitis, quia ea! Vel beatae distinctio sunt architecto earum perspiciatis.
          </p>
        </section><!-- process-results -->
        <section class="download-options-container hide">
          <ul class="download-options">
            <li><a href="#" class="download-btn">pdf</a></li>
            <li><a href="#" class="download-btn">txt</a></li>
            <li><a href="#" class="download-btn">csv</a></li>
          </ul>
        </section><!-- download-options-container -->
      </div><!-- result-download-contents -->
    </section><!-- process-results-container -->
  </div><!-- wrap -->
</div><!-- contents -->
<footer>
  <div class="wrap">
    <section>
      <p>College of Engineering | Northeastern University</p>
    </section>
  </div>
</footer>

<!-- bower:js -->
<script src="resources/js/angular.js"></script>
<script src="resources/js/ng-file-upload.js"></script>
<!-- endbower -->

<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script src="resources/js/dom.js"></script>
<script src="resources/js/controller.js"></script>

</body>
</html>
