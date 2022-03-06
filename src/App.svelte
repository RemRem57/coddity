<script>
	import { fade, blur } from 'svelte/transition'

    let count = 0;

    function handleClick() {
        count += 1;
    }

    export let name;
</script>

<main>
    {#key count}
        <h1>Hello {name}<span in:blur="{{duration: 200 }}">{count > 0 ? ' '+count : ''}</span>
        {count > 0 ? (count > 1 ? ' times' : ' time') : ''}!</h1>
    {/key}

    <p>Visit the <a href="https://svelte.dev/tutorial">Svelte tutorial</a> to learn how to build Svelte apps.</p>
    <button on:click={handleClick}>
        Click
    </button>
</main>

<style>
    main {
        text-align: center;
        padding: 1em;
        max-width: 240px;
        margin: 0 auto;
    }

    h1 {
        color: #ff3e00;
        text-transform: uppercase;
        font-size: 4em;
        font-weight: 100;
    }

    @media (min-width: 640px) {
        main {
            max-width: none;
        }
    }
</style>