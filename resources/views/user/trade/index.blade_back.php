@extends('user.layouts.main')

@section('custom_css')
    <style>
        #trackers {
            max-height: calc(100vh - 220px);
            overflow-y: scroll;
            margin-top: 50px;
        }
        tr{
            cursor: pointer;
        }
        tr.active{
            background-color: #081420;
        }
        .orders{
            max-height: 300px;
            overflow-y: scroll;
        }
    </style>
@endsection
@section('content')

    <div id="wrap" class="trade">
        <h2>Trade</h2>
        <hr>
        <div class="row">
            <div class="col-md-3">
                <div class="card">
                    <div class="card-body">
                        <div id="trackers">
                            <div class="text-center title"><h4>Current Rate/Change</h4></div>
                            <table class="table trackers">
                                <thead>
                                    <tr>
                                        <th></th>
                                        <th>CURRENCY</th>
                                        <th>LAST PRICE</th>
                                        <th>24H CHANGE</th>
                                        {{-- <th>24H HIGH</th>
                                        <th>24H LOW</th> --}}
                                        <th>VOLUME</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr v-for="item in trackers" v-on:click="setCurrency(item)" :class="{active: item[0] == selectedItem[0]}">
                                        <td></td>
                                        <td>@{{splitCurrency(item[0])}}</td>
                                        <td>@{{item[7]}} USD</td>
                                        <td :class="{'text-danger': item[6]<0, 'text-success': item[6]>0}">@{{Math.abs((item[6]*100).toFixed(2))}}%</td>
                                        {{-- <td>@{{item[3]}}</td>
                                        <td>@{{item[4]}}</td> --}}
                                        <td>@{{Math.round(item[7]*item[8])}}</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-9">
                <div class="card">
                    <div class="card-body">
                        <div class="text-center title mb-2"><h4>Showing Chart for @{{currency}}</h4></div>
                        <div id="chart" style="width:100%;height:600px;"></div>
                    </div>
                </div>
                <div class="mt-3">
                    <div class="">
                        <div class="row">
                            <div class="col">

                                <div class="card">
                                    <div class="card-body">
                                        <h4>Buy @{{currency}}</h4> <small class="float-end">BALANCE: @{{usdBalance}}</small>
                                        <hr>
                                        <div class="form-group">
                                            <label for="">Price:</label>
                                            <input type="text" class="form-control" placeholder="Coin exchange proce.." :value="selectedItem[7]">
                                        </div>
                                        <div class="form-group">
                                            <label for="">Amount:</label> <small class="float-end" :class="{'text-danger': calcBuyAmount>usdBalance, 'text-success': calcBuyAmount<=usdBalance}">TOTAL: @{{calcBuyAmount.toFixed(2)}}</small>
                                            <input type="number" class="form-control" placeholder="Enter buy amount..." v-model="buyAmount">
                                        </div>
                                        <div class="d-grid">
                                            <button class="btn btn-block btn-success" :disabled="buyAmount<=0 || calcBuyAmount > usdBalance" v-on:click="buy">BUY</button>
                                        </div>
                                    </div>
                                </div>

                                
                                
                            </div>
                            <div class="col">
                                <div class="card">
                                    <div class="card-body">
                                        <h4>Sell @{{currency}}</h4> <small class="float-end">BALANCE: @{{balance}}</small>
                                        <hr>
                                        <div class="form-group">
                                            <label for="">Price:</label>
                                            <input type="text" class="form-control" placeholder="Coin exchange proce.." :value="selectedItem[7]">
                                        </div>
                                        <div class="form-group">
                                            <label for="">Amount:</label> <small class="float-end" :class="{'text-danger': sellAmount>balance, 'text-success': sellAmount<=balance}">TOTAL: @{{calcSellAmount.toFixed(2)}}</small>
                                            <input type="number" class="form-control" placeholder="Enter sell amount..." v-model="sellAmount">
                                        </div>
                                        <div class="d-grid">
                                            <button class="btn btn-block btn-danger" :disabled="sellAmount<=0 || sellAmount > balance" v-on:click="sell">SELL</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="card mt-3">
                    <div class="card-body">
                        <div class="">
                            <div class="row">
                                <div class="col orders">
                                    <table class="table">
                                        <thead>
                                            <th>Count</th>
                                            <th>Amount</th>
                                            {{-- <th>Total</th> --}}
                                            <th>Price</th>
                                        </thead>
                                        <tbody>
                                            <tr v-for="item in bids">
                                                <td>@{{item[1]}}</td>
                                                <td>@{{item[2]}}</td>
                                                {{-- <td>@{{item[0]}}</td> --}}
                                                <td>@{{item[0]}}</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="col orders">
                                    <table class="table">
                                        <thead>
                                            <th>Price</th>
                                            {{-- <th>Total</th> --}}
                                            <th>Amount</th>
                                            <th>Count</th>
                                        </thead>
                                        <tbody>
                                            <tr v-for="item in asks">
                                                <td>@{{item[0]}}</td>
                                                <td>@{{Math.abs(item[2])}}</td>
                                                {{-- <td>@{{item[0]}}</td> --}}
                                                <td>@{{item[1]}}</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                

            </div>
        </div>
    </div>


