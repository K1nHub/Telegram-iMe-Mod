package org.telegram.p043ui.Components;

import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;
/* renamed from: org.telegram.ui.Components.AnchorSpan */
/* loaded from: classes7.dex */
public class AnchorSpan extends MetricAffectingSpan {
    private String name;

    @Override // android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
    }

    @Override // android.text.style.MetricAffectingSpan
    public void updateMeasureState(TextPaint textPaint) {
    }

    public AnchorSpan(String str) {
        this.name = str.toLowerCase();
    }

    public String getName() {
        return this.name;
    }
}
