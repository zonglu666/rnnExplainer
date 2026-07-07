import App from './App.svelte';

// Read defaultNN from URL path parameter, e.g. ?nn=RNN or ?nn=CNN
function getDefaultNN() {
	const params = new URLSearchParams(window.location.search);
	const nn = params.get('nn');
	if (nn === 'RNN' || nn === 'CNN') return nn;
	return 'RNN'; // fallback default
}

const app = new App({
	target: document.body,
	props: {
		defaultNN: getDefaultNN(),
	}
});

export default app;