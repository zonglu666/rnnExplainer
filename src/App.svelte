<script>
	export let defaultNN;
	import Explainer from './Explainer.svelte';
	import Header from './Header.svelte';

	const NNlist= [{ 
			id: 1, 
			name: `卷积神经网络 Convolutional Neural Network`, 
			alis: `CNN`,
		},{ 
			id: 2, 
			name: `循环神经网络 Recurrent Neural Network`, 
			alis: `RNN`,
		}
	];

	let selected;
	
	selected = defaultNN && defaultNN===`RNN` ? NNlist[1]: NNlist[0];

</script>

<style>
</style>

<div id="app-page">
	<Header bind:selectedNN={selected} NNs={NNlist}/> 
	<Explainer nn={selected.alis}/>
</div>
