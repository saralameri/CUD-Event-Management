<script>
    import Event from "$lib/components/Event.svelte"
    export let data;
    const events = data.subCategories.flatMap(subCategory => subCategory.events);
    const category = "society"
    const subcategory = "Wellness Society"
    
</script>
    


<div>
  <section>
    <div class="text-2xl font-bold text-white bg-red-800 text-center w-[20%] mt-10 mb-10 rounded-r-full py-4"><h1>Wellness Society</h1></div>
  </section>
</div>
  
<body>
    {#each events as {id, title, date, startTime, endTime, location, description}, index}
      <Event
        id={id}
        title={title}
        date={date}
        startTime={startTime}
        endTime={endTime}
        location={location}
        description={description}
        index={index+1}
        category={category}
        subcategory={subcategory}
      />
    {/each}

</body>

