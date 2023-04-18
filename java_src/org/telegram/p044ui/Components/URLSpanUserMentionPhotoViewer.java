package org.telegram.p044ui.Components;

import android.text.TextPaint;
/* renamed from: org.telegram.ui.Components.URLSpanUserMentionPhotoViewer */
/* loaded from: classes6.dex */
public class URLSpanUserMentionPhotoViewer extends URLSpanUserMention {
    public URLSpanUserMentionPhotoViewer(String str, boolean z) {
        super(str, 2);
    }

    @Override // org.telegram.p044ui.Components.URLSpanUserMention, org.telegram.p044ui.Components.URLSpanNoUnderline, android.text.style.ClickableSpan, android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        super.updateDrawState(textPaint);
        textPaint.setColor(-1);
        textPaint.setUnderlineText(false);
    }
}
