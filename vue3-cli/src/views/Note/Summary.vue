<template>
	<div class="Summary bg-light px-2">
		<h5 class="text-center py-1 mt-0">Summary</h5>
		<div class="summary-content mx-4 mt-0 mb-5">
			<form action="" method="">
				<span class="">选择你的类型：
				</span>
				<select name="type" class="bg-light">
					<option value="CSS3">CSS3</option>
					<option value="H5">H5</option>
					<option value="Vue">Vue</option>
				</select>
				<textarea class="bg-info d-block my-1" placeholder="输入你的summary" required="required"></textarea>
				<button type="submit" class="btn btn-primary ml-3">提交</button>
				<button type="reset" class="btn bg-secondary ml-3 b">重写</button>
			</form>
		</div>
	</div>
</template>

<script>
	// @ is an alias to /src

	export default {
		name: 'Summary',
		props: {

		},
		//ES6д��
		data() {
			return {

			}
		},
		computed: {

		},
		methods: {

		},
		components: {

		}
	}
</script>

<style scoped>
	.Summary {}
	a,button,select{
		outline: none;
	}
	textarea {
		outline: none;
		border-radius: 8px;
		height: 400px;
		width: 95%;
		resize: none;
	}
</style>