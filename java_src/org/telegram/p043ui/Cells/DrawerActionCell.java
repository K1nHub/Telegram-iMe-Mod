package org.telegram.p043ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.TextView;
import java.util.Set;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3634R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.BackupImageView;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.FilterCreateActivity;
import org.telegram.tgnet.TLRPC$TL_attachMenuBot;
import org.telegram.tgnet.TLRPC$TL_attachMenuBotIcon;
/* renamed from: org.telegram.ui.Cells.DrawerActionCell */
/* loaded from: classes5.dex */
public class DrawerActionCell extends FrameLayout {
    private int currentId;
    private BackupImageView imageView;
    private boolean isRectIconType;
    private RectF rect;
    private final Paint rectIconBackgroundPaint;
    private TextView textView;

    public DrawerActionCell(Context context) {
        super(context);
        this.rectIconBackgroundPaint = new Paint();
        this.rect = new RectF();
        BackupImageView backupImageView = new BackupImageView(context);
        this.imageView = backupImageView;
        backupImageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_chats_menuItemIcon), PorterDuff.Mode.SRC_IN));
        TextView textView = new TextView(context);
        this.textView = textView;
        textView.setTextColor(Theme.getColor(Theme.key_chats_menuItemText));
        this.textView.setTextSize(1, 15.0f);
        this.textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.textView.setGravity(19);
        addView(this.imageView, LayoutHelper.createFrame(24, 24, 51, 19, 12, 0, 0));
        addView(this.textView, LayoutHelper.createFrame(-1, -1, 51, 72, 0, 16, 0));
        setWillNotDraw(false);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int m104dp;
        int measuredWidth;
        if (this.isRectIconType) {
            this.rectIconBackgroundPaint.setColor(Theme.getColor(Theme.key_chats_actionBackground));
            float x = this.imageView.getX() + (this.imageView.getMeasuredWidth() / 2.0f);
            float y = this.imageView.getY() + (this.imageView.getMeasuredHeight() / 2.0f);
            float m104dp2 = AndroidUtilities.m104dp(30) / 2.0f;
            this.rect.set(x - m104dp2, y - m104dp2, x + m104dp2, y + m104dp2);
            RectF rectF = this.rect;
            float f = AndroidUtilities.density;
            canvas.drawRoundRect(rectF, f * 11.5f, f * 11.5f, this.rectIconBackgroundPaint);
        }
        super.onDraw(canvas);
        if (this.currentId == 8) {
            Set<String> set = MessagesController.getInstance(UserConfig.selectedAccount).pendingSuggestions;
            if (set.contains("VALIDATE_PHONE_NUMBER") || set.contains("VALIDATE_PASSWORD")) {
                int m105dp = AndroidUtilities.m105dp(12.5f);
                this.rect.set(((getMeasuredWidth() - AndroidUtilities.m104dp(9)) - AndroidUtilities.m104dp(25)) - AndroidUtilities.m105dp(5.5f), m105dp, measuredWidth + m104dp + AndroidUtilities.m104dp(14), m105dp + AndroidUtilities.m104dp(23));
                Theme.chat_docBackPaint.setColor(Theme.getColor(Theme.key_chats_archiveBackground));
                RectF rectF2 = this.rect;
                float f2 = AndroidUtilities.density;
                canvas.drawRoundRect(rectF2, f2 * 11.5f, f2 * 11.5f, Theme.chat_docBackPaint);
                float intrinsicWidth = Theme.dialogs_errorDrawable.getIntrinsicWidth() / 2;
                float intrinsicHeight = Theme.dialogs_errorDrawable.getIntrinsicHeight() / 2;
                Theme.dialogs_errorDrawable.setBounds((int) (this.rect.centerX() - intrinsicWidth), (int) (this.rect.centerY() - intrinsicHeight), (int) (this.rect.centerX() + intrinsicWidth), (int) (this.rect.centerY() + intrinsicHeight));
                Theme.dialogs_errorDrawable.draw(canvas);
            }
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m104dp(48), 1073741824));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.textView.setTextColor(Theme.getColor(Theme.key_chats_menuItemText));
    }

    public void setTextAndIcon(int i, String str, int i2, boolean z) {
        this.isRectIconType = z;
        invalidate();
        this.currentId = i;
        try {
            this.textView.setText(str);
            this.imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(z ? Theme.key_chats_actionIcon : Theme.key_chats_menuItemIcon), PorterDuff.Mode.SRC_IN));
            this.imageView.setImageResource(i2, Theme.getColor(z ? Theme.key_chats_actionIcon : Theme.key_chats_menuItemIcon));
        } catch (Throwable th) {
            FileLog.m99e(th);
        }
    }

    public void updateTextAndIcon(String str, int i) {
        try {
            this.textView.setText(str);
            this.imageView.setImageResource(i);
        } catch (Throwable th) {
            FileLog.m99e(th);
        }
    }

    public BackupImageView getImageView() {
        return this.imageView;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.Button");
        accessibilityNodeInfo.addAction(16);
        accessibilityNodeInfo.addAction(32);
        accessibilityNodeInfo.setText(this.textView.getText());
        accessibilityNodeInfo.setClassName(TextView.class.getName());
    }

    public void setBot(TLRPC$TL_attachMenuBot tLRPC$TL_attachMenuBot) {
        this.isRectIconType = false;
        invalidate();
        long j = tLRPC$TL_attachMenuBot.bot_id;
        this.currentId = (int) j;
        try {
            if (j == 1985737506) {
                this.textView.setText(LocaleController.getInternalString(C3634R.string.drawer_wallet_bot));
            } else if (tLRPC$TL_attachMenuBot.side_menu_disclaimer_needed) {
                this.textView.setText(applyNewSpan(tLRPC$TL_attachMenuBot.short_name));
            } else {
                this.textView.setText(tLRPC$TL_attachMenuBot.short_name);
            }
            TLRPC$TL_attachMenuBotIcon sideAttachMenuBotIcon = MediaDataController.getSideAttachMenuBotIcon(tLRPC$TL_attachMenuBot);
            if (sideAttachMenuBotIcon != null) {
                this.imageView.setImage(ImageLocation.getForDocument(sideAttachMenuBotIcon.icon), "24_24", (Drawable) null, tLRPC$TL_attachMenuBot);
            } else {
                this.imageView.setImageResource(C3634R.C3636drawable.msg_bot, Theme.getColor(Theme.key_chats_menuItemIcon));
            }
            this.imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_chats_menuItemIcon), PorterDuff.Mode.SRC_IN));
        } catch (Throwable th) {
            FileLog.m99e(th);
        }
    }

    public static CharSequence applyNewSpan(String str) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        spannableStringBuilder.append((CharSequence) "  d");
        FilterCreateActivity.NewSpan newSpan = new FilterCreateActivity.NewSpan(10.0f);
        newSpan.setColor(Theme.getColor(Theme.key_premiumGradient1));
        spannableStringBuilder.setSpan(newSpan, spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 0);
        return spannableStringBuilder;
    }
}
