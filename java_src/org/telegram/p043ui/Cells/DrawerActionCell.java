package org.telegram.p043ui.Cells;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.Set;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.LayoutHelper;
/* renamed from: org.telegram.ui.Cells.DrawerActionCell */
/* loaded from: classes5.dex */
public class DrawerActionCell extends FrameLayout {
    private int currentId;
    private ImageView imageView;
    private boolean isRectIconType;
    private RectF rect;
    private final Paint rectIconBackgroundPaint;
    private TextView textView;
    private boolean wasRTL;
    private boolean wasRectIconType;

    public DrawerActionCell(Context context) {
        super(context);
        this.rectIconBackgroundPaint = new Paint();
        this.rect = new RectF();
        ImageView imageView = new ImageView(context);
        this.imageView = imageView;
        imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_chats_menuItemIcon), PorterDuff.Mode.SRC_IN));
        TextView textView = new TextView(context);
        this.textView = textView;
        textView.setTextColor(Theme.getColor(Theme.key_chats_menuItemText));
        this.textView.setTextSize(1, 15.0f);
        this.textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.textView.setGravity(16);
        toggleRTL(true);
        setWillNotDraw(false);
    }

    public void toggleRTL(boolean z) {
        boolean z2 = this.wasRTL;
        boolean z3 = LocaleController.isRTL;
        if (z2 == z3 && this.wasRectIconType == this.isRectIconType && !z) {
            return;
        }
        this.wasRTL = z3;
        this.wasRectIconType = this.isRectIconType;
        removeAllViews();
        ImageView imageView = this.imageView;
        boolean z4 = LocaleController.isRTL;
        addView(imageView, LayoutHelper.createFrame(24, 24, (z4 ? 5 : 3) | 48, z4 ? 0 : 19, 12, z4 ? 19 : 0, 0));
        TextView textView = this.textView;
        boolean z5 = LocaleController.isRTL;
        addView(textView, LayoutHelper.createFrame(-1, -1, (z5 ? 5 : 3) | 48, z5 ? 16 : 72, 0, z5 ? 72 : 16, 0));
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int m72dp;
        if (this.isRectIconType) {
            this.rectIconBackgroundPaint.setColor(Theme.getColor(Theme.key_chats_actionBackground));
            float x = this.imageView.getX() + (this.imageView.getMeasuredWidth() / 2.0f);
            float y = this.imageView.getY() + (this.imageView.getMeasuredHeight() / 2.0f);
            float m72dp2 = AndroidUtilities.m72dp(30) / 2.0f;
            this.rect.set(x - m72dp2, y - m72dp2, x + m72dp2, y + m72dp2);
            RectF rectF = this.rect;
            float f = AndroidUtilities.density;
            canvas.drawRoundRect(rectF, f * 11.5f, f * 11.5f, this.rectIconBackgroundPaint);
        }
        super.onDraw(canvas);
        if (this.currentId == 8) {
            Set<String> set = MessagesController.getInstance(UserConfig.selectedAccount).pendingSuggestions;
            if (set.contains("VALIDATE_PHONE_NUMBER") || set.contains("VALIDATE_PASSWORD")) {
                int m73dp = AndroidUtilities.m73dp(12.5f);
                int m72dp3 = AndroidUtilities.m72dp(9);
                this.rect.set((LocaleController.isRTL ? AndroidUtilities.m72dp(25) + m72dp3 : (getMeasuredWidth() - m72dp3) - AndroidUtilities.m72dp(25)) - AndroidUtilities.m73dp(5.5f), m73dp, m72dp + m72dp3 + AndroidUtilities.m72dp(14), m73dp + AndroidUtilities.m72dp(23));
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
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m72dp(48), 1073741824));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.textView.setTextColor(Theme.getColor(Theme.key_chats_menuItemText));
    }

    public void setTextAndIcon(int i, String str, int i2, boolean z) {
        this.isRectIconType = z;
        toggleRTL(false);
        this.currentId = i;
        try {
            this.textView.setText(str);
            this.imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(z ? Theme.key_chats_actionIcon : Theme.key_chats_menuItemIcon), PorterDuff.Mode.SRC_IN));
            this.imageView.setImageResource(i2);
        } catch (Throwable th) {
            FileLog.m67e(th);
        }
    }

    public void updateTextAndIcon(String str, int i) {
        try {
            this.textView.setText(str);
            this.imageView.setImageResource(i);
        } catch (Throwable th) {
            FileLog.m67e(th);
        }
    }

    public ImageView getImageView() {
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
}
