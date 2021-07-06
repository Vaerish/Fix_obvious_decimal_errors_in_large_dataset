df =  read.csv("C:\\Users\\shado_000\\datamining\\data-mining-data\\5402_dataset.csv")


for (i in 1:dim(df)[1]) {
	if( !is.na(df$AIT202[i]) && df$AIT202[i] > 10)
	{
		while((df$AIT202[i] > 10))
		{
			df$AIT202[i] <- df$AIT202[i] /10
		}
	}
	if( !is.na(df$AIT202[i]) && df$AIT202[i] < 1)
	{
		while((df$AIT202[i] < 1))
		{
			df$AIT202[i] <- df$AIT202[i] *10
		}
	}

}



write.csv(df,"C:\\Users\\shado_000\\datamining\\data-mining-data\\5402_dataset2.csv", row.names = FALSE)
