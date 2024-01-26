package org.telegram.p043ui.Charts.view_data;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: org.telegram.ui.Charts.view_data.ChartHorizontalLinesData */
/* loaded from: classes5.dex */
public class ChartHorizontalLinesData {
    public int alpha;
    public int fixedAlpha;
    public int[] values;
    public String[] valuesStr;
    public String[] valuesStr2;

    public ChartHorizontalLinesData(int i, int i2, boolean z) {
        this(i, i2, z, BitmapDescriptorFactory.HUE_RED);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x009a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ChartHorizontalLinesData(int r8, int r9, boolean r10, float r11) {
        /*
            Method dump skipped, instructions count: 221
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Charts.view_data.ChartHorizontalLinesData.<init>(int, int, boolean, float):void");
    }

    public static int lookupHeight(int i) {
        if (i > 100) {
            i = round(i);
        }
        return ((int) Math.ceil(i / 5.0f)) * 5;
    }

    private static int round(int i) {
        return ((float) (i / 5)) % 10.0f == BitmapDescriptorFactory.HUE_RED ? i : ((i / 10) + 1) * 10;
    }
}
