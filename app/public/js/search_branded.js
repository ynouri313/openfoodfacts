$(document).ready(async function() {
    let data = await fetch('/branded', {
        method: 'GET',
        headers: {
            'Content-Type': 'application/json'
        }
    }).then(res => res.json());
    console.log(data);
    $('#branded').DataTable({
        data: data,
        columns: [
            { data: 'brandOwner', title: 'Brand Name' },
            { data: 'brandedFoodCategory', title: 'Categories' },
            { data: 'description', title: 'Description' },
            { data: 'servingSize', title: 'Serving Size' },
        ],

        createdRow: function(row, rowData) {
            $(row).addClass('row-hover');
            $(row).attr('data-id', rowData.id);
        },
        initComplete: function() {
            $('.dataTables_paginate').css('margin-top', '20px');
        }
    });

    $('#branded tbody').on('click', 'tr', function() {
        const table = $('#branded').DataTable();
        const data = table.row(this).data();
        if (data && data._id) {
            window.location.href = `/branded/${data._id}`;
        }
    });
});
