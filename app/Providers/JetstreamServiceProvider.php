<?php

namespace App\Providers;

use App\Actions\Jetstream\AddTeamMember;
use App\Actions\Jetstream\CreateTeam;
use App\Actions\Jetstream\DeleteTeam;
use App\Actions\Jetstream\DeleteUser;
use App\Actions\Jetstream\UpdateTeamName;
use Illuminate\Support\ServiceProvider;
use Laravel\Jetstream\Jetstream;

class JetstreamServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        $this->configurePermissions();

        Jetstream::createTeamsUsing(CreateTeam::class);
        Jetstream::updateTeamNamesUsing(UpdateTeamName::class);
        Jetstream::addTeamMembersUsing(AddTeamMember::class);
        Jetstream::deleteTeamsUsing(DeleteTeam::class);
        Jetstream::deleteUsersUsing(DeleteUser::class);
    }

    /**
     * Configure the roles and permissions that are available within the application.
     *
     * @return void
     */
    protected function configurePermissions()
    {
        Jetstream::defaultApiTokenPermissions(['read']);

        Jetstream::role('admin', __('Administrator'), [
            'create',
            'read',
            'update',
            'delete',
        ])->description(__('Administrator users can perform any action.'));
        
        Jetstream::role('finance', __('Finance'), [
            'read',
            'create',
            'update',
            'delete',
        ])->description(__('Finance users have the ability to read, create, and update.'));

        Jetstream::role('sales', __('Sales'), [
            'read',
            'create',
            'update',
            'delete',
        ])->description(__('Sales users have the ability to read, create, and update.'));

        Jetstream::role('hr', __('HR'), [
            'read',
            'create',
            'update',
            'delete',
        ])->description(__('HR users have the ability to read, create, and update.'));

        Jetstream::role('technology', __('Technology'), [
            'read',
            'create',
            'update',
            'delete',
        ])->description(__('Technology users have the ability to read, create, and update.'));
    }
}
