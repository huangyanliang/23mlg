<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<title><?php if($title != ''): echo ($title); else: echo ($metatitle); endif; ?></title>
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta name="renderer" content="webkit" />
<meta name="description" content="<?php echo ($metades); ?>" />
<meta name="keywords" content="<?php echo ($metakey); ?>" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="/bhv3.0/public/Home/css/common.css" />
<link rel="shortcut icon" href="/bhv3.0/public/Home/images/favicon.ico" />
<script src="/bhv3.0/public/Home/js/jquery.min.js"></script>
<script src="/bhv3.0/public/Home/js/common.js"></script>

<script type="text/javascript">
 var think   = '/bhv3.0/Home';
 var img     = '/bhv3.0/public/Home/images';
 var pic     = '/bhv3.0/uploads/images/';
</script>
</head>
<body>







<?php if(!empty($sysconf)): echo ($sysconf['sys_code']); endif; ?>
</body>
</html>