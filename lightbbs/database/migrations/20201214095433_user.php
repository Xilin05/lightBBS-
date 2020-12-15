<?php

use think\migration\Migrator;

class User extends Migrator
{
    public function change()
    {
        $table = $this->table(
            'user',
            ['engine' => 'InnoDB', 'collation' => 'utf8mb4_general_ci']
        );
        $table->addColumn(
            'name',
            'string',
            ['limit' => 100, 'null' => false, 'default' => '', 'comment' => '用户名']
        )
            ->addColumn(
                'password',
                'string',
                ['limit' => 255, 'null' => false, 'default' => '', 'comment' => '密码']
            )
            ->addColumn(
                'salt',
                'char',
                ['limit' => 32, 'null' => false, 'default' => '', 'comment' => '密码salt']
            )
            ->addColumn(
                'email',
                'string',
                ['limit' => 128, 'null' => false, 'default' => '', 'comment' => '邮箱']
            )
            ->addColumn(
                'is_active',
                'boolean',
                ['null' => false, 'default' => 0, 'comment' => '邮箱是否激活']
            )
            ->addColumn(
                'role',
                'string',
                ['limit' => 100, 'null' => false, 'default' => 'user', 'comment' => '用户角色']
            )
            ->addColumn(
                'img_url',
                'string',
                ['limit' => 255, 'null' => false, 'default' => '', 'comment' => '用户头像地址']
            )
            ->addIndex(['name', 'email'], ['unique' => true])
            ->addTimestamps()
            ->create();

    }
}
