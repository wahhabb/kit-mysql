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
    header {
        background-color: aqua;
        padding: 1.5em 0;
    }
    header h1 {
        text-align: center;
    }

</style>