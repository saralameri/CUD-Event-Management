<script>
    export let data;
</script>




<div class=" px-40 overflow-x-auto ">
    <h5 class="text-2xl font-bold my-14">Participants</h5>
   
    <table class="w-full text-sm text-left rtl:text-right text-gray-500 ">
        <thead class="text-xs text-gray-700 uppercase bg-red-700 bg-opacity-50  ">
            <tr>
                <th scope="col" class="p-4">
                    No
                </th>
                <th scope="col" class="px-6 py-3">
                    Name
                </th>
                <th scope="col" class="px-6 py-3">
                    Email
                </th>
                <th scope="col" class="px-6 py-3">
                    Department
                </th>
            </tr>
        </thead>
        <tbody>
            {#each data.users as {firstName, lastName, email, department},index}
                <tr class="bg-white border-b hover:bg-gray-50">
                    <td class="w-4 p-4">
                        {index+1}
                    </td>
                    <td class="px-6 py-4">
                        {firstName} {lastName}
                    </td>
                    <td class="px-6 py-4">
                        {email}
                    </td>
                    <td class="px-6 py-4">
                        {department}
                    </td>
                </tr>
            {/each}

        </tbody>
    </table>
</div>
