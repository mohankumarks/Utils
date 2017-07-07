validateEstimation = (input) ->
	input = input.split(" ")
    [weekFlag, dayFlag, hourFlag, result, inputLength, i] = [false, false, false, false, input.length, 0]

    for value in input
    	[estimation, estimationType, j] = ["", "", 0]
        valueLength = value.length;

        while j < valueLength
        	char = value.charAt(j)
            if(!isNaN(char))
            	estimation += char
            else
                estimationType += char
            j++

        estimation = if estimation.length != 0 then parseInt(estimation) else 0

        if(estimationType == "w")
        	if(estimation <= 0 || weekFlag || dayFlag || hourFlag)
        		break
            else
            	weekFlag = true
        else if(estimationType == "d")
            if(estimation <= 0 || estimation > 6 || dayFlag || hourFlag)
                break
            else
                dayFlag = true
        else if(estimationType == "h")
            if(estimation <= 0 || estimation > 23 || hourFlag)
                break
            else
                hourFlag = true
        else
            break

        if(i == (inputLength - 1))
        	result = true
        
        i++

    return result
