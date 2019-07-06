Title: Books
Slug: books
Author: Kevin

I try to read as often as I can.  Generated from my [calibre](https://calibre-ebook.com/) library as [CSV](/media/library/books.csv) and converted to [JSON](/media/library/books.json) to be rendered using [DataTables](https://datatables.net/examples/ajax/custom_data_flat.html).

<table class="table table-hover table-striped" id="library-table">
		<thead class="thead-light">
				<tr>
						<th>Author</th>
						<th>Title</th>
						<th>Series</th>
						<th>ISBN</th>
				</tr>
		</thead>
</table>

<!--<script src="/theme/js/jquery-3.3.1.min.js"></script>-->
<script src="/theme/js/datatables.min.js"></script>
<script>
		$(document).ready(function() {
				$('#library-table').DataTable({
						colReorder: true,
						fixedHeader: true,
						paging: false,
						ajax: {
								"url": "/media/library/books.json",
								"dataSrc": ""
						},
						columns: [
								{ "data": "authors" },
								{ "data": "title" },
								{ "data": "series" },
								{ "data": "isbn" },
						]
				});
		});
</script>
