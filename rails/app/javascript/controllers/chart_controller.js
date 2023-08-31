import { Controller } from "@hotwired/stimulus"
import { Chart, registerables } from 'chart.js'
Chart.register(...registerables)

export default class extends Controller {
    static values = {
        rader: Object,
    }
    static targets = ['canvas']

    connect() {
        const element = this.canvasTarget
        this.chart = new Chart(element.getContext('2d'), {
            type: 'radar',
            data: this.raderValue,
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
        })
    }

    disconnect() {
        this.chart.destroy()
        this.chart = undefined
    }
}
