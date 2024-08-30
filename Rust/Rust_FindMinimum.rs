fn find_minimum(arr: &[i32]) -> i32
{
    let mut min = arr[0];

    for &item in arr.iter().skip(1)
    {
        if item < min
        {
            min = item;
        }
    }

    min
}