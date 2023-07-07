<!-- Footer -->
<footer class="sticky-footer bg-white">
  <div class="container my-auto">
    <div class="copyright text-center my-auto">
      <span>Copyright &copy; Proyek Perumahan De'Diamond Park <?= date('Y'); ?></span>
    </div>
  </div>
</footer>
<!-- End of Footer -->

</div>
<!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
  <i class="fas fa-angle-up"></i>
</a>

<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Apakah kamu yakin untuk Keluar?</h5>
        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>
        </button>
      </div>
      <div class="modal-footer">
        <button class="btn btn-secondary" type="button" data-dismiss="modal">Batal</button>
        <a class="btn btn-primary" href="<?= base_url('auth/logout'); ?>">Keluar</a>
      </div>
    </div>
  </div>
</div>

<!-- Logout Delete Confirmation-->
<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Apakah kamu yakin?</h5>
        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>
        </button>
      </div>
      <div class="modal-body">Data yang dihapus tidak akan bisa dikembalikan.</div>
      <div class="modal-footer">
        <button class="btn btn-secondary" type="button" data-dismiss="modal">Batal</button>
        <a id="btn-delete" class="btn btn-danger" href="#">Hapus</a>
      </div>
    </div>
  </div>
</div>

<!-- Bootstrap core JavaScript-->
<script src="<?= base_url('assets2/'); ?>assets/vendor/jquery/jquery.min.js"></script>
<script src="<?= base_url('assets2/'); ?>assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="<?= base_url('assets2/'); ?>assets/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Page level plugin JavaScript-->
<script src="<?= base_url('assets2/'); ?>vendor/chart.js/Chart.min.js"></script>
<script src="<?= base_url('assets2/'); ?>vendor/datatables/jquery.dataTables.js"></script>
<script src="<?= base_url('assets2/'); ?>vendor/datatables/dataTables.bootstrap4.js"></script>

<!-- Custom scripts for all pages-->
<script src="<?= base_url('assets2/'); ?>assets/js/sb-admin-2.min.js"></script>

<!-- Demo scripts for this page-->
<script src="<?= base_url('assets2/js/demo/datatables-demo.js'); ?>"></script>
<script src="<?= base_url('assets2/js/demo/chart-area-demo.js'); ?>"></script>

<script>
  function deleteConfirm(url) {
    $('#btn-delete').attr('href', url);
    $('#deleteModal').modal();
  }
</script>

<script>
  $('.form-check-input').on('click', function() {
    const menuId = $(this).data('menu');
    const roleId = $(this).data('role');

    $.ajax({
      url: "<?= base_url('admin/changeaccess'); ?>",
      type: 'post',
      data: {
        menuId: menuId,
        roleId: roleId
      },
      success: function() {
        document.location.href = "<?= base_url('admin/roleaccess/'); ?>" + roleId;
      }
    })
  });
</script>

</body>

</html>