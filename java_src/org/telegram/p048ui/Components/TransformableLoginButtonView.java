package org.telegram.p048ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextPaint;
import android.view.View;
import androidx.core.content.ContextCompat;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.smedialink.common.IdFabric$CustomType;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3286R;
import org.telegram.p048ui.ActionBar.Theme;
/* renamed from: org.telegram.ui.Components.TransformableLoginButtonView */
/* loaded from: classes6.dex */
public class TransformableLoginButtonView extends View {
    private Paint backgroundPaint;
    private String buttonText;
    private float buttonWidth;
    private boolean drawBackground;
    private Paint outlinePaint;
    private float progress;
    private RectF rect;
    private Drawable rippleDrawable;
    private TextPaint textPaint;
    private int transformType;

    public TransformableLoginButtonView(Context context) {
        super(context);
        this.backgroundPaint = new Paint(1);
        this.outlinePaint = new Paint(1);
        this.drawBackground = true;
        this.transformType = 0;
        this.rect = new RectF();
        this.backgroundPaint.setColor(Theme.getColor("chats_actionBackground"));
        this.outlinePaint.setStrokeWidth(AndroidUtilities.m50dp(2));
        this.outlinePaint.setStyle(Paint.Style.STROKE);
        this.outlinePaint.setStrokeCap(Paint.Cap.ROUND);
    }

    public void setDrawBackground(boolean z) {
        this.drawBackground = z;
    }

    public void setRippleDrawable(Drawable drawable) {
        this.rippleDrawable = drawable;
        invalidate();
    }

    public void setTransformType(int i) {
        this.transformType = i;
        invalidate();
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        this.backgroundPaint.setColor(i);
        invalidate();
    }

    public void setColor(int i) {
        this.outlinePaint.setColor(i);
        invalidate();
    }

    public void setButtonText(TextPaint textPaint, String str) {
        this.textPaint = textPaint;
        this.buttonText = str;
        this.outlinePaint.setColor(textPaint.getColor());
        this.buttonWidth = textPaint.measureText(str);
    }

    public void setProgress(float f) {
        this.progress = f;
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.drawBackground) {
            float m51dp = AndroidUtilities.m51dp(((this.transformType == 0 ? this.progress : 1.0f) * 26.0f) + 6.0f);
            this.rect.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight());
            canvas.drawRoundRect(this.rect, m51dp, m51dp, this.backgroundPaint);
        }
        int i = this.transformType;
        if (i == IdFabric$CustomType.TRANSFORMABLE_LOGIN_BUTTON_SEARCH) {
            Drawable drawable = ContextCompat.getDrawable(getContext(), C3286R.C3288drawable.fork_ic_search_contact_30);
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int width = (getWidth() - intrinsicWidth) / 2;
            int height = (getHeight() - intrinsicWidth) / 2;
            drawable.setBounds(width, height, width + intrinsicWidth, intrinsicWidth + height);
            drawable.setColorFilter(new PorterDuffColorFilter(Theme.getColor("chats_actionIcon"), PorterDuff.Mode.MULTIPLY));
            drawable.draw(canvas);
        } else if (i == 0) {
            TextPaint textPaint = this.textPaint;
            if (textPaint != null && this.buttonText != null) {
                int alpha = textPaint.getAlpha();
                this.textPaint.setAlpha((int) (alpha * (1.0f - (Math.min(0.6f, this.progress) / 0.6f))));
                canvas.drawText(this.buttonText, (getWidth() - this.buttonWidth) / 2.0f, ((getHeight() / 2.0f) + (this.textPaint.getTextSize() / 2.0f)) - AndroidUtilities.m51dp(1.75f), this.textPaint);
                this.textPaint.setAlpha(alpha);
            }
            float max = (Math.max(0.4f, this.progress) - 0.4f) / 0.6f;
            if (max != BitmapDescriptorFactory.HUE_RED) {
                float m51dp2 = AndroidUtilities.m51dp(21.0f) + ((getWidth() - (AndroidUtilities.m51dp(21.0f) * 2)) * max);
                float height2 = getHeight() / 2.0f;
                canvas.drawLine(AndroidUtilities.m51dp(21.0f), height2, m51dp2, height2, this.outlinePaint);
                double m51dp3 = AndroidUtilities.m51dp(9.0f) * max;
                float cos = (float) (m51dp2 - (Math.cos(0.7853981633974483d) * m51dp3));
                float sin = (float) (Math.sin(0.7853981633974483d) * m51dp3);
                canvas.drawLine(m51dp2, height2, cos, height2 - sin, this.outlinePaint);
                canvas.drawLine(m51dp2, height2, cos, height2 + sin, this.outlinePaint);
            }
        } else if (i == 1) {
            float m51dp4 = AndroidUtilities.m51dp(21.0f);
            float width2 = getWidth() - AndroidUtilities.m51dp(21.0f);
            float height3 = getHeight() / 2.0f;
            canvas.save();
            canvas.translate((-AndroidUtilities.m50dp(2)) * this.progress, BitmapDescriptorFactory.HUE_RED);
            canvas.rotate(this.progress * 90.0f, getWidth() / 2.0f, getHeight() / 2.0f);
            canvas.drawLine(((width2 - m51dp4) * this.progress) + m51dp4, height3, width2, height3, this.outlinePaint);
            int m51dp5 = AndroidUtilities.m51dp((this.progress * (-1.0f)) + 9.0f);
            int m51dp6 = AndroidUtilities.m51dp((this.progress * 7.0f) + 9.0f);
            double d = width2;
            double d2 = m51dp5;
            double d3 = height3;
            canvas.drawLine(width2, height3, (float) (d - (Math.cos(0.7853981633974483d) * d2)), (float) ((d2 * Math.sin(0.7853981633974483d)) + d3), this.outlinePaint);
            double d4 = m51dp6;
            canvas.drawLine(width2, height3, (float) (d - (Math.cos(0.7853981633974483d) * d4)), (float) (d3 - (d4 * Math.sin(0.7853981633974483d))), this.outlinePaint);
            canvas.restore();
        }
        Drawable drawable2 = this.rippleDrawable;
        if (drawable2 != null) {
            drawable2.setBounds(0, 0, getWidth(), getHeight());
            if (Build.VERSION.SDK_INT >= 21) {
                this.rippleDrawable.setHotspotBounds(0, 0, getWidth(), getHeight());
            }
            this.rippleDrawable.draw(canvas);
        }
    }

    @Override // android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.rippleDrawable;
        if (drawable != null) {
            drawable.setState(getDrawableState());
            invalidate();
        }
    }

    @Override // android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.rippleDrawable;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public void drawableHotspotChanged(float f, float f2) {
        super.drawableHotspotChanged(f, f2);
        Drawable drawable = this.rippleDrawable;
        if (drawable == null || Build.VERSION.SDK_INT < 21) {
            return;
        }
        drawable.setHotspot(f, f2);
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        Drawable drawable2;
        return super.verifyDrawable(drawable) || ((drawable2 = this.rippleDrawable) != null && drawable == drawable2);
    }
}
