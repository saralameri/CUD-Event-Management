<script>
  // @ts-nocheck
  export let id;
  export let date;
  export let startTime;
  export let endTime;
  export let location;
  export let description;
  export let participants;
  export let category;
  export let subcategory;
</script>


<div>
  
  <!-- photos -->
  <section class="flex items-center pt-5 pb-20 pl-20">
    <img
    class="w-[25%] shadow-lg shadow-gray-800 ml-22 "
      alt="Event photos"
      src="https://www.cud.ac.ae/sites/default/files/styles/max_1300x1300/public/news/2023/DSC00704.JPG"
    />
    <img
    class="w-[25%] shadow-lg shadow-gray-800 relative top-[25px] bottom-[10px] left-[-30px] "
      alt="Event photos"
      src="https://www.cud.ac.ae/sites/default/files/styles/max_1300x1300/public/news/2023/DSC00704.JPG"
    />
    <img
    class="w-[25%] shadow-lg shadow-gray-800 relative left-[-60px]"
      alt="Event photos"
      src="https://www.cud.ac.ae/sites/default/files/styles/max_1300x1300/public/news/2023/DSC00704.JPG"
    />
    <img
    class="w-[25%] shadow-lg shadow-gray-800 relative top-[25px] bottom-[10px] left-[-90px] "
      alt="Event photos"
      src="https://www.cud.ac.ae/sites/default/files/styles/max_1300x1300/public/news/2023/DSC00704.JPG"
    />
  </section>
  
  <!-- title  -->
  <div class="flex flex-row items-center justify-between mx-20 pb-5 border-b-2 border-red-700">
    <h1 class="  font-bold text-2xl ">Event Details</h1>
      <a href="/{category}/{subcategory}/{id}/edit">
      
        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
          <path stroke-linecap="round" stroke-linejoin="round" d="m16.862 4.487 1.687-1.688a1.875 1.875 0 1 1 2.652 2.652L10.582 16.07a4.5 4.5 0 0 1-1.897 1.13L6 18l.8-2.685a4.5 4.5 0 0 1 1.13-1.897l8.932-8.931Zm0 0L19.5 7.125M18 14v4.75A2.25 2.25 0 0 1 15.75 21H5.25A2.25 2.25 0 0 1 3 18.75V8.25A2.25 2.25 0 0 1 5.25 6H10" />
        </svg>    
      </a>

  </div>
  <div class=" py-8 px-5 mx-16">
    <!-- details -->
    <div class="grid grid-cols-3">
      <!-- left side  -->
      <div class="col-span-1  bg-red-50 rounded-l-3xl rounded-br-3xl p-5 mr-2">
        <!-- time -->
        <div class="flex flex-row items-center mb-5 mt-2">
          <svg
            class="icon1 mr-4"
            xmlns="http://www.w3.org/2000/svg"
            viewBox="0 0 512 512"
            fill="#aa3335"
            ><path
              d="M256 0a256 256 0 1 1 0 512A256 256 0 1 1 256 0zM232 120V256c0 8 4 15.5 10.7 20l96 64c11 7.4 25.9 4.4 33.3-6.7s4.4-25.9-6.7-33.3L280 243.2V120c0-13.3-10.7-24-24-24s-24 10.7-24 24z"
            />
          </svg>
          <div class="flex flex-col justify-between items-start text-lg font-bold">
            <div>
              {startTime} - {endTime}
            </div>
            <div class="text-base  text-gray-500">{date}</div>
          </div>
        </div>
        <!-- location -->
        <div class="flex flex-row items-center mb-8">
          <svg
                  class="icon2 mr-3"
                  xmlns="http://www.w3.org/2000/svg"
                  viewBox="0 0 512 512"
                  fill="#aa3335"
                  ><path
                    d="M215.7 499.2C267 435 384 279.4 384 192C384 86 298 0 192 0S0 86 0 192c0 87.4 117 243 168.3 307.2c12.3 15.3 35.1 15.3 47.4 0zM192 128a64 64 0 1 1 0 128 64 64 0 1 1 0-128z"
                  />
          </svg>
          <div class="flex flex-col justify-between items-star text-lgt font-bold">
            <div>
              {location}
            </div>
            <p  class="text-base text-gray-500">
              CUD Campus
            </p>
          </div>
        </div>
        <!-- participants  -->
        <section class="info2">
          
          
            <div class="aligned2">
              <!-- 3 user icons  -->
              <svg
                class="icon4"
                fill="#b5696a"
                xmlns="http://www.w3.org/2000/svg"
                viewBox="0 0 512 512"
                ><path
                  d="M399 384.2C376.9 345.8 335.4 320 288 320H224c-47.4 0-88.9 25.8-111 64.2c35.2 39.2 86.2 63.8 143 63.8s107.8-24.7 143-63.8zM0 256a256 256 0 1 1 512 0A256 256 0 1 1 0 256zm256 16a72 72 0 1 0 0-144 72 72 0 1 0 0 144z"
                /></svg
              >
              <svg
                class="icon3"
                fill="#b5696a"
                xmlns="http://www.w3.org/2000/svg"
                viewBox="0 0 512 512"
                ><path
                  d="M399 384.2C376.9 345.8 335.4 320 288 320H224c-47.4 0-88.9 25.8-111 64.2c35.2 39.2 86.2 63.8 143 63.8s107.8-24.7 143-63.8zM0 256a256 256 0 1 1 512 0A256 256 0 1 1 0 256zm256 16a72 72 0 1 0 0-144 72 72 0 1 0 0 144z"
                /></svg
              >
              <svg
                class="icon3"
                fill="#b5696a"
                xmlns="http://www.w3.org/2000/svg"
                viewBox="0 0 512 512"
                ><path
                  d="M399 384.2C376.9 345.8 335.4 320 288 320H224c-47.4 0-88.9 25.8-111 64.2c35.2 39.2 86.2 63.8 143 63.8s107.8-24.7 143-63.8zM0 256a256 256 0 1 1 512 0A256 256 0 1 1 0 256zm256 16a72 72 0 1 0 0-144 72 72 0 1 0 0 144z"
                /></svg
              >
            </div>
            <div class="participantsNum text-gray-500">
              <a href="/{category}/{subcategory}/{id}/participants">{` +${participants.length} participants`}</a>
            </div>
          
        </section>
      </div>

      <!-- about  -->
      <div class="col-span-2 p-7 bg-neutral-100 rounded-r-3xl rounded-bl-3xl relative">
        <h2 class="font-bold text-xl mb-5">About:</h2>
        <div class="description">{description}</div>
        <div class="flex justify-end mt-5">
          <button class="bg-red-800 hover:bg-red-700 px-4 py-2 text-slate-50 text-end text-sm rounded-lg">Register</button>
        </div>
      </div>
    </div>
  </div>
</div>

<style>

.aligned2 {
  display: flex;
  flex-direction: row;
  justify-content: center;
  align-items: center;
}

.info2 {
  display: flex;
  align-items: center;
  height: 30px;
  margin-bottom: 5px;
  margin-top: 30%;
}

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
.icon3 {
  width: 16px;
  height: 16px;
  margin-right: -4px;
}
.icon4 {
  width: 16px;
  height: 16px;
  margin-left: 3px;
  margin-right: -4px;
}

.participantsNum {
  font-size: 14px;
  font-weight: 700;
  margin-left: 10px;
}
</style>

