package org.telegram.p043ui.Cells;

import android.graphics.Canvas;
import android.graphics.RectF;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3634R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.TypefaceSpan;
import org.telegram.p043ui.Stories.StoriesUtilities;
import org.telegram.tgnet.TLRPC$TL_messageMediaStory;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Cells.ExpiredStoryView */
/* loaded from: classes5.dex */
public class ExpiredStoryView {
    int height;
    float horizontalPadding;
    StaticLayout subtitleLayout;
    float textX;
    float textY;
    StaticLayout titleLayout;
    float verticalPadding;
    public boolean visible;
    int width;

    /* JADX WARN: Multi-variable type inference failed */
    public void measure(ChatMessageCell chatMessageCell) {
        String str;
        int parentWidth;
        String str2;
        CharSequence createExpiredStoryString = StoriesUtilities.createExpiredStoryString();
        TLRPC$User user = MessagesController.getInstance(chatMessageCell.currentAccount).getUser(Long.valueOf(((TLRPC$TL_messageMediaStory) chatMessageCell.getMessageObject().messageOwner.media).user_id));
        if (user == null) {
            str = "DELETED";
        } else {
            str = user.first_name;
            if (str == null) {
                str = "";
            }
        }
        if (AndroidUtilities.isTablet()) {
            parentWidth = AndroidUtilities.getMinTabletSide();
        } else {
            parentWidth = chatMessageCell.getParentWidth();
        }
        int i = (int) (parentWidth * 0.4f);
        String string = LocaleController.getString("From", C3634R.string.From);
        TextPaint textPaint = Theme.chat_forwardNamePaint;
        String str3 = (String) TextUtils.ellipsize((str != null ? str : "").replace('\n', ' '), Theme.chat_replyNamePaint, i - ((int) Math.ceil(textPaint.measureText(string + " "))), TextUtils.TruncateAt.END);
        String string2 = LocaleController.getString("FromFormatted", C3634R.string.FromFormatted);
        int indexOf = string2.indexOf("%1$s");
        String format = String.format(string2, str3);
        if (indexOf >= 0) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(format);
            spannableStringBuilder.setSpan(new TypefaceSpan(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM)), indexOf, str3.length() + indexOf, 33);
            str2 = spannableStringBuilder;
        } else {
            str2 = format;
        }
        TextPaint textPaint2 = Theme.chat_replyTextPaint;
        this.titleLayout = new StaticLayout(createExpiredStoryString, textPaint2, ((int) (textPaint2.measureText(createExpiredStoryString, 0, createExpiredStoryString.length()) + 1.0f)) + AndroidUtilities.m104dp(10), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
        this.subtitleLayout = new StaticLayout(str2, textPaint2, ((int) (textPaint2.measureText((CharSequence) str2, 0, str2.length()) + 1.0f)) + AndroidUtilities.m104dp(10), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false);
        this.height = 0;
        this.verticalPadding = AndroidUtilities.m104dp(4);
        this.horizontalPadding = AndroidUtilities.m104dp(12);
        this.height = (int) (this.height + AndroidUtilities.m104dp(4) + this.titleLayout.getHeight() + AndroidUtilities.m104dp(2) + this.subtitleLayout.getHeight() + AndroidUtilities.m104dp(4) + (this.verticalPadding * 2.0f));
        this.width = Math.max(this.titleLayout.getWidth(), this.subtitleLayout.getWidth()) + AndroidUtilities.m104dp(12) + AndroidUtilities.m104dp(20) + chatMessageCell.getExtraTextX();
    }

    public void draw(Canvas canvas, ChatMessageCell chatMessageCell) {
        float m104dp = AndroidUtilities.m104dp(8) + this.verticalPadding;
        this.textY = m104dp;
        if (chatMessageCell.pinnedTop) {
            this.textY = m104dp - AndroidUtilities.m104dp(2);
        }
        RectF rectF = AndroidUtilities.rectTmp;
        if (chatMessageCell.getMessageObject().isOutOwner()) {
            this.textX = (((((-(chatMessageCell.timeWidth + AndroidUtilities.m104dp(12))) + chatMessageCell.getExtraTextX()) + chatMessageCell.getMeasuredWidth()) - this.width) + AndroidUtilities.m104dp(24)) - this.horizontalPadding;
            rectF.set((chatMessageCell.getMeasuredWidth() - this.width) - this.horizontalPadding, this.verticalPadding, chatMessageCell.getMeasuredWidth() - this.horizontalPadding, chatMessageCell.getMeasuredHeight() - this.verticalPadding);
        } else {
            float m104dp2 = chatMessageCell.isAvatarVisible ? AndroidUtilities.m104dp(48) : 0.0f;
            this.textX = this.horizontalPadding + m104dp2 + AndroidUtilities.m104dp(12);
            float f = this.horizontalPadding;
            rectF.set(m104dp2 + f, this.verticalPadding, m104dp2 + f + this.width, chatMessageCell.getMeasuredHeight() - this.verticalPadding);
        }
        if (chatMessageCell.getMessageObject().isOutOwner()) {
            Theme.chat_replyTextPaint.setColor(chatMessageCell.getThemedColor(Theme.key_chat_outReplyNameText));
        } else {
            Theme.chat_replyTextPaint.setColor(chatMessageCell.getThemedColor(Theme.key_chat_inReplyNameText));
        }
        if (this.titleLayout == null || this.subtitleLayout == null) {
            return;
        }
        canvas.save();
        canvas.translate(this.textX, this.textY);
        this.titleLayout.draw(canvas);
        canvas.translate(BitmapDescriptorFactory.HUE_RED, this.titleLayout.getHeight() + AndroidUtilities.m104dp(2));
        this.subtitleLayout.draw(canvas);
        canvas.restore();
    }
}
