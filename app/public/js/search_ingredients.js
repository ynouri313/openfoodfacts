$(document).ready(async function() {
    let data = await fetch('/ingredient', {
        method: 'GET',
        headers: {
            'Content-Type': 'application/json'
        }
    }).then(res => res.json());

    $('#ingredients').DataTable({
        data: data,
        columns: [
            { data: 'product_name', title: 'Product Name' },
            { data: 'ecoscore_score', title: 'EcoScore' },
            { data: 'nutriscore_grade', title: 'NutriScore' },
            { data: 'nova_groups', title: 'Nova Score' },
        ],

        createdRow: function(row, rowData) {
            $(row).addClass('row-hover');
            $(row).attr('data-id', rowData.id);
        },
        initComplete: function() {
            $('.dataTables_paginate').css('margin-top', '20px');
        }
    });

    $('#ingredients tbody').on('click', 'tr', function() {
        const table = $('#ingredients').DataTable();
        const data = table.row(this).data();
        if (data && data._id) {
            window.location.href = `/ingredient/${data._id}`;
        }
    });
});