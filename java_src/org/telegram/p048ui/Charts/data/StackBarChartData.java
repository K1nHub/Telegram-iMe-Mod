package org.telegram.p048ui.Charts.data;

import org.json.JSONException;
import org.json.JSONObject;
import org.telegram.messenger.SegmentTree;
/* renamed from: org.telegram.ui.Charts.data.StackBarChartData */
/* loaded from: classes5.dex */
public class StackBarChartData extends ChartData {
    public int[] ySum;
    public SegmentTree ySumSegmentTree;

    public StackBarChartData(JSONObject jSONObject) throws JSONException {
        super(jSONObject);
        init();
    }

    public void init() {
        int length = this.lines.get(0).f1674y.length;
        int size = this.lines.size();
        this.ySum = new int[length];
        for (int i = 0; i < length; i++) {
            this.ySum[i] = 0;
            for (int i2 = 0; i2 < size; i2++) {
                int[] iArr = this.ySum;
                iArr[i] = iArr[i] + this.lines.get(i2).f1674y[i];
            }
        }
        this.ySumSegmentTree = new SegmentTree(this.ySum);
    }

    public int findMax(int i, int i2) {
        return this.ySumSegmentTree.rMaxQ(i, i2);
    }
}
