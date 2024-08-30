fn partition(arr: &mut [i32], p: usize, r: usize) -> usize 
{
    let x = arr[r];
    let mut i = p as isize - 1;

    for j in p..r
    {
        if arr[j] < x
        {
            i += 1;
            arr.swap(i as usize, j);
        }
    }

    arr.swap((i + 1) as usize, r);
    (i + 1) as usize
}

fn quicksort(arr: &mut [i32], p: usize, r:usize)
{
    if p < r
    {
        let q = partition(arr, p, r);
        if q > 0
        {
            quicksort(arr, p, q - 1);
        }
        quicksort(arr, q + 1, r);
    }
}