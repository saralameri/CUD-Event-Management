
<script>
  // @ts-nocheck
  export let id;
  export let title;
  export let date;
  export let startTime;
  export let endTime;
  export let location;
  export let description;
  export let index;
  export let category;
  export let subcategory;
</script>



<div class="flex justify-between w-full p-10 {(index%2==0)?  "flex-row-reverse" :  "flex-row"}" >
  <div class=" py-8 px-10 w-full bg-neutral-100 rounded-lg {(index%2==0)?  "ml-20" :  "mr-20"}">
    <!-- title  -->
    <h1 class="w-full font-bold text-xl pb-5 border-b-2 border-red-700"><a href="/{category}/{subcategory}/{id}">{title}</a></h1>
    <!-- details -->
    <div class="grid grid-cols-3">
      <!-- left side  -->
      <div class="col-span-1">
        <!-- time -->
        <div class="flex flex-row items-center my-5">
          <svg
            class="icon1 mr-4"
            xmlns="http://www.w3.org/2000/svg"
            viewBox="0 0 512 512"
            fill="#aa3335"
            ><path
              d="M256 0a256 256 0 1 1 0 512A256 256 0 1 1 256 0zM232 120V256c0 8 4 15.5 10.7 20l96 64c11 7.4 25.9 4.4 33.3-6.7s4.4-25.9-6.7-33.3L280 243.2V120c0-13.3-10.7-24-24-24s-24 10.7-24 24z"
            />
          </svg>
          <div class="flex flex-col justify-between items-start font-medium">
            <div>
              {startTime} - {endTime}
            </div>
            <div class="text-sm  text-gray-500">{date}</div>
          </div>
        </div>
        <!-- location -->
        <div class="flex flex-row items-center">
          <svg
                  class="icon2 mr-3"
                  xmlns="http://www.w3.org/2000/svg"
                  viewBox="0 0 512 512"
                  fill="#aa3335"
                  ><path
                    d="M215.7 499.2C267 435 384 279.4 384 192C384 86 298 0 192 0S0 86 0 192c0 87.4 117 243 168.3 307.2c12.3 15.3 35.1 15.3 47.4 0zM192 128a64 64 0 1 1 0 128 64 64 0 1 1 0-128z"
                  />
          </svg>
          <div class="flex flex-col justify-between items-start font-medium">
            <div>
              {location}
            </div>
            <p  class="text-sm text-gray-500">
              CUD Campus
            </p>
          </div>
        </div>
        
      </div>

      <!-- about  -->
      <div class="col-span-2 my-5 ">
        <h4 class="font-semibold">About:</h4>
        <div >{description}</div>
      </div>
    </div>
  </div>
  <!-- img  -->
  <div class="w-[50%] flex items-center relative">
    <div class="absolute border-4 border-black top-[25%] bottom-[9%] {(index%2==0)? "right-[-30px] left-[30px]" : "left-[-30px] right-[30px]"} "></div>
    <img class="relative " alt="Event" src="https://www.cud.ac.ae/sites/default/files/styles/max_1300x1300/public/news/2018/13_9.jpg"/>
  </div>

</div>


<style>


  .icon1 {
    color: red; 
    width: 21px; 
    height: 21px; 
  }

  .icon2 {
    width: 24px; 
    height: 24px;
    margin-left: 2px
  }
  

</style>