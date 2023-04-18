package org.telegram.p044ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p044ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Components.ChatActivityBotWebViewButton */
/* loaded from: classes6.dex */
public class ChatActivityBotWebViewButton extends FrameLayout {
    public static final SimpleFloatPropertyCompat<ChatActivityBotWebViewButton> PROGRESS_PROPERTY = new SimpleFloatPropertyCompat("progress", ChatActivityBotWebViewButton$$ExternalSyntheticLambda0.INSTANCE, ChatActivityBotWebViewButton$$ExternalSyntheticLambda1.INSTANCE).setMultiplier(100.0f);
    private int backgroundColor;
    private int buttonColor;
    private BotCommandsMenuView menuButton;
    private int menuButtonWidth;
    private Path path;
    private float progress;
    private RadialProgressView progressView;
    private boolean progressWasVisible;
    private View rippleView;
    private TextView textView;

    public ChatActivityBotWebViewButton(Context context) {
        super(context);
        this.path = new Path();
        this.buttonColor = Theme.getColor("featuredStickers_addButton");
        TextView textView = new TextView(context);
        this.textView = textView;
        textView.setTextSize(1, 14.0f);
        this.textView.setSingleLine();
        this.textView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.textView.setGravity(17);
        this.textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        addView(this.textView, LayoutHelper.createFrame(-1, -1, 3, 0, 0, 0, 0));
        RadialProgressView radialProgressView = new RadialProgressView(context);
        this.progressView = radialProgressView;
        radialProgressView.setSize(AndroidUtilities.m50dp(18));
        this.progressView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.progressView.setScaleX(BitmapDescriptorFactory.HUE_RED);
        this.progressView.setScaleY(BitmapDescriptorFactory.HUE_RED);
        addView(this.progressView, LayoutHelper.createFrame(28, 28, 21, 0, 0, 12, 0));
        View view = new View(context);
        this.rippleView = view;
        view.setBackground(Theme.createSelectorDrawable(Theme.getColor("featuredStickers_addButtonPressed"), 2));
        addView(this.rippleView, LayoutHelper.createFrame(-1, -1, 3, 0, 0, 0, 0));
        setWillNotDraw(false);
    }

    public void setBotMenuButton(BotCommandsMenuView botCommandsMenuView) {
        this.menuButton = botCommandsMenuView;
        invalidate();
    }

    public void setupButtonParams(boolean z, String str, int i, int i2, final boolean z2) {
        setClickable(z);
        this.rippleView.setVisibility(z ? 0 : 8);
        this.textView.setText(str);
        this.textView.setTextColor(i2);
        this.buttonColor = i;
        this.rippleView.setBackground(Theme.createSelectorDrawable(BotWebViewContainer.getMainButtonRippleColor(i), 2));
        this.progressView.setProgressColor(i2);
        if (this.progressWasVisible != z2) {
            this.progressWasVisible = z2;
            this.progressView.animate().cancel();
            float f = BitmapDescriptorFactory.HUE_RED;
            if (z2) {
                this.progressView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                this.progressView.setVisibility(0);
            }
            ViewPropertyAnimator animate = this.progressView.animate();
            if (z2) {
                f = 1.0f;
            }
            animate.alpha(f).scaleX(z2 ? 1.0f : 0.1f).scaleY(z2 ? 1.0f : 0.1f).setDuration(250L).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ChatActivityBotWebViewButton.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (z2) {
                        return;
                    }
                    ChatActivityBotWebViewButton.this.progressView.setVisibility(8);
                }
            }).start();
        }
        invalidate();
    }

    public void setProgress(float f) {
        this.progress = f;
        this.backgroundColor = ColorUtils.blendARGB(Theme.getColor("chat_messagePanelVoiceBackground"), this.buttonColor, f);
        for (int i = 0; i < getChildCount(); i++) {
            getChildAt(i).setAlpha(f);
        }
        invalidate();
    }

    public void setMeasuredButtonWidth(int i) {
        this.menuButtonWidth = i;
        invalidate();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        canvas.save();
        float height = (getHeight() - AndroidUtilities.m50dp(32)) / 2.0f;
        float max = Math.max((getWidth() - this.menuButtonWidth) - AndroidUtilities.m50dp(4), getHeight()) * this.progress;
        float m50dp = AndroidUtilities.m50dp(16) + max;
        RectF rectF = AndroidUtilities.rectTmp;
        rectF.set(AndroidUtilities.m50dp(14) - max, (AndroidUtilities.m50dp(4) + height) - max, AndroidUtilities.m50dp(6) + this.menuButtonWidth + max, (getHeight() - AndroidUtilities.m50dp(12)) + max);
        this.path.rewind();
        this.path.addRoundRect(rectF, m50dp, m50dp, Path.Direction.CW);
        canvas.clipPath(this.path);
        canvas.drawColor(this.backgroundColor);
        canvas.saveLayerAlpha(rectF, (int) ((1.0f - (Math.min(0.5f, this.progress) / 0.5f)) * 255.0f), 31);
        canvas.translate(AndroidUtilities.m50dp(10), height);
        BotCommandsMenuView botCommandsMenuView = this.menuButton;
        if (botCommandsMenuView != null) {
            botCommandsMenuView.setDrawBackgroundDrawable(false);
            this.menuButton.draw(canvas);
            this.menuButton.setDrawBackgroundDrawable(true);
        }
        canvas.restore();
        canvas.translate((-AndroidUtilities.m50dp(8)) * (1.0f - this.progress), BitmapDescriptorFactory.HUE_RED);
        super.draw(canvas);
        canvas.restore();
    }
}
