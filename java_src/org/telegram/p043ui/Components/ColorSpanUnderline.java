package org.telegram.p043ui.Components;

import android.text.TextPaint;
import android.text.style.ForegroundColorSpan;
/* renamed from: org.telegram.ui.Components.ColorSpanUnderline */
/* loaded from: classes7.dex */
public class ColorSpanUnderline extends ForegroundColorSpan {
    public ColorSpanUnderline(int i) {
        super(i);
    }

    @Override // android.text.style.ForegroundColorSpan, android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        super.updateDrawState(textPaint);
        textPaint.setUnderlineText(true);
    }
}
