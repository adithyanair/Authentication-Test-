<x-app-layout>
    <x-slot name="header">
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            
                @if($role->key == "admin")
                <div class="ml-4 text-3xl leading-7 font-semibold text-gray-900 dark:text-white"> <center> ADMIN</a> </center> </div> <br> 
                <div class="input-group"> <center>
                    <button type="submit" class="form-control submit" name="submit"> <a href="http://localhost:8000/teams/5"> Manage User Accounts </a> </button>
                    <button type="submit" class="form-control submit" name="submit"> <a href="http://localhost:8000/teams/5"> Assign Roles </a> </button>
                    <button type="submit" class="form-control submit" name="submit"> <a href="https://www.happyfox.com/help-desk/"> Help Desk </a> </button>
                    </center> </div>
                    <div class = "card text-center border-dark mb-3"> <center>
                    <img
		            className="card-img-top"
		            src="https://mk0wittysparksm75pi6.kinstacdn.com/wp-content/uploads/2020/02/business-administration-basics.jpg"
		            width="700"
		            height="500"
		            alt="Card image cap"/> </center>
                    </div> 
                @endif

                @if($role->key == "finance")
                <div class="ml-4 text-3xl leading-7 font-semibold text-gray-900 dark:text-white"> <center> FINANCE ADMIN</a> </center> </div> <br>
                <div class="input-group"> <center>
                    <button type="submit" class="form-control submit" name="submit"> <a href="https://www.wikihow.com/Write-a-Financial-Report"> Finance Reports </a> </button>
                    <button type="submit" class="form-control submit" name="submit"> <a href="https://www.freshbooks.com/hub/accounting/accounts-payable"> Accounts Payable </a> </button>
                    <button type="submit" class="form-control submit" name="submit"> <a href="https://bench.co/blog/accounting/accounts-receivable/"> Accounts Receivable </a> </button>
                    <button type="submit" class="form-control submit" name="submit"> <a href="https://www.betterteam.com/tax-accountant-job-description"> Tax </a> </button>
                    </center> </div>
                    <div class = "card text-center border-dark mb-3"> <center>
                    <img
		            className="card-img-top"
		            src="https://news.sap.com/africa/files/2017/07/Finance-1.jpg"
		            width="700"
		            height="500"
		            alt="Card image cap"/> </center>
                    </div> 
                @endif

                @if($role->key == "sales")
                <div class="ml-4 text-3xl leading-7 font-semibold text-gray-900 dark:text-white"> <center> SALES ADMIN</a> </center> </div> <br>
                <div class="input-group"> <center>
                    <button type="submit" class="form-control submit" name="submit"> <a href="https://blog.close.com/how-to-create-a-sales-report/"> Sales Reports </a> </button>
                    <button type="submit" class="form-control submit" name="submit"> <a href="https://www.leadboxer.com/resources/definition-sales-lead/"> Sales Leads </a> </button>
                    <button type="submit" class="form-control submit" name="submit"> <a href="https://blog.hubspot.com/sales/how-to-deliver-the-perfect-sales-demo"> Sales Demo </a> </button>
                    </center> </div>
                    <div class = "card text-center border-dark mb-3"> <center>
                    <img
		            className="card-img-top"
		            src="https://www.incimages.com/uploaded_files/image/1920x1080/getty_539953664_213316.jpg"
		            width="700"
		            height="700"
		            alt="Card image cap"/> </center>
                    </div> 
                @endif

                @if($role->key == "hr")
                <div class="ml-4 text-3xl leading-7 font-semibold text-gray-900 dark:text-white"> <center> HR ADMIN</a> </center> </div> <br>
                <div class="input-group"> <center>
                    <button type="submit" class="form-control submit" name="submit"> <a href="https://www.shrm.org/resourcesandtools/hr-topics/talent-acquisition/pages/new-employee-onboarding-guide.aspx"> New Hire On-boarding </a> </button>
                    <button type="submit" class="form-control submit" name="submit"> <a href="https://www.shrm.org/resourcesandtools/tools-and-samples/toolkits/pages/employeebenefits.aspx"> Benefits </a> </button>
                    <button type="submit" class="form-control submit" name="submit"> <a href="https://www.business.com/articles/how-to-do-payroll/"> Payroll </a> </button>
                    <button type="submit" class="form-control submit" name="submit"> <a href="https://www.bamboohr.com/blog/offboarding-why-it-matters/"> Off-Boarding </a> </button>
                    <button type="submit" class="form-control submit" name="submit"> <a href="https://smallbusiness.chron.com/write-hr-report-45947.html"> HR Reports </a> </button>
                    </center> </div>
                    <div class = "card text-center border-dark mb-3"> <center>
                    <img
		            className="card-img-top"
		            src="https://media3.s-nbcnews.com/j/newscms/2020_14/1554952/hank-shake-continue-today-main-200403_fe1d3d927229f336440bea5c5d9b68a4.fit-760w.jpg"
		            width="700"
		            height="700"
		            alt="Card image cap"/> </center>
                    </div> 
                @endif

                @if($role->key == "technology")
                <div class="ml-4 text-3xl leading-7 font-semibold text-gray-900 dark:text-white"> <center> TECH ADMIN</a> </center> </div> <br> 
                <div class="input-group"> <center>
                    <button type="submit" class="form-control submit" name="submit"> <a href="https://www.networkmanagementsoftware.com/application-monitoring-2/"> Application Monitoring </a> </button>
                    <button type="submit" class="form-control submit" name="submit"> <a href="https://en.wikipedia.org/wiki/Technical_support"> Tech Support </a> </button>
                    <button type="submit" class="form-control submit" name="submit"> <a href="https://buildfire.com/become-mobile-app-developer/"> App Development </a> </button>
                    <button type="submit" class="form-control submit" name="submit"> <a href="https://www.sciencedirect.com/topics/computer-science/application-administration"> App Admin </a> </button>
                    <button type="submit" class="form-control submit" name="submit"> <a href="https://en.wikipedia.org/wiki/Release_management"> Release Management </a> </button>
                    </center> </div>
                    <div class = "card text-center border-dark mb-3"> <center>
                    <img
		            className="card-img-top"
		            src="https://cache.vanderbiltindustries.com/system/images/made/system/images/remote/http_uploads.vanderbiltindustries.com/general/f9ff4a516820d0705d4c7511451af4e7/tech_support_1000_579_85.jpg"
		            width="700"
		            height="540"
		            alt="Card image cap"/> </center>
                    </div> 
                @endif
        </div>

    </div>

        
</x-app-layout>