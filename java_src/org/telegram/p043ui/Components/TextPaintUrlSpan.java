package org.telegram.p043ui.Components;

import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;
/* renamed from: org.telegram.ui.Components.TextPaintUrlSpan */
/* loaded from: classes6.dex */
public class TextPaintUrlSpan extends MetricAffectingSpan {
    private String currentUrl;
    private TextPaint textPaint;

    public TextPaintUrlSpan(TextPaint textPaint, String str) {
        this.textPaint = textPaint;
        this.currentUrl = str;
    }

    public String getUrl() {
        return this.currentUrl;
    }

    public TextPaint getTextPaint() {
        return this.textPaint;
    }

    @Override // android.text.style.MetricAffectingSpan
    public void updateMeasureState(TextPaint textPaint) {
        TextPaint textPaint2 = this.textPaint;
        if (textPaint2 != null) {
            textPaint.setColor(textPaint2.getColor());
            textPaint.setTypeface(this.textPaint.getTypeface());
            textPaint.setFlags(this.textPaint.getFlags());
            textPaint.setTextSize(this.textPaint.getTextSize());
            TextPaint textPaint3 = this.textPaint;
            textPaint.baselineShift = textPaint3.baselineShift;
            textPaint.bgColor = textPaint3.bgColor;
        }
    }

    @Override // android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        TextPaint textPaint2 = this.textPaint;
        if (textPaint2 != null) {
            textPaint.setColor(textPaint2.getColor());
            textPaint.setTypeface(this.textPaint.getTypeface());
            textPaint.setFlags(this.textPaint.getFlags());
            textPaint.setTextSize(this.textPaint.getTextSize());
            TextPaint textPaint3 = this.textPaint;
            textPaint.baselineShift = textPaint3.baselineShift;
            textPaint.bgColor = textPaint3.bgColor;
        }
    }
}
