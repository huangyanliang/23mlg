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
<link rel="stylesheet" href="/23mlg/public/Home/css/common.css" />
<link rel="shortcut icon" href="/23mlg/public/Home/images/favicon.ico" />
<script src="/23mlg/public/Home/js/jquery.min.js"></script>
<script src="/23mlg/public/Home/js/common.js"></script>

<script type="text/javascript">
 var think   = '/23mlg/Home';
 var img     = '/23mlg/public/Home/images';
 var pic     = '/23mlg/uploads/images/';
</script>
</head>
<body>







<?php if(!empty($sysconf)): echo ($sysconf['sys_code']); endif; ?>
</body>
</html>