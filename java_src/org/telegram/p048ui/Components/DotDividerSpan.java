package org.telegram.p048ui.Components;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.style.ReplacementSpan;
import org.telegram.messenger.AndroidUtilities;
/* renamed from: org.telegram.ui.Components.DotDividerSpan */
/* loaded from: classes6.dex */
public class DotDividerSpan extends ReplacementSpan {
    int color;

    /* renamed from: p */
    Paint f1708p = new Paint(1);
    int topPadding;

    @Override // android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
        return AndroidUtilities.m50dp(3);
    }

    @Override // android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
        if (this.color != paint.getColor()) {
            this.f1708p.setColor(paint.getColor());
        }
        float dpf2 = AndroidUtilities.dpf2(3.0f) / 2.0f;
        canvas.drawCircle(f + dpf2, ((i5 - i3) / 2) + this.topPadding, dpf2, this.f1708p);
    }

    public void setTopPadding(int i) {
        this.topPadding = i;
    }
}
