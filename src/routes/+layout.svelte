<script>
    /**
     * @typedef {Object} Props
     * @property {import('svelte').Snippet} [children]
     */

    /** @type {Props} */
    let { children } = $props();
</script>

<header>
    <h1>
        State Data from MySQL
    </h1>
</header>
{@render children?.()}

<style>
    body {
        background-color: rgba(244, 230, 37, 0.13);
    }
    header {
        background-color: darkslateblue;
        color: white;
        padding: 1.5em 0;
        margin: -1em -1em 0;
    }
    header h1 {
        text-align: center;
    }
</style>