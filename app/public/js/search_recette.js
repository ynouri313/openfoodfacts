$(document).ready(async function() {
    let data = await fetch('/recette', {
        method: 'GET',
        headers: {
            'Content-Type': 'application/json'
        }
    }).then(res => res.json());

    $('#recette').DataTable({
        data: data,
        columns: [
            { data: 'nomRecette', title: 'Recipe Name', width: '25%'  },
            { data: 'imgUrl', title: 'Image', render: function(data) {
                    return `<img src="${data}" alt="Recipe Image" style="width: 600px; height: 300px; object-fit: contain;">`;
                }, width: '75%'},
        ],

        createdRow: function(row, rowData) {
            $(row).addClass('row-hover');
            $(row).attr('data-id', rowData.id);
        },
        initComplete: function() {
            $('.dataTables_paginate').css('margin-top', '20px');
        }
    });

    $('#recette tbody').on('click', 'tr', function() {
        const table = $('#recette').DataTable();
        const data = table.row(this).data();
        if (data && data.id) {
            window.location.href = `/recette/${data.id}`;
        }
    });
});