@extends('layouts.template')

@section('content')
    <div class="widget red span3" onTablet="span4" onDesktop="span3">
        <h3><span class="glyphicons globe"><i></i></span>CORPORATE CONTRIBUTION</h3>
        <hr>
        <div class="content">
            <div class="verticalChart">
                @foreach ($jawabans[0] as $item)
                    <div class="singleBar">
                        <div class="bar">
                            <div class="value">
                                <span>{{ $item->jumlah }}</span>
                            </div>
                        </div>
                        <div class="title">{{ $item->jawaban }}</div>
                    </div>
                @endforeach
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <!--/span-->

    <div class="widget blue span3" onTablet="span4" onDesktop="span3">
        <h3><span class="glyphicons magic"><i></i></span>STAKEHOLDER ORIENTATION</h3>
        <hr>
        <div class="content">
            <div class="verticalChart">
                @foreach ($jawabans[1] as $item)
                    <div class="singleBar">
                        <div class="bar">
                            <div class="value">
                                <span>{{ $item->jumlah }}</span>
                            </div>
                        </div>
                        <div class="title">{{ $item->jawaban }}</div>
                    </div>
                @endforeach
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <!--/span-->

    <div class="widget yellow span3" onTablet="span4" onDesktop="span3">
        <h3><span class="glyphicons pie_chart"><i></i></span>OPERATIONAL EXCELLENCE</h3>
        <hr>
        <div class="content">
            <div class="verticalChart">
                @foreach ($jawabans[2] as $item)
                    <div class="singleBar">

                        <div class="bar">

                            <div class="value">
                                <span>{{ $item->jumlah }}</span>
                            </div>

                        </div>

                        <div class="title">{{ $item->jawaban }}</div>

                    </div>
                @endforeach
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <!--/span-->

    <div class="widget green span3" onTablet="span4" onDesktop="span3">
        <h3><span class="glyphicons snowflake"><i></i></span>FUTURE ORIENTATION</h3>
        <hr>
        <div class="content">
            <div class="verticalChart">
                @foreach ($jawabans[3] as $item)
                    <div class="singleBar">
                        <div class="bar">
                            <div class="value">
                                <span>{{ $item->jumlah }}</span>
                            </div>
                        </div>
                        <div class="title">{{ $item->jawaban }}</div>
                    </div>
                @endforeach
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <!--/span-->

    <div class="row-fluid hideInIE8 circleStats">

        <div class="span3" onTablet="span4" onDesktop="span3">
            <div class="circleStatsItemBox yellow">
                <div class="header">CORPORATE CONTRIBUTION</div>
                <span class="percent">percent</span>
                @php
                    $urut = 0;
                    $total = 0;
                    $kategori = '';
                    foreach ($jawabans[0] as $row) {
                        $urut = $urut + 1;
                        $jawaban = $row->jawaban;
                        $jumlah = $row->jumlah;
                    
                        $stringedit = str_replace(' ', ',', $jumlah . ' ');
                        $total = $total + $jumlah;
                    }
                    
                    if ($total >= 27 and $total <= 48.6) {
                        $kategori = 'Sangat Buruk';
                        $bobot_kinerja = 1;
                    } elseif ($total >= 48.7 and $total <= 70.2) {
                        $kategori = 'Buruk';
                        $bobot_kinerja = 2;
                    } elseif ($total >= 70.3 and $total <= 91.8) {
                        $kategori = 'Cukup Baik';
                        $bobot_kinerja = 3;
                    } elseif ($total >= 91.9 and $total <= 113.4) {
                        $kategori = 'Baik';
                        $bobot_kinerja = 4;
                    } else {
                        $kategori = 'Sangat Baik';
                        $bobot_kinerja = 5;
                    }
                    
                    $rows = $dimensis[0];
                    if (isset($rows->bobot)) {
                        $bobot = $rows->bobot ?? (int) 0;
                        $KPI = ($bobot_kinerja / $bobot) * 100;
                    } else {
                        $KPI = 0 * 100;
                    }
                    
                    //kesimpulan
                    if ($KPI >= 1 and $KPI <= 20) {
                        $kategori_kpi = 'Tidak Baik';
                    } elseif ($KPI >= 21 and $KPI <= 40) {
                        $kategori_kpi = 'Kurang';
                    } elseif ($KPI >= 41 and $KPI <= 60) {
                        $kategori_kpi = 'Cukup';
                    } elseif ($KPI >= 61 and $KPI <= 80) {
                        $kategori_kpi = 'Baik';
                    } else {
                        $kategori_kpi = 'Sangat Baik';
                    }
                    $kesimpulan = 'Kesimpulan KPI adalah ' . $kategori_kpi;
                @endphp
                <div class="circleStat">
                    <input type="text" value="<?php echo $KPI; ?>" class="whiteCircle" />
                </div>
                <div class="footer">
                    <span class="count">
                        <span class="unit"><?php echo $kesimpulan; ?></span>
                    </span>
                </div>
            </div>
        </div>

        <div class="span3" onTablet="span4" onDesktop="span3">
            <div class="circleStatsItemBox green">
                <div class="header">STAKEHOLDER ORIENTATION</div>
                <span class="percent">percent</span>
                @php
                    $urut = 0;
                    $total = 0;
                    $kategori = '';
                    foreach ($jawabans[1] as $row) {
                        $urut = $urut + 1;
                        $jawaban = $row->jawaban;
                        $jumlah = $row->jumlah;
                    
                        $stringedit = str_replace(' ', ',', $jumlah . ' ');
                        $total = $total + $jumlah;
                    }
                    
                    if ($total >= 27 and $total <= 48.6) {
                        $kategori = 'Sangat Buruk';
                        $bobot_kinerja = 1;
                    } elseif ($total >= 48.7 and $total <= 70.2) {
                        $kategori = 'Buruk';
                        $bobot_kinerja = 2;
                    } elseif ($total >= 70.3 and $total <= 91.8) {
                        $kategori = 'Cukup Baik';
                        $bobot_kinerja = 3;
                    } elseif ($total >= 91.9 and $total <= 113.4) {
                        $kategori = 'Baik';
                        $bobot_kinerja = 4;
                    } else {
                        $kategori = 'Sangat Baik';
                        $bobot_kinerja = 5;
                    }
                    
                    $rows = $dimensis[1];
                    if (isset($rows->bobot)) {
                        $bobot = $rows->bobot ?? (int) 0;
                        $KPI = ($bobot_kinerja / $bobot) * 100;
                    } else {
                        $KPI = 0 * 100;
                    }
                    
                    //kesimpulan
                    if ($KPI >= 1 and $KPI <= 20) {
                        $kategori_kpi = 'Tidak Baik';
                    } elseif ($KPI >= 21 and $KPI <= 40) {
                        $kategori_kpi = 'Kurang';
                    } elseif ($KPI >= 41 and $KPI <= 60) {
                        $kategori_kpi = 'Cukup';
                    } elseif ($KPI >= 61 and $KPI <= 80) {
                        $kategori_kpi = 'Baik';
                    } else {
                        $kategori_kpi = 'Sangat Baik';
                    }
                    $kesimpulan = 'Kesimpulan KPI adalah ' . $kategori_kpi;
                @endphp
                <div class="circleStat">
                    <input type="text" value="<?php echo $KPI; ?>" class="whiteCircle" />
                </div>
                <div class="footer">
                    <span class="count">
                        <span class="unit"><?php echo $kesimpulan; ?></span>

                    </span>

                </div>
            </div>
        </div>

        <div class="span3" onTablet="span4" onDesktop="span3">
            <div class="circleStatsItemBox red">
                <div class="header">OPERATIONAL EXCELLENCE </div>
                <span class="percent">percent</span>
                @php
                    $urut = 0;
                    $total = 0;
                    $kategori = '';
                    foreach ($jawabans[2] as $row) {
                        $urut = $urut + 1;
                        $jawaban = $row->jawaban;
                        $jumlah = $row->jumlah;
                    
                        $stringedit = str_replace(' ', ',', $jumlah . ' ');
                        $total = $total + $jumlah;
                    }
                    
                    if ($total >= 27 and $total <= 48.6) {
                        $kategori = 'Sangat Buruk';
                        $bobot_kinerja = 1;
                    } elseif ($total >= 48.7 and $total <= 70.2) {
                        $kategori = 'Buruk';
                        $bobot_kinerja = 2;
                    } elseif ($total >= 70.3 and $total <= 91.8) {
                        $kategori = 'Cukup Baik';
                        $bobot_kinerja = 3;
                    } elseif ($total >= 91.9 and $total <= 113.4) {
                        $kategori = 'Baik';
                        $bobot_kinerja = 4;
                    } else {
                        $kategori = 'Sangat Baik';
                        $bobot_kinerja = 5;
                    }
                    
                    $rows = $dimensis[2];
                    if (isset($rows->bobot)) {
                        $bobot = $rows->bobot ?? (int) 0;
                        $KPI = ($bobot_kinerja / $bobot) * 100;
                    } else {
                        $KPI = 0 * 100;
                    }
                    
                    //kesimpulan
                    if ($KPI >= 1 and $KPI <= 20) {
                        $kategori_kpi = 'Tidak Baik';
                    } elseif ($KPI >= 21 and $KPI <= 40) {
                        $kategori_kpi = 'Kurang';
                    } elseif ($KPI >= 41 and $KPI <= 60) {
                        $kategori_kpi = 'Cukup';
                    } elseif ($KPI >= 61 and $KPI <= 80) {
                        $kategori_kpi = 'Baik';
                    } else {
                        $kategori_kpi = 'Sangat Baik';
                    }
                    $kesimpulan = 'Kesimpulan KPI adalah ' . $kategori_kpi;
                @endphp
                <div class="circleStat">
                    <input type="text" value="<?php echo $KPI; ?>" class="whiteCircle" />
                </div>
                <div class="footer">
                    <span class="count">
                        <span class="unit"><?php echo $kesimpulan; ?></span>

                    </span>

                </div>
            </div>
        </div>

        <div class="span3 noMargin" onTablet="span4" onDesktop="span3">
            <div class="circleStatsItemBox pink">
                <div class="header">FUTURE ORIENTATION</div>
                <span class="percent">percent</span>
                @php
                    $urut = 0;
                    $total = 0;
                    $kategori = '';
                    foreach ($jawabans[3] as $row) {
                        $urut = $urut + 1;
                        $jawaban = $row->jawaban;
                        $jumlah = $row->jumlah;
                    
                        $stringedit = str_replace(' ', ',', $jumlah . ' ');
                        $total = $total + $jumlah;
                    }
                    
                    if ($total >= 27 and $total <= 48.6) {
                        $kategori = 'Sangat Buruk';
                        $bobot_kinerja = 1;
                    } elseif ($total >= 48.7 and $total <= 70.2) {
                        $kategori = 'Buruk';
                        $bobot_kinerja = 2;
                    } elseif ($total >= 70.3 and $total <= 91.8) {
                        $kategori = 'Cukup Baik';
                        $bobot_kinerja = 3;
                    } elseif ($total >= 91.9 and $total <= 113.4) {
                        $kategori = 'Baik';
                        $bobot_kinerja = 4;
                    } else {
                        $kategori = 'Sangat Baik';
                        $bobot_kinerja = 5;
                    }
                    
                    $rows = $dimensis[3];
                    if (isset($rows->bobot)) {
                        $bobot = $rows->bobot ?? (int) 0;
                        $KPI = ($bobot_kinerja / $bobot) * 100;
                    } else {
                        $KPI = 0 * 100;
                    }
                    
                    //kesimpulan
                    if ($KPI >= 1 and $KPI <= 20) {
                        $kategori_kpi = 'Tidak Baik';
                    } elseif ($KPI >= 21 and $KPI <= 40) {
                        $kategori_kpi = 'Kurang';
                    } elseif ($KPI >= 41 and $KPI <= 60) {
                        $kategori_kpi = 'Cukup';
                    } elseif ($KPI >= 61 and $KPI <= 80) {
                        $kategori_kpi = 'Baik';
                    } else {
                        $kategori_kpi = 'Sangat Baik';
                    }
                    $kesimpulan = 'Kesimpulan KPI adalah ' . $kategori_kpi;
                @endphp
                <div class="circleStat">
                    <input type="text" value="<?php echo $KPI; ?>" class="whiteCircle" />
                </div>
                <div class="footer">

                    <span class="count">

                        <span class="unit"><?php echo $kesimpulan; ?></span>
                    </span>
                </div>
            </div>
        </div>



    </div>
@endsection
