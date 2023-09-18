package org.telegram.p043ui.Stories.recorder;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.Components.AnimatedFloat;
import org.telegram.p043ui.Components.AnimatedTextView;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
/* renamed from: org.telegram.ui.Stories.recorder.VideoTimerView */
/* loaded from: classes7.dex */
public class VideoTimerView extends View {
    private Paint backgroundPaint;
    private Paint recordPaint;
    private boolean recording;
    private AnimatedFloat recordingT;
    private AnimatedTextView.AnimatedTextDrawable textDrawable;

    public VideoTimerView(Context context) {
        super(context);
        this.backgroundPaint = new Paint(1);
        this.recordPaint = new Paint(1);
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.recordingT = new AnimatedFloat(this, 0L, 250L, cubicBezierInterpolator);
        this.recordPaint.setColor(-907224);
        this.backgroundPaint.setColor(1056964608);
        AnimatedTextView.AnimatedTextDrawable animatedTextDrawable = new AnimatedTextView.AnimatedTextDrawable(false, true, true);
        this.textDrawable = animatedTextDrawable;
        animatedTextDrawable.setAnimationProperties(0.3f, 0L, 250L, cubicBezierInterpolator);
        this.textDrawable.setTextSize(AndroidUtilities.m72dp(13));
        this.textDrawable.setTextColor(-1);
        this.textDrawable.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        this.textDrawable.setCallback(this);
        this.textDrawable.setGravity(1);
        setDuration(0L, false);
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return this.textDrawable == drawable || super.verifyDrawable(drawable);
    }

    public void setRecording(boolean z, boolean z2) {
        this.recording = z;
        if (!z2) {
            this.recordingT.set(z ? 1.0f : BitmapDescriptorFactory.HUE_RED, true);
        }
        invalidate();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m72dp(45), 1073741824));
    }

    public void setDuration(long j, boolean z) {
        long j2 = j % 60;
        long j3 = (j - j2) / 60;
        StringBuilder sb = new StringBuilder(5);
        if (j3 < 10) {
            sb.append('0');
        }
        sb.append(j3);
        sb.append(':');
        if (j2 < 10) {
            sb.append('0');
        }
        sb.append(j2);
        this.textDrawable.setText(sb, z);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float f = this.recordingT.set(this.recording ? 1.0f : 0.0f);
        float m73dp = AndroidUtilities.m73dp(12.66f) * f;
        float currentWidth = this.textDrawable.getCurrentWidth() + m73dp;
        RectF rectF = AndroidUtilities.rectTmp;
        rectF.set(((getWidth() - currentWidth) / 2.0f) - AndroidUtilities.m72dp(8), AndroidUtilities.m72dp(18), ((getWidth() + currentWidth) / 2.0f) + AndroidUtilities.m72dp(8), AndroidUtilities.m72dp(40));
        canvas.drawRoundRect(rectF, AndroidUtilities.m72dp(18), AndroidUtilities.m72dp(18), this.backgroundPaint);
        if (f > BitmapDescriptorFactory.HUE_RED) {
            this.recordPaint.setAlpha((int) (Utilities.clamp((((float) Math.sin((((float) (System.currentTimeMillis() % ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS)) / 1000.0f) * 3.141592653589793d)) / 4.0f) + 0.75f, 1.0f, (float) BitmapDescriptorFactory.HUE_RED) * 255.0f));
            invalidate();
            canvas.drawCircle(rectF.left + AndroidUtilities.m73dp(10.66f), rectF.centerY(), AndroidUtilities.m72dp(4) * f, this.recordPaint);
        }
        this.textDrawable.setBounds((int) (rectF.left + m73dp), ((int) rectF.top) - AndroidUtilities.m72dp(1), (int) rectF.right, (int) rectF.bottom);
        this.textDrawable.draw(canvas);
    }
}
