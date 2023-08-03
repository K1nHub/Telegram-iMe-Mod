package org.telegram.p043ui.Stories.recorder;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewPropertyAnimator;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.Components.AnimatedTextView;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
/* renamed from: org.telegram.ui.Stories.recorder.VideoTimeView */
/* loaded from: classes6.dex */
public class VideoTimeView extends View {
    private final Paint backgroundPaint;
    private boolean shown;
    private final AnimatedTextView.AnimatedTextDrawable textDrawable;

    public VideoTimeView(Context context) {
        super(context);
        Paint paint = new Paint(1);
        this.backgroundPaint = paint;
        this.shown = true;
        paint.setColor(Integer.MIN_VALUE);
        AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = new AnimatedTextView.AnimatedTextDrawable(false, true, true);
        this.textDrawable = animatedTextDrawable;
        animatedTextDrawable.setAnimationProperties(0.2f, 0L, 200L, CubicBezierInterpolator.EASE_OUT_QUINT);
        animatedTextDrawable.setTextSize(AndroidUtilities.m72dp(13));
        animatedTextDrawable.setTextColor(-1);
        animatedTextDrawable.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        animatedTextDrawable.setCallback(this);
        animatedTextDrawable.setGravity(1);
        setTime(0L, false);
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return this.textDrawable == drawable || super.verifyDrawable(drawable);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m72dp(25), 1073741824));
    }

    public void setTime(long j, boolean z) {
        long j2 = j % 1000;
        long j3 = j / 1000;
        long j4 = j3 % 60;
        long j5 = j3 - j4;
        long j6 = j5 / 60;
        long j7 = (j5 - (j6 * 60)) / 60;
        StringBuilder sb = new StringBuilder(8);
        if (j7 < 10) {
            sb.append('0');
        }
        sb.append(j7);
        sb.append(':');
        if (j6 < 10) {
            sb.append('0');
        }
        sb.append(j6);
        sb.append(':');
        if (j4 < 10) {
            sb.append('0');
        }
        sb.append(j4);
        if (TextUtils.equals(sb, this.textDrawable.getText())) {
            return;
        }
        this.textDrawable.cancelAnimation();
        this.textDrawable.setText(sb, z && !LocaleController.isRTL);
    }

    public void show(boolean z, boolean z2) {
        if (z == this.shown && z2) {
            return;
        }
        this.shown = z;
        animate().cancel();
        float f = BitmapDescriptorFactory.HUE_RED;
        if (z2) {
            ViewPropertyAnimator translationY = animate().translationY(z ? 0.0f : AndroidUtilities.m72dp(6));
            if (z) {
                f = 1.0f;
            }
            translationY.alpha(f).scaleX(z ? 1.0f : 0.8f).scaleY(z ? 1.0f : 0.8f).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).setDuration(220L).start();
            return;
        }
        setTranslationY(z ? 0.0f : AndroidUtilities.m72dp(6));
        setScaleX(z ? 1.0f : 0.8f);
        setScaleY(z ? 1.0f : 0.8f);
        if (z) {
            f = 1.0f;
        }
        setAlpha(f);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float currentWidth = this.textDrawable.getCurrentWidth();
        RectF rectF = AndroidUtilities.rectTmp;
        rectF.set(((getWidth() - currentWidth) / 2.0f) - AndroidUtilities.m72dp(6), AndroidUtilities.m72dp(2), ((getWidth() + currentWidth) / 2.0f) + AndroidUtilities.m72dp(6), AndroidUtilities.m72dp(23));
        canvas.drawRoundRect(rectF, AndroidUtilities.m72dp(5), AndroidUtilities.m72dp(5), this.backgroundPaint);
        this.textDrawable.setBounds((int) rectF.left, ((int) rectF.top) - AndroidUtilities.m72dp(1), (int) rectF.right, (int) rectF.bottom);
        this.textDrawable.draw(canvas);
    }
}
