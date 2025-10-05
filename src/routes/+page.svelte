<script>
    let res;
	let statedata = $state('');
	async function xget(st) {
        const response = await fetch("/api/getstate", {
            method: 'POST',
            body: JSON.stringify({st}),
            headers: {
                'content-type': 'application/json'
            }
        
        });

        res =  await response.json();
        statedata = res[0];
	}
    let { data } = $props();
</script>

<h1>Get State Information</h1>
{#if statedata}
    <p>The capital of {statedata.state} is {statedata.capital}!</p>
    <p>Its abbreviation is {statedata.abbr}.</p>
    <p>It is in the {statedata.region} region.</p>
    <p>Its state bird is the {statedata.bird}.</p>
{/if}
<h2>Click state name to see data above.</h2>
{#each data.data as state}
<button onclick={() => xget(state.state)}>{state.state}</button>{/each}


<style>
    button, p {
        padding: .5em .8em;
        margin: .5em;
        font-size: 110%;
    }
    button {
        background-color: #DDF;
    }
 </style>