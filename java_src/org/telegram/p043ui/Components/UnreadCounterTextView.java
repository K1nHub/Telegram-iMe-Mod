package org.telegram.p043ui.Components;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.graphics.ColorUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p043ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Components.UnreadCounterTextView */
/* loaded from: classes6.dex */
public class UnreadCounterTextView extends View {
    boolean animatedFromBottom;
    private int circleWidth;
    int counterColor;
    private int currentCounter;
    private String currentCounterString;
    private Drawable icon;
    private Drawable iconOut;
    public boolean isOnlyTextClickable;
    CharSequence lastText;
    private TextPaint layoutPaint;
    private int layoutTextWidth;
    private Paint paint;
    int panelBackgroundColor;
    private RectF rect;
    ValueAnimator replaceAnimator;
    float replaceProgress;
    private int rippleColor;
    Drawable selectableBackground;
    int textColor;
    int textColorKey;
    private StaticLayout textLayout;
    private StaticLayout textLayoutOut;
    private TextPaint textPaint;
    private int textWidth;

    protected Theme.ResourcesProvider getResourceProvider() {
        return null;
    }

    protected float getTopOffset() {
        return BitmapDescriptorFactory.HUE_RED;
    }

    protected boolean isTouchFullWidth() {
        return false;
    }

    public UnreadCounterTextView(Context context) {
        super(context);
        this.textPaint = new TextPaint(1);
        this.paint = new Paint(1);
        this.rect = new RectF();
        this.layoutPaint = new TextPaint(1);
        this.replaceProgress = 1.0f;
        this.textColorKey = Theme.key_chat_fieldOverlayText;
        this.textPaint.setTextSize(AndroidUtilities.m107dp(13));
        this.textPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.layoutPaint.setTextSize(AndroidUtilities.m107dp(15));
        this.layoutPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
    }

