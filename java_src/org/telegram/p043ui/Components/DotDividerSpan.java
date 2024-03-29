package org.telegram.p043ui.Components;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.style.ReplacementSpan;
import org.telegram.messenger.AndroidUtilities;
/* renamed from: org.telegram.ui.Components.DotDividerSpan */
/* loaded from: classes6.dex */
public class DotDividerSpan extends ReplacementSpan {
    int color;

    /* renamed from: p */
    Paint f1845p = new Paint(1);
    private float size = 3.0f;
    int topPadding;

    @Override // android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
        return AndroidUtilities.m108dp(this.size);
    }

    @Override // android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
        if (this.color != paint.getColor()) {
            this.f1845p.setColor(paint.getColor());
        }
        canvas.drawCircle(f + (AndroidUtilities.dpf2(this.size) / 2.0f), ((i5 - i3) / 2) + this.topPadding, AndroidUtilities.dpf2(3.0f) / 2.0f, this.f1845p);
    }

    public void setTopPadding(int i) {
        this.topPadding = i;
    }

    public void setSize(float f) {
        this.size = f;
    }
}
