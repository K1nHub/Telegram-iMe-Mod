package org.telegram.p048ui.Components;

import android.text.TextPaint;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Components.TextStyleSpan;
/* renamed from: org.telegram.ui.Components.URLSpanBotCommand */
/* loaded from: classes6.dex */
public class URLSpanBotCommand extends URLSpanNoUnderline {
    public static boolean enabled = true;
    public int currentType;
    private TextStyleSpan.TextStyleRun style;

    public URLSpanBotCommand(String str, int i) {
        this(str, i, null);
    }

    public URLSpanBotCommand(String str, int i, TextStyleSpan.TextStyleRun textStyleRun) {
        super(str);
        this.currentType = i;
        this.style = textStyleRun;
    }

    @Override // org.telegram.p048ui.Components.URLSpanNoUnderline, android.text.style.ClickableSpan, android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        super.updateDrawState(textPaint);
        int i = this.currentType;
        if (i == 2) {
            textPaint.setColor(-1);
        } else if (i == 1) {
            textPaint.setColor(Theme.getColor(enabled ? "chat_messageLinkOut" : "chat_messageTextOut"));
        } else {
            textPaint.setColor(Theme.getColor(enabled ? "chat_messageLinkIn" : "chat_messageTextIn"));
        }
        TextStyleSpan.TextStyleRun textStyleRun = this.style;
        if (textStyleRun != null) {
            textStyleRun.applyStyle(textPaint);
        } else {
            textPaint.setUnderlineText(false);
        }
    }
}
