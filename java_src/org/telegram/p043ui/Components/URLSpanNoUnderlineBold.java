package org.telegram.p043ui.Components;

import android.text.TextPaint;
import org.telegram.messenger.AndroidUtilities;
/* renamed from: org.telegram.ui.Components.URLSpanNoUnderlineBold */
/* loaded from: classes6.dex */
public class URLSpanNoUnderlineBold extends URLSpanNoUnderline {
    public URLSpanNoUnderlineBold(String str) {
        super(str != null ? str.replace((char) 8238, ' ') : str);
    }

    @Override // org.telegram.p043ui.Components.URLSpanNoUnderline, android.text.style.ClickableSpan, android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        super.updateDrawState(textPaint);
        textPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textPaint.setUnderlineText(false);
    }
}
