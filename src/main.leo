// The 'sorting' main function.
function main(arr: [u32; 10]) -> [u32; 10] {
    //return insertion_sort(arr);    
    return selection_sort(arr);    
}

function selection_sort(arr:[u32; 10]) -> [u32; 10] {
    const n:u32 = 10;

    // One by one move boundary of unsorted subarray
    for i in 0..n - 1 {
        // Find the minimum element in unsorted array
        let min_idx = i;
        
        for j in i + 1..n {
            if (arr[j] < arr[min_idx]) {
                min_idx = j;
            }
        }
        
        let temp = arr[min_idx];
        arr[min_idx] = arr[i];
        arr[i] = temp;
    }

    return arr;
}

function insertion_sort(arr:[u32; 10]) -> [u32; 10] {
    const n:u32 = 10;

    for i in 1..n {
        let key:u32 = arr[i];
        let j:u32 = i - 1;
        
        for m in 0..i {
            if arr[j] > key {
                arr[j+1] = arr[j];
                j -= 1;
            }
        }

        arr[j + 1] = key;
    }

    return arr;
}