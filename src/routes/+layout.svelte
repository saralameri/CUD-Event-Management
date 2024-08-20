<script lang="ts">
  import "../app.css";
  import CUDlogo from '$lib/images/CUDlogo.png';
  import img from '$lib/images/image.png';

  export let data;
  let searchTerm = '';

   
</script>



<nav class="flex items-center justify-between px-10">
  <div class="flex flex-row w-[60%] items-center">
    <a  class="flex items-center" href="/">
      <img src={CUDlogo} alt="CUD Logo" class="h-[8vh]"/>
      <img src={img} alt="CUD Logo" class="h-[8vh]"/>
    </a>
    {#each data.categories as {name: catName, subCategory}}
      <div class="dropdown"> 
          <button class="dropbtn" >{catName}</button>
          <div class="dropdown-content top-16 ml-7">
            {#each subCategory as { name: subCatName}, i}
            <a href={subCatName === "Wellness Society" || subCatName === "Game Club" || subCatName === "CV Workshop" ? `/${catName.toLowerCase()}/${subCatName}` : "#"}>{subCatName}</a>
            {#if i !== subCategory.length - 1}
                    <hr>
                {/if}
            {/each}
          </div>
      </div>
    {/each}
  </div>
 
 
 
  <!-- Search bar with dropdown -->
  <div class="dropdown">
    <div class="relative">
      <input class="text-sm w-[20vw] px-2 py-1 rounded-md mb-2 font-light" style="background-color: #e9e9e9; color: gray;" placeholder="Enter search term" bind:value={searchTerm} />
      <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="gray" class="absolute right-2 top-1  w-5 h-5 ">
        <path stroke-linecap="round" stroke-linejoin="round" d="m21 21-5.197-5.197m0 0A7.5 7.5 0 1 0 5.196 5.196a7.5 7.5 0 0 0 10.607 10.607Z" />
      </svg>
 
    </div>
    
    <ul class="dropdown-content ">
      <!-- search in events -->
      {#each data.events as {id, title, categoryName, subCategoryName}, i}
        {#if title.toLowerCase().includes(searchTerm.toLowerCase())}
          <a href="/{categoryName.toLocaleLowerCase()}/{subCategoryName}/{id}">{title}</a>
          {#if i !== data.events.length - 1}
            <hr>
          {/if}
        {/if}
      {/each}
    </ul>
  </div>
</nav>
 

<slot />



<style>
  ::placeholder {
    color: gray;
    opacity: 1; /* Firefox */
  }
  
  ::-ms-input-placeholder { /* Edge 12 -18 */
    color: gray;
  }
      /* Navbar container */
  nav {
    overflow: hidden;
    background-color: #3d4b56;
    font-family: Arial;
  }
  
  /* Links inside the navbar */
  nav a {
    float: left;
    font-size: 16px;
    color: white;
    text-align: center;
    padding: 14px 10px;
    text-decoration: none;
  }
  
  /* The dropdown container */
  .dropdown {
    float: left;
    overflow: hidden;
  }
  
  /* Dropdown button */
  .dropdown .dropbtn {
    font-size: 16px;
    border: none;
    outline: none;
    /* color: rgb(240, 238, 238); */
    color: rgba(245, 245, 245, 0.85);
    padding: 14px 16px;
  }
  .dropdown .dropbtn:hover{
   color: white;
  }
  
  /* Add a red background color to navbar links on hover */
  
  nav a:hover {
    color: #c51c2d;
  }
  
  /* Dropdown content (hidden by default) */
  .dropdown-content {
    border-radius: 7px;
    display: none;
    position: absolute;
    background-color: #F5F5F5;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
  }

  /* Links inside the dropdown */
  .dropdown-content a {
    float: none;
    font-size:13px;
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
  }
  
  /* Add a grey background color to dropdown links on hover */
  .dropdown-content a:hover {
    text-decoration-color: #8C2822;
  }
  
  /* Show the dropdown menu on hover */
  .dropdown:hover .dropdown-content {
    display: block;
  }
  </style>
  