<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
                <!-- <x-jet-welcome /> -->
                
                @if($role->key == "admin")
                <div> <a> ADMIN </a> </div> 
                <div> <a href="http://localhost:8000/Manage-User-Accounts"> Manage User Accounts </a> </div>
                <div> <a href="http://localhost:8000/Assign-Roles"> Assign Roles </a> </div>
                <div> <a href="http://localhost:8000/Help-Desk"> Help Desk </a> </div>
                @endif
                @if($role->key == "finance")
                <div> <b> FINANCE ADMIN </b> </div> 
                <div> <a href="http://localhost:8000/Finance-Reports"> Finance Reports </a> </div>
                <div> <a href="http://localhost:8000/Accounts-Payable"> Account Payable </a> </div>
                <div> <a href="http://localhost:8000/Accounts-Receivable"> Accounts Receivable </a> </div>
                <div> <a href="http://localhost:8000/Tax"> Tax </a> </div>
                @endif
                @if($role->key == "sales")
                <div> <b> SALES ADMIN </b> </div> 
                <div> <a href="http://localhost:8000/Sales-Reports"> Sales Reports </a> </div>
                <div> <a href="http://localhost:8000/Sales-Leads"> Sales Leads </a> </div>
                <div> <a href="http://localhost:8000/Sales-Demo"> Sales Demo </a> </div>
                @endif
                @if($role->key == "hr")
                <div> <b> HR ADMIN </b> </div> 
                <div> <a href="http://localhost:8000/New-Hire-On-Boarding"> New Hire On-boarding </a> </div>
                <div> <a href="http://localhost:8000/Benefits"> Benefits </a> </div>
                <div> <a href="http://localhost:8000/Payroll"> Payroll </a> </div>
                <div> <a href="http://localhost:8000/Off-boarding"> Off-boarding </a> </div>
                <div> <a href="http://localhost:8000/HR-Reports"> HR Reports </a> </div>
                @endif
                @if($role->key == "technology")
                <div> <b> TECH ADMIN </b> </div> 
                <div> <a href="http://localhost:8000/Application-Monitoring"> Application Monitoring </a> </div>
                <div> <a href="http://localhost:8000/Tech-Support"> Tech Support </a> </div>
                <div> <a href="http://localhost:8000/App-Development"> App Development </a> </div>
                <div> <a href="http://localhost:8000/App-Admin"> App Admin </a> </div>
                <div> <a href="http://localhost:8000/Release-Management"> Release Management </a> </div>
                @endif

                
                
            </div>
        </div>
    </div>

        
</x-app-layout>