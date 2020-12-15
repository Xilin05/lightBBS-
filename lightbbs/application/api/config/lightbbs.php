<?php
return [
    'email' => [
        'SMTPAuth' => true,
        'SMTPSecure' => 'ssl',
        'Host' => Env::get('email.Host', ''),
        'Port' => Env::get('email.Port', ''),
        'Username' => Env::get('email.Username', ''),
        'Password' => Env::get('email.Password', ''),
        'Name' => 'LightBBS',
    ],
    'sendEmail' => [
        'limitMinute' => 0.1, // 几分钟内只能发送一次邮件（最大值为1440）
        'maxRetry' => 100, // 每日允许发送几次邮件
        'clientURL' => 'http://localhost:8080', // 客户端URL
    ],
];
