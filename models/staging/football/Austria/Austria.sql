{{ config(tags=["football_staging"])}}

SELECT
		ROW_NUMBER () OVER (Partition By season ORDER By date )			AS 'GameNumber'
		,ROW_NUMBER () OVER (Partition By season ORDER By date )		AS 'Gameweek'
		,Date															AS 'MatchDay'
		,time 															AS 'MatchTime'
		,REPLACE ( CAST(Season AS VARCHAR),'.','/' )					AS 'Season'	
		,Country														AS 'Country'
		,League															AS 'League'
		,1																AS 'Division'
		,Home															AS 'HomeTeam'
		,Away															AS 'AwayTeam'
		,HG																AS 'FulltimeHomeGoal'
		,AG																AS 'FulltimeAwayGoal'
		,Res															AS 'FullTimeResult'
		,PH																AS 'PinnaceleHome'
		,PD																AS 'PinnacleDraw'
		,PA																AS 'PinnacleAway'		
		,MaxH															AS 'OddsportalMaxHome'
		,MaxD															AS 'OddsportalMaxDraw'
		,MaxA															AS 'OddsportalMaxAway'
		,AvgH															AS 'OddsportalAvgHome'
		,AvgD															AS 'OddsportalAvgDraw'
		,AvgA															AS 'OddsportalAvgAway'
  
	FROM {{source('Austria','s_1219')}}
