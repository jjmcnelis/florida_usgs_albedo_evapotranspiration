#!/opt/ActivePerl-5.12/bin/perl

#this has check for latest proc_date for specific dates...]

if ( $#ARGV +1 ==0)
{die qq!

$0    dir lat lon in_szn in_od product
$0    /tmp/crap/alb  35.958767 -84.287433 local|.35 .02 MCD43B
$0     /home/smm/c  42.537756 -72.171478 local .2 MOD43B
 

NIR_black.csv SW_black.csv  band 8,10 etc

this thing spits out a file  run it thru sort to get dates lined up
 
 
we read lines like
MOD43B1.A2002001.h11v05.004.2003188180629.BRDF_Albedo_Parameters.Num_Land_Bands_Plus3_01.Num_Parameters_01,MOD43B1,A2002001,Lat35.958767Lon-84.287433Samp7Line7,2003188180629,BRDF_Albedo_Parameters.Num_Land_Bands_Plus3_01.Num_Parameters_01,72,58,62,64,57,52,59,66,85,81,59,51,59,70,69,70,67,60,88,113,80,57,63,76,88,84,74,72,76,104,113,75,61,61,64,76,86,76,63,50,48,52,86,68,67,36,39,53,63
MOD43B1.A2002017.h11v05.004.2003194061649.BRDF_Albedo_Parameters.Num_Land_Bands_Plus3_01.Num_Parameters_01,MOD43B1,A2002017,Lat35.958767Lon-84.287433Samp7Line7,2003194061649,BRDF_Albedo_Parameters.Num_Land_Bands_Plus3_01.Num_Parameters_01,70,60,62,65,66,63,63,63,86,79,58,63,64,72,66,65,59,62,80,110,94,79,63,55,107,68,64,59,88,101,70,58,78,59,52,67,72,66,61,60,47,54,74,58,64,89,87,83,59
out like
MCD43B.A2002193.fn_af00mong.004.2004049214202.VIS_black,MCD43B,A2002193,fn_af00mong,2004049214202,VIS_black,0.046882,0.047178,0.053043,0.055339,0.050082,0.044738,0.043226,0.057691,0.053330,0.054082,0.059914,0.072860,0.061998,0.051996,0.066587,0.065576,0.065528,0.059929,0.057956,0.049956,0.068291,0.073025,0.063852,0.052322,0.049268,0.052834,0.051627,0.061739,0.075475,0.069002,0.057412,0.047852,0.049163,0.056795,0.051657,0.062442,0.065600,0.051771,0.047483,0.049962,0.054355,0.052537,0.057472,0.064651,0.059403,0.057717,0.051507,0.052082,0.052426
MCD43B.A2002193.fn_af00mong.004.2004049214202.VIS_white,MCD43B,A2002193,fn_af00mong,2004049214202,VIS_white,0.046505,0.046693,0.053149,0.055337,0.049315,0.043937,0.042882,0.062658,0.060173,0.061174,0.059637,0.073415,0.063950,0.053929,0.072226,0.074122,0.073933,0.067553,0.058794,0.050794,0.074037,0.073072,0.067332,0.052261,0.050038,0.052315,0.052472,0.066847,0.078821,0.071932,0.060576,0.049362,0.050607,0.057149,0.052585,0.063719,0.065373,0.053040,0.047905,0.049827,0.054393,0.052127,0.058831,0.066552,0.059583,0.059818,0.051014,0.051315,0.051692
MCD43B.A2002193.fn_af00mong.004.2004049214202.VIS_actual,MCD43B,A2002193,fn_af00mong,2004049214202,VIS_actual,0.046787,0.047057,0.053069,0.055339,0.049890,0.044538,0.043140,0.058933,0.055041,0.055855,0.059845,0.072999,0.062486,0.052479,0.067997,0.067713,0.067630,0.061835,0.058166,0.050166,0.069727,0.073037,0.064722,0.052306,0.049460,0.052704,0.051838,0.063016,0.076312,0.069735,0.058203,0.048229,0.049524,0.056883,0.051889,0.062761,0.065543,0.052088,0.047589,0.049928,0.054364,0.052435,0.057812,0.065126,0.059448,0.058242,0.051384,0.051890,0.052243
MCD43B.A2002193.fn_af00mong.004.2004049214202.NIR_black,MCD43B,A2002193,fn_af00mong,2004049214202,NIR_black,0.214365,0.214020,0.216035,0.220586,0.216596,0.211634,0.215403,0.222354,0.214058,0.219202,0.229590,0.239275,0.222244,0.213668,0.231657,0.236496,0.233744,0.222705,0.224748,0.212155,0.232657,0.238633,0.225954,0.217034,0.212843,0.218346,0.215628,0.224762,0.242065,0.236338,0.222612,0.216214,0.216942,0.213002,0.210508,0.226882,0.234128,0.215090,0.214459,0.221155,0.223173,0.210900,0.224649,0.234062,0.223394,0.218987,0.220852,0.223507,0.210883
MCD43B.A2002193.fn_af00mong.004.2004049214202.NIR_white,MCD43B,A2002193,fn_af00mong,2004049214202,NIR_white,0.232098,0.231720,0.233776,0.236997,0.237960,0.228186,0.232264,0.242994,0.234806,0.240373,0.249957,0.257722,0.238640,0.226400,0.253186,0.259511,0.256511,0.244375,0.243611,0.227295,0.254186,0.251247,0.239515,0.230837,0.228050,0.234051,0.231183,0.245617,0.255949,0.252998,0.238127,0.232527,0.234418,0.228674,0.228665,0.241216,0.248195,0.226109,0.228536,0.236295,0.240341,0.227262,0.239273,0.250906,0.237271,0.232648,0.237073,0.243615,0.227186
MCD43B.A2002193.fn_af00mong.004.2004049214202.NIR_actual,MCD43B,A2002193,fn_af00mong,2004049214202,NIR_actual,0.216209,0.215861,0.217881,0.222293,0.218818,0.213356,0.217157,0.224501,0.216216,0.221404,0.231708,0.241194,0.223950,0.214992,0.233896,0.238890,0.236112,0.224959,0.226710,0.213729,0.234896,0.239945,0.227364,0.218470,0.214425,0.219980,0.217245,0.226930,0.243509,0.238071,0.224226,0.217911,0.218760,0.214632,0.212397,0.228373,0.235591,0.216236,0.215923,0.222729,0.224958,0.212602,0.226170,0.235813,0.224837,0.220407,0.222539,0.225598,0.212578
MCD43B.A2002193.fn_af00mong.004.2004049214202.SW_black,MCD43B,A2002193,fn_af00mong,2004049214202,SW_black,0.141128,0.141256,0.144352,0.146783,0.140320,0.137343,0.137855,0.148871,0.141518,0.145614,0.151664,0.163913,0.151001,0.137039,0.157719,0.158813,0.156061,0.148414,0.149424,0.139496,0.153623,0.164822,0.151903,0.142223,0.138759,0.144903,0.142151,0.149871,0.165783,0.161999,0.148816,0.141064,0.140696,0.144191,0.138799,0.151391,0.160526,0.142471,0.140280,0.145151,0.148625,0.140960,0.149918,0.156553,0.151559,0.149217,0.145697,0.148479,0.140664
MCD43B.A2002193.fn_af00mong.004.2004049214202.SW_white,MCD43B,A2002193,fn_af00mong,2004049214202,SW_white,0.150313,0.150824,0.154202,0.155935,0.152039,0.146179,0.146234,0.161230,0.154799,0.159178,0.161447,0.175416,0.159822,0.141048,0.170609,0.173937,0.170936,0.162367,0.160471,0.147800,0.166231,0.173101,0.160423,0.149721,0.146856,0.153423,0.150422,0.162230,0.174935,0.172771,0.158068,0.150067,0.150580,0.153558,0.147992,0.160368,0.168913,0.149721,0.148934,0.153422,0.159281,0.150636,0.158480,0.166012,0.160046,0.159658,0.155580,0.160663,0.150447
MCD43B.A2002193.fn_af00mong.004.2004049214202.SW_actual,MCD43B,A2002193,fn_af00mong,2004049214202,SW_actual,0.142946,0.143151,0.146303,0.148595,0.142640,0.139093,0.139514,0.151318,0.144148,0.148300,0.153601,0.166190,0.152748,0.137833,0.160271,0.161807,0.159006,0.151177,0.151612,0.141140,0.156119,0.166461,0.153590,0.143708,0.140362,0.146590,0.143789,0.152318,0.167595,0.164132,0.150648,0.142847,0.142653,0.146046,0.140619,0.153169,0.162187,0.143907,0.141993,0.146789,0.150735,0.142876,0.151613,0.158426,0.153239,0.151285,0.147653,0.150891,0.142601
MCD43B.A2002193.fn_af00mong.004.2004049214202.BRDF_Albedo_Quality.Num_QC_Words_01,MCD43B,A2002193,fn_af00mong,2004049214202,BRDF_Albedo_Qualit
this is a batch thingie
! ;}

$dir=		$ARGV[0];
$lat=		$ARGV[1];
$lon=		$ARGV[2];
$in_szn=	$ARGV[3];
$in_od=		$ARGV[4];
$product=	$ARGV[5]; #mcd or mod

foreach  $a_band("vis","nir","shortwave") 
{
if($a_band eq 'vis'){$a_band_num = "08"}
if($a_band eq 'nir'){$a_band_num = "09"}
if($a_band eq 'shortwave'){$a_band_num = "10"}
@file_1=`cat  $dir/BRDF_Albedo_Parameters_$a_band.Num_Parameters_01.csv`;  
@file_2=`cat  $dir/BRDF_Albedo_Parameters_$a_band.Num_Parameters_02.csv`;   
@file_3=`cat  $dir/BRDF_Albedo_Parameters_$a_band.Num_Parameters_03.csv`;   
foreach $i(0..$#file_1) #walk thru lines [dates] of the files
	{
	#are in sync by date, get date and do solar if needed
	chomp($file_1[$i]);chomp($file_2[$i]);chomp($file_3[$i]);
	@s_1=split(/,/,$file_1[$i]);
	$first_comma=$s_1[0];
	$site=$s_1[3];
	$proc_date=$s_1[4];
	$modis_date=$s_1[2];
	$day_of_year=substr($modis_date,5,3);
	if($in_szn eq "local")
		{
		$command="./plug_1/local_szn.1.exe $lat $day_of_year";
		$szn=`$command`;chomp($szn);
		@ss=split(/ /,$szn);
		$arg_szn=$ss[5];
		#print "SZN $command <$szn><$arg_szn>\n";
		}
	else  #(float, range: 0.0-89.0 degrees) from actual_albedo_hdf.c
		{
		$arg_szn=$in_szn;
		if($in_szn < 0.0){$arg_szn = 0.0}
		if($in_szn > 89.0){$arg_szn = 89.0}
		}
	@s_2=split(/,/,$file_2[$i]);
	@s_3=split(/,/,$file_3[$i]);
	splice(@s_1,0,6);
	splice(@s_2,0,6);
	splice(@s_3,0,6);
	$bsa="";$wsa="";$alb="";
	$tmp_file="$dir/pinkie.$a_band";
	open (PINKIE,">$tmp_file");
	foreach $i(0..$#s_1) #walk thru pixelsa on this line
		{
		print PINKIE "$s_1[$i] $s_2[$i] $s_3[$i]\n";
		}#end foreach $i(0..$#s_1)
	close(PINKIE);
		$command="./plug_1/albedo.ascii.file.4.exe $tmp_file $arg_szn $in_od $a_band_num";  
		#print "COMM $command\n";
		@ans=`$command`;
	foreach $a(@ans)
		{
		chomp($a);
		@ss=split(/\s+/,$a);
		$bsa.="$ss[1],";$wsa.="$ss[3],";$alb.="$ss[5],";	
		}#end foreach $i(0..$#s_1)
		chop($bsa);chop($wsa);chop($alb); #trailing comma
	#now have all 23 this date ,print them
	$first_comma =~ s/D43A1/D43A/; #MOD43B1 to MOD43B  
	@ss=split(/\./,$first_comma); #MOD43B.A2002001.h11v05.004.2003188180629.longbandname
	$str="$ss[0].$ss[1].$ss[2].$ss[3].$ss[4]";
	$str_bsa="$str.$a_band"."_black,$product,$modis_date,$site,$proc_date,$a_band"."_black,$bsa";
	$str_wsa="$str.$a_band"."_white,$product,$modis_date,$site,$proc_date,$a_band"."_white,$wsa";
	$str_alb="$str.$a_band"."_actual,$product,$modis_date,$site,$proc_date,$a_band"."_actual,$alb";	
	print "$str_bsa\n$str_wsa\n$str_alb\n"
	
	}#end foreach $i(0..$#file_1)
}# end 	 $a_band("08","09","10")

#at end cat this guy then sort  BRDF_Albedo_Quality.Num_QC_Words_01 [like 7x7
#$a=`cat $dir/BRDF_Albedo_Quality.Num_QC_Words_01.csv`;
#$a =~ s/D43B1/D43B/g;
#print $a; #sort output to get it right in date order with qc