    public void setText(CharSequence charSequence, boolean z) {
        if (this.lastText == charSequence) {
            return;
        }
        this.lastText = charSequence;
        this.animatedFromBottom = z;
        this.textLayoutOut = this.textLayout;
        this.iconOut = this.icon;
        this.layoutPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.layoutTextWidth = (int) Math.ceil(this.layoutPaint.measureText(charSequence, 0, charSequence.length()));
        this.icon = null;
        this.textLayout = new StaticLayout(charSequence, this.layoutPaint, this.layoutTextWidth, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, true);
        setContentDescription(charSequence);
        invalidate();
        if (this.textLayoutOut == null && this.iconOut == null) {
            return;
        }
        ValueAnimator valueAnimator = this.replaceAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.replaceProgress = BitmapDescriptorFactory.HUE_RED;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.replaceAnimator = ofFloat;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.UnreadCounterTextView$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                UnreadCounterTextView.this.lambda$setText$0(valueAnimator2);
            }
        });
        this.replaceAnimator.setDuration(150L);
        this.replaceAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setText$0(ValueAnimator valueAnimator) {
        this.replaceProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    public void setText(CharSequence charSequence) {
        this.layoutPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.layoutTextWidth = (int) Math.ceil(this.layoutPaint.measureText(charSequence, 0, charSequence.length()));
        this.icon = null;
        this.textLayout = new StaticLayout(charSequence, this.layoutPaint, this.layoutTextWidth, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, true);
        setContentDescription(charSequence);
        invalidate();
    }

    public void setTextInfo(CharSequence charSequence) {
        this.layoutPaint.setTypeface(null);
        this.layoutTextWidth = (int) Math.ceil(this.layoutPaint.measureText(charSequence, 0, charSequence.length()));
        this.icon = null;
        this.textLayout = new StaticLayout(charSequence, this.layoutPaint, this.layoutTextWidth + 1, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, true);
        setContentDescription(charSequence);
        invalidate();
    }

    public void setTextInfo(Drawable drawable, CharSequence charSequence) {
        this.layoutPaint.setTypeface(null);
        this.layoutTextWidth = (int) Math.ceil(this.layoutPaint.measureText(charSequence, 0, charSequence.length()));
        this.icon = drawable;
        this.textLayout = new StaticLayout(charSequence, this.layoutPaint, this.layoutTextWidth + 1, Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, true);
        setContentDescription(charSequence);
        invalidate();
    }

    @Override // android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.selectableBackground;
        if (drawable != null) {
            drawable.setState(getDrawableState());
        }
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        Drawable drawable2 = this.selectableBackground;
        if (drawable2 != null) {
            return drawable2 == drawable || super.verifyDrawable(drawable);
        }
        return super.verifyDrawable(drawable);
    }

    @Override // android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.selectableBackground;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        StaticLayout staticLayout;
        if (motionEvent.getAction() == 0 && (staticLayout = this.textLayout) != null) {
            int ceil = (int) Math.ceil(staticLayout.getLineWidth(0));
            if (getMeasuredWidth() == ((View) getParent()).getMeasuredWidth()) {
                if (!this.isOnlyTextClickable) {
                    ceil = getMeasuredWidth() - AndroidUtilities.m107dp(96);
                }
            } else if (isTouchFullWidth()) {
                ceil = getMeasuredWidth();
            } else {
                int i = this.circleWidth;
                ceil = ceil + (i > 0 ? i + AndroidUtilities.m107dp(8) : 0) + AndroidUtilities.m107dp(48);
            }
            int measuredWidth = (getMeasuredWidth() - ceil) / 2;
            float f = ceil / 2.0f;
            this.rect.set(measuredWidth, (getMeasuredHeight() / 2.0f) - f, measuredWidth + ceil, (getMeasuredHeight() / 2.0f) + f);
            if (!this.rect.contains(motionEvent.getX(), motionEvent.getY())) {
                setPressed(false);
                return false;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setCounter(int i) {
        if (this.currentCounter != i) {
            this.currentCounter = i;
            if (i == 0) {
                this.currentCounterString = null;
                this.circleWidth = 0;
            } else {
                String formatWholeNumber = AndroidUtilities.formatWholeNumber(i, 0);
                this.currentCounterString = formatWholeNumber;
                this.textWidth = (int) Math.ceil(this.textPaint.measureText(formatWholeNumber));
                int max = Math.max(AndroidUtilities.m107dp(20), AndroidUtilities.m107dp(12) + this.textWidth);
                if (this.circleWidth != max) {
                    this.circleWidth = max;
                }
            }
            invalidate();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int measuredWidth;
        Drawable drawable;
        Drawable drawable2;
        Drawable drawable3;
        StaticLayout staticLayout = this.textLayout;
        int color = Theme.getColor(isEnabled() ? this.textColorKey : Theme.key_windowBackgroundWhiteGrayText, getResourceProvider());
        if (this.textColor != color) {
            TextPaint textPaint = this.layoutPaint;
            this.textColor = color;
            textPaint.setColor(color);
        }
        int color2 = Theme.getColor(Theme.key_chat_messagePanelBackground, getResourceProvider());
        if (this.panelBackgroundColor != color2) {
            TextPaint textPaint2 = this.textPaint;
            this.panelBackgroundColor = color2;
            textPaint2.setColor(color2);
        }
        int color3 = Theme.getColor(Theme.key_chat_goDownButtonCounterBackground, getResourceProvider());
        if (this.counterColor != color3) {
            Paint paint = this.paint;
            this.counterColor = color3;
            paint.setColor(color3);
        }
        if (getParent() != null) {
            int measuredWidth2 = getMeasuredWidth();
            int measuredWidth3 = (getMeasuredWidth() - measuredWidth2) / 2;
            if (this.rippleColor != Theme.getColor(this.textColorKey, getResourceProvider()) || this.selectableBackground == null) {
                int m107dp = AndroidUtilities.m107dp(60);
                int color4 = Theme.getColor(this.textColorKey, getResourceProvider());
                this.rippleColor = color4;
                Drawable createSimpleSelectorCircleDrawable = Theme.createSimpleSelectorCircleDrawable(m107dp, 0, ColorUtils.setAlphaComponent(color4, 26));
                this.selectableBackground = createSimpleSelectorCircleDrawable;
                createSimpleSelectorCircleDrawable.setCallback(this);
            }
            int m107dp2 = getLeft() + measuredWidth3 <= 0 ? measuredWidth3 - AndroidUtilities.m107dp(20) : measuredWidth3;
            int i = measuredWidth3 + measuredWidth2;
            if (i > ((View) getParent()).getMeasuredWidth()) {
                i += AndroidUtilities.m107dp(20);
            }
            int i2 = measuredWidth2 / 2;
            this.selectableBackground.setBounds(m107dp2, (getMeasuredHeight() / 2) - i2, i, (getMeasuredHeight() / 2) + i2);
            this.selectableBackground.draw(canvas);
        }
        if (this.textLayout != null) {
            canvas.save();
            if (this.replaceProgress != 1.0f && this.textLayoutOut != null) {
                int alpha = this.layoutPaint.getAlpha();
                canvas.save();
                canvas.translate(((getMeasuredWidth() - this.textLayoutOut.getWidth()) / 2) - (this.circleWidth / 2), ((getMeasuredHeight() - this.textLayout.getHeight()) / 2) + getTopOffset());
                canvas.translate(this.iconOut != null ? (drawable2.getIntrinsicWidth() / 2) + AndroidUtilities.m107dp(3) : 0, (this.animatedFromBottom ? -1.0f : 1.0f) * AndroidUtilities.m107dp(18) * this.replaceProgress);
                Drawable drawable4 = this.iconOut;
                if (drawable4 != null) {
                    drawable4.setBounds((-drawable4.getIntrinsicWidth()) - AndroidUtilities.m107dp(6), ((this.textLayout.getHeight() - this.iconOut.getIntrinsicHeight()) / 2) + AndroidUtilities.m107dp(1), -AndroidUtilities.m107dp(6), ((this.textLayout.getHeight() + this.iconOut.getIntrinsicHeight()) / 2) + AndroidUtilities.m107dp(1));
                    this.iconOut.setAlpha((int) (alpha * (1.0f - this.replaceProgress)));
                    this.iconOut.draw(canvas);
                }
                float f = alpha;
                this.layoutPaint.setAlpha((int) ((1.0f - this.replaceProgress) * f));
                this.textLayoutOut.draw(canvas);
                canvas.restore();
                canvas.save();
                canvas.translate(((getMeasuredWidth() - this.layoutTextWidth) / 2) - (this.circleWidth / 2), ((getMeasuredHeight() - this.textLayout.getHeight()) / 2) + getTopOffset());
                canvas.translate(this.icon != null ? (drawable3.getIntrinsicWidth() / 2) + AndroidUtilities.m107dp(3) : 0, (this.animatedFromBottom ? 1.0f : -1.0f) * AndroidUtilities.m107dp(18) * (1.0f - this.replaceProgress));
                Drawable drawable5 = this.icon;
                if (drawable5 != null) {
                    drawable5.setBounds((-drawable5.getIntrinsicWidth()) - AndroidUtilities.m107dp(6), ((this.textLayout.getHeight() - this.icon.getIntrinsicHeight()) / 2) + AndroidUtilities.m107dp(1), -AndroidUtilities.m107dp(6), ((this.textLayout.getHeight() + this.icon.getIntrinsicHeight()) / 2) + AndroidUtilities.m107dp(1));
                    this.icon.setAlpha((int) (this.replaceProgress * f));
                    this.icon.draw(canvas);
                }
                this.layoutPaint.setAlpha((int) (f * this.replaceProgress));
                this.textLayout.draw(canvas);
                canvas.restore();
                this.layoutPaint.setAlpha(alpha);
            } else {
                int measuredWidth4 = ((getMeasuredWidth() - this.layoutTextWidth) / 2) - (this.circleWidth / 2);
                canvas.translate(measuredWidth4 + (this.icon != null ? (drawable.getIntrinsicWidth() / 2) + AndroidUtilities.m107dp(3) : 0), ((getMeasuredHeight() - this.textLayout.getHeight()) / 2) + getTopOffset());
                Drawable drawable6 = this.icon;
                if (drawable6 != null) {
                    drawable6.setBounds((-drawable6.getIntrinsicWidth()) - AndroidUtilities.m107dp(6), ((this.textLayout.getHeight() - this.icon.getIntrinsicHeight()) / 2) + AndroidUtilities.m107dp(1), -AndroidUtilities.m107dp(6), ((this.textLayout.getHeight() + this.icon.getIntrinsicHeight()) / 2) + AndroidUtilities.m107dp(1));
                    this.icon.setAlpha(255);
                    this.icon.draw(canvas);
                }
                this.textLayout.draw(canvas);
            }
            canvas.restore();
        }
        if (this.currentCounterString == null || staticLayout == null) {
            return;
        }
        int ceil = (int) Math.ceil(staticLayout.getLineWidth(0));
        this.rect.set(((((getMeasuredWidth() - ceil) / 2) + ceil) - (this.circleWidth / 2)) + AndroidUtilities.m107dp(6), (getMeasuredHeight() / 2) - AndroidUtilities.m107dp(10), measuredWidth + this.circleWidth, (getMeasuredHeight() / 2) + AndroidUtilities.m107dp(10));
        canvas.drawRoundRect(this.rect, AndroidUtilities.m107dp(10), AndroidUtilities.m107dp(10), this.paint);
        canvas.drawText(this.currentCounterString, this.rect.centerX() - (this.textWidth / 2.0f), this.rect.top + AndroidUtilities.m108dp(14.5f), this.textPaint);
    }

    public void setTextColorKey(int i) {
        this.textColorKey = i;
        invalidate();
    }
}