@endsection

@section('custom_js')
    <script>
        $(".page-wrapper").removeClass("toggled");
    </script>
    <script src="https://cdn.socket.io/socket.io-3.0.1.min.js"></script>


    <script src="https://unpkg.com/lightweight-charts/dist/lightweight-charts.standalone.production.js"></script>

    <script>
        // const socket = io('http://localhost:3000');
        const socket = io('http://bitc-way.com:3000');
        showLoader('Loading...');
        let loaded = false;
        socket.on('trackers', (trackers) => {
            console.log(trackers);
            Home.trackers = trackers.trackers;
            
            if(loaded == false){
                console.log('working');
                hideLoader();
                Home.selectedItem = Home.trackers[0];
                Home.getChartData();
                setInterval(function(){
                    Home.getOrders();
                }, 5000);

                
                loaded = true;
            }
        })
    
    
    
        let Home = new Vue({
            el: '.trade',
            data: {
                message: 'Hello Vue!',
                trackers: [],
                chart: null,
                selectedItem: [],
                buyAmount: 0,
                sellAmount: 0,
                balance: 0,
                usdBalance: '{{Auth::user()->balance}}',
                bids: [],
                asks: []
            },
            mounted() {
            },
            computed:{
                currency(){
                    let currency = this.selectedItem[0]?this.selectedItem[0]:'tBTCUSD';
                    currency = this.splitCurrency(currency);
                    return currency;
                },
                calcBuyAmount(){
                    return this.buyAmount*this.selectedItem[7];
                },
                calcSellAmount(){
                    return this.selectedItem[7]*this.sellAmount;
                }
            },
            methods: {
                splitCurrency(currency){
                    currency = currency.split('t').join('');
                    currency = currency.split('USD').join('');
                    return currency;
                },
                setCurrency(item){
                    this.selectedItem = item;
                    this.getChartData();
                },
                getChartData(){
                    let that = this;
                    let currency = that.selectedItem[0];
                    showLoader('Loading ...');
                    axios.get('{{route("user-get-chart-data")}}', {params: {currency: currency, user_currency: that.currency}})
                    .then(function (response) {
                        // handle success
                        console.log(response);
                        let chartData = [];
                        if(response.data.status){
                            that.balance = response.data.balance;
                            response.data.chartData.forEach(function(item){                                
                                // let dateString = new Date(item[0]).toISOString().substring(0, 10);
                                // console.log(dateString);
                                let newChartData = { time: item[0], open: item[1], high: item[3], low: item[4], close: item[2]};
                                // console.log(newChartData);
                                chartData.push(newChartData);
                            });
                            setTimeout(function(){
                                that.drawChart(chartData);
                            }, 100);
                        }
                        
                    })
                    .catch(function (error) {
                        // handle error
                        console.log(error);
                    })
                    .then(function () {
                        // always executed
                        hideLoader();
                    });
                },
                drawChart(data){
                    let that = this;
                    if(that.chart) {
                        that.chart.remove();
                    }
                    that.chart = LightweightCharts.createChart(document.getElementById('chart'), {
                        // width: 100%,
                        // height: 300,
                        layout: {
                            backgroundColor: '#000000',
                            textColor: 'rgba(255, 255, 255, 0.9)',
                        },
                        grid: {
                            vertLines: {
                                color: 'rgba(197, 203, 206, 0.5)',
                            },
                            horzLines: {
                                color: 'rgba(197, 203, 206, 0.5)',
                            },
                        },
                        crosshair: {
                            mode: LightweightCharts.CrosshairMode.Normal,
                        },
                        rightPriceScale: {
                            borderColor: 'rgba(197, 203, 206, 0.8)',
                        },
                        timeScale: {
                            borderColor: 'rgba(197, 203, 206, 0.8)',
                        },
                    });

                    var candleSeries = that.chart.addCandlestickSeries({
                        upColor: 'rgba(255, 144, 0, 1)',
                        downColor: '#000',
                        borderDownColor: 'rgba(255, 144, 0, 1)',
                        borderUpColor: 'rgba(255, 144, 0, 1)',
                        wickDownColor: 'rgba(255, 144, 0, 1)',
                        wickUpColor: 'rgba(255, 144, 0, 1)',
                    });
                    data.sort((a, b) => (a.time > b.time) ? 1 : -1);
                    console.log('drawing chart');
                    candleSeries.setData(data);
                },
                buy(){
                    let that = this;
                    if(that.calcBuyAmount == 0 || that.calcBuyAmount > that.usdBalance) {
                        toastr.error('Invalid amount !!');
                        return false;
                    }
                    showLoader('Processing...');
                    axios.post('{{route("user-trade-buy")}}', {
                        currency: that.currency,
                        buyAmount: that.buyAmount,
                        calcBuyAmount: that.calcBuyAmount
                    })
                    .then(function (response) {
                        if(response.data.status){
                            toastr.success('Buy successfull');
                            window.location.href = '{{route("user-wallets")}}';
                            return false;
                        }
                        toastr.error('Error occured !!');
                    })
                    .catch(function (error) {
                        toastr.error('Error occured !!');
                    });
                },
                sell(){
                    let that = this;
                    if(that.sellAmount == 0 || that.sellAmount > that.balance) {
                        toastr.error('Invalid amount !!');
                        return false;
                    }

                    showLoader('Processing...');
                    axios.post('{{route("user-trade-sell")}}', {
                        currency: that.currency,
                        sellAmount: that.sellAmount,
                        calcSellAmount: that.calcSellAmount
                    })
                    .then(function (response) {
                        if(response.data.status){
                            toastr.success('Sell successfull');
                            window.location.href = '{{route("user-wallets")}}';
                            return false;
                        }
                        toastr.error('Error occured !!');
                    })
                    .catch(function (error) {
                        toastr.error('Error occured !!');
                    });
                },
                getOrders(){
                    let that = this;
                    let currency = that.selectedItem[0];
                    // let currency = 'tBTCUSD';
                    axios.get('{{route("user-get-buy-orders")}}', {params: {currency: currency}})
                    .then(function (response) {
                        // handle success
                        console.log(response);
                        let chartData = [];
                        if(response.status){
                            that.bids = [];
                            that.asks = [];
                            response.data.forEach(function(item){
                                if(item[2] > 0){
                                    console.log('bid');
                                    that.bids.push(item);
                                }else{
                                    console.log('ask');
                                    that.asks.push(item);
                                }
                                console.log(item);
                            })
                            
                        }
                        
                    })
                    .catch(function (error) {
                        // handle error
                        console.log(error);
                    })
                    .then(function () {
                        // always executed
                        hideLoader();
                    });
                }
                
            }
        });

        // Home.getOrders();
    
    </script>
@endsection
