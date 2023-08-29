import {Controller} from "@hotwired/stimulus"

import { Chart, registerables } from "chart.js";
Chart.register(...registerables);

export default class extends Controller {
    static targets = ['myChart'];

    canvasContext() {
        return this.myChartTarget.getContext('2d');
    }
    connect() {
    new Chart(ctx, {
    type: 'radar',
    data: {
        labels: ["対応満足度", "売却スピード","売却価格"],
        datasets: [{
            // label: "<%= j @company_name %>",
            // data: [<%= @average_satisfaction%>, <%= @average_contract_price_satisfaction %>, <%= @average_sales_speed_satisfaction%>],
            label: "aaa",
            data:[2,3,4],
            backgroundColor: "rgba(67, 133, 215, 0.5)",  //グラフ背景色
            borderColor: "rgba(67, 133, 215, 1)",        //グラフボーダー色
        }]
    },
    options: {
        scales: {
            r: {
                max: 5,        //グラフの最大値
                min: 0,        //グラフの最小値
                ticks: {
                    stepSize: 1  //目盛間隔
                }
            }
        },
    }
});}}