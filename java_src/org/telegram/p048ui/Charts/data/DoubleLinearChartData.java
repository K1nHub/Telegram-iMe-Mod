package org.telegram.p048ui.Charts.data;

import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: org.telegram.ui.Charts.data.DoubleLinearChartData */
/* loaded from: classes5.dex */
public class DoubleLinearChartData extends ChartData {
    public float[] linesK;

    public DoubleLinearChartData(JSONObject jSONObject) throws JSONException {
        super(jSONObject);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p048ui.Charts.data.ChartData
    public void measure() {
        int i;
        super.measure();
        int size = this.lines.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            int i4 = this.lines.get(i3).maxValue;
            if (i4 > i2) {
                i2 = i4;
            }
        }
        this.linesK = new float[size];
        for (int i5 = 0; i5 < size; i5++) {
            if (i2 == this.lines.get(i5).maxValue) {
                this.linesK[i5] = 1.0f;
            } else {
                this.linesK[i5] = i2 / i;
            }
        }
    }
}
