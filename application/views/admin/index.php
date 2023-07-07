<link rel="shortcut icon" href="<?= base_url() ?>front-end/assets/img/logo-perum.png">
<!-- Begin Page Content -->
<div class="container-fluid">

	<!-- Page Heading -->
	<h2>
		Selamat datang,  <span class="mr-2 d-none d-lg-inline text-gray-600 small"><?= $user['name']; ?></span>
	</h2>
	<h4 style= "margin-left: 80%;">
		<script type='text/javascript'>
			var months = ['Januari', 'Februari', 'Maret', 'April', 'Mei',
				'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'
			];

			var myDays = ['Minggu', 'Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat', 'Sabtu'];

			var date = new Date();

			var day = date.getDate();

			var month = date.getMonth();

			var thisDay = date.getDay(),

				thisDay = myDays[thisDay];
			var yy = date.getYear();


			var year = (yy < 1000) ? yy + 1900 : yy;

			document.write(thisDay + ', ' + day + ' ' + months[month] + ' ' + year);
		</script>
	</h4>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->