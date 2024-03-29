package org.telegram.p043ui.Stories.recorder;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.File;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.camera.CameraController;
import org.telegram.messenger.camera.CameraView;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.Paint.Views.RoundView;
/* renamed from: org.telegram.ui.Stories.recorder.RoundVideoRecorder */
/* loaded from: classes6.dex */
public class RoundVideoRecorder extends FrameLayout {
    private float alpha;
    public final CameraView cameraView;
    private ValueAnimator cameraViewAnimator;
    private boolean cancelled;
    private ValueAnimator destroyAnimator;
    private float destroyT;
    public final File file;
    private Runnable onDestroyCallback;
    private Utilities.Callback3<File, String, Long> onDoneCallback;
    private final Paint progressPaint;
    private long recordingStarted;
    private long recordingStopped;
    private RoundView roundView;
    private final Paint shadowPaint;
    private final Runnable stopRunnable;

    protected void receivedAmplitude(double d) {
        throw null;
    }

    public RoundVideoRecorder(Context context) {
        super(context);
        this.recordingStarted = -1L;
        this.recordingStopped = -1L;
        this.shadowPaint = new Paint(1);
        Paint paint = new Paint(1);
        this.progressPaint = paint;
        this.stopRunnable = new Runnable() { // from class: org.telegram.ui.Stories.recorder.RoundVideoRecorder$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                RoundVideoRecorder.this.stop();
            }
        };
        this.alpha = 1.0f;
        this.cancelled = false;
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setStrokeJoin(Paint.Join.ROUND);
        this.file = StoryEntry.makeCacheFile(UserConfig.selectedAccount, true);
        CameraView cameraView = new CameraView(context, true, false) { // from class: org.telegram.ui.Stories.recorder.RoundVideoRecorder.1
            private final Path circlePath = new Path();

            @Override // org.telegram.messenger.camera.CameraView
            protected boolean square() {
                return true;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.messenger.camera.CameraView, android.view.ViewGroup, android.view.View
            public void dispatchDraw(Canvas canvas) {
                canvas.save();
                this.circlePath.rewind();
                this.circlePath.addCircle(getWidth() / 2.0f, getHeight() / 2.0f, Math.min(getWidth() / 2.0f, getHeight() / 2.0f), Path.Direction.CW);
                canvas.clipPath(this.circlePath);
                super.dispatchDraw(canvas);
                canvas.restore();
            }

            @Override // org.telegram.messenger.camera.CameraView
            protected void receivedAmplitude(double d) {
                RoundVideoRecorder.this.receivedAmplitude(d);
            }
        };
        this.cameraView = cameraView;
        cameraView.setScaleX(BitmapDescriptorFactory.HUE_RED);
        cameraView.setScaleY(BitmapDescriptorFactory.HUE_RED);
        addView(cameraView);
        cameraView.setDelegate(new CameraView.CameraViewDelegate() { // from class: org.telegram.ui.Stories.recorder.RoundVideoRecorder$$ExternalSyntheticLambda7
            @Override // org.telegram.messenger.camera.CameraView.CameraViewDelegate
            public final void onCameraInit() {
                RoundVideoRecorder.this.lambda$new$2();
            }
        });
        cameraView.initTexture();
        setWillNotDraw(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2() {
        if (this.recordingStarted > 0) {
            return;
        }
        CameraController.getInstance().recordVideo(this.cameraView.getCameraSession(), this.file, false, new CameraController.VideoTakeCallback() { // from class: org.telegram.ui.Stories.recorder.RoundVideoRecorder$$ExternalSyntheticLambda6
            @Override // org.telegram.messenger.camera.CameraController.VideoTakeCallback
            public final void onFinishVideoRecording(String str, long j) {
                RoundVideoRecorder.this.lambda$new$0(str, j);
            }
        }, new Runnable() { // from class: org.telegram.ui.Stories.recorder.RoundVideoRecorder$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                RoundVideoRecorder.this.lambda$new$1();
            }
        }, this.cameraView, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(String str, long j) {
        this.recordingStopped = System.currentTimeMillis();
        AndroidUtilities.cancelRunOnUIThread(this.stopRunnable);
        if (this.cancelled) {
            return;
        }
        if (j > 1000) {
            this.cameraView.destroy(true, null);
            Utilities.Callback3<File, String, Long> callback3 = this.onDoneCallback;
            if (callback3 != null) {
                callback3.run(this.file, str, Long.valueOf(j));
                return;
            }
            return;
        }
        destroy(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1() {
        this.cameraView.animate().scaleX(1.0f).scaleY(1.0f).setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT).setDuration(280L).start();
        this.recordingStarted = System.currentTimeMillis();
        invalidate();
        try {
            performHapticFeedback(3);
        } catch (Exception unused) {
        }
        AndroidUtilities.runOnUIThread(this.stopRunnable, 59500L);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int min = (int) (Math.min(size, size2) * 0.43f);
        this.cameraView.measure(View.MeasureSpec.makeMeasureSpec(min, 1073741824), View.MeasureSpec.makeMeasureSpec(min, 1073741824));
        setMeasuredDimension(size, size2);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int measuredWidth = ((i3 - i) - this.cameraView.getMeasuredWidth()) - AndroidUtilities.m107dp(16);
        int m107dp = AndroidUtilities.m107dp(72);
        CameraView cameraView = this.cameraView;
        cameraView.layout(measuredWidth, m107dp, cameraView.getMeasuredWidth() + measuredWidth, this.cameraView.getMeasuredHeight() + m107dp);
    }

    public RoundVideoRecorder onDone(Utilities.Callback3<File, String, Long> callback3) {
        this.onDoneCallback = callback3;
        return this;
    }

    public RoundVideoRecorder onDestroy(Runnable runnable) {
        this.onDestroyCallback = runnable;
        return this;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        RectF rectF = AndroidUtilities.rectTmp;
        rectF.set(this.cameraView.getX() + ((this.cameraView.getWidth() / 2.0f) * (1.0f - this.cameraView.getScaleX())), this.cameraView.getY() + ((this.cameraView.getHeight() / 2.0f) * (1.0f - this.cameraView.getScaleY())), (this.cameraView.getX() + this.cameraView.getWidth()) - ((this.cameraView.getWidth() / 2.0f) * (1.0f - this.cameraView.getScaleX())), (this.cameraView.getY() + this.cameraView.getHeight()) - ((this.cameraView.getHeight() / 2.0f) * (1.0f - this.cameraView.getScaleY())));
        this.shadowPaint.setShadowLayer(AndroidUtilities.m107dp(2), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m108dp(0.66f), Theme.multAlpha(536870912, this.alpha));
        this.shadowPaint.setAlpha((int) (this.alpha * 255.0f));
        canvas.drawCircle(rectF.centerX(), rectF.centerY(), Math.min(rectF.width() / 2.0f, rectF.height() / 2.0f) - 1.0f, this.shadowPaint);
        super.dispatchDraw(canvas);
        RoundView roundView = this.roundView;
        if (roundView != null && roundView.getWidth() > 0 && this.roundView.getHeight() > 0) {
            canvas.save();
            canvas.translate(rectF.left, rectF.top);
            canvas.scale(rectF.width() / this.roundView.getWidth(), rectF.height() / this.roundView.getHeight());
            float alpha = this.roundView.getAlpha();
            this.roundView.setDraw(true);
            this.roundView.setAlpha(1.0f - this.alpha);
            this.roundView.draw(canvas);
            this.roundView.setAlpha(alpha);
            this.roundView.setDraw(false);
            canvas.restore();
        }
        if (this.recordingStarted > 0) {
            float clamp = Utilities.clamp(((float) sinceRecording()) / 59500.0f, 1.0f, (float) BitmapDescriptorFactory.HUE_RED);
            this.progressPaint.setStrokeWidth(AndroidUtilities.m108dp(3.33f));
            this.progressPaint.setColor(Theme.multAlpha(-1090519041, this.alpha));
            this.progressPaint.setShadowLayer(AndroidUtilities.m107dp(1), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m108dp(0.33f), Theme.multAlpha(536870912, this.alpha));
            rectF.inset(-AndroidUtilities.m108dp(7.665f), -AndroidUtilities.m108dp(7.665f));
            canvas.drawArc(rectF, -90.0f, 360.0f * clamp, false, this.progressPaint);
            if (this.recordingStopped <= 0) {
                invalidate();
            }
        }
    }

    public long sinceRecording() {
        if (this.recordingStarted < 0) {
            return 0L;
        }
        long j = this.recordingStopped;
        if (j < 0) {
            j = System.currentTimeMillis();
        }
        return Math.min(59500L, j - this.recordingStarted);
    }

    public String sinceRecordingText() {
        long sinceRecording = sinceRecording();
        int i = (int) (sinceRecording / 1000);
        int i2 = (int) ((sinceRecording - (i * 1000)) / 100);
        int i3 = i / 60;
        int i4 = i % 60;
        StringBuilder sb = new StringBuilder();
        sb.append(i3);
        sb.append(":");
        sb.append(i4 < 10 ? SessionDescription.SUPPORTED_SDP_VERSION : "");
        sb.append(i4);
        sb.append(".");
        sb.append(i2);
        return sb.toString();
    }

    public void hideTo(final RoundView roundView) {
        if (roundView == null) {
            destroy(false);
            return;
        }
        AndroidUtilities.cancelRunOnUIThread(this.stopRunnable);
        this.cameraView.destroy(true, null);
        roundView.setDraw(false);
        post(new Runnable() { // from class: org.telegram.ui.Stories.recorder.RoundVideoRecorder$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                RoundVideoRecorder.this.lambda$hideTo$5(roundView);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$hideTo$5(final RoundView roundView) {
        if (roundView.getWidth() <= 0) {
            this.cameraView.animate().scaleX(BitmapDescriptorFactory.HUE_RED).scaleY(1.0f).withEndAction(new Runnable() { // from class: org.telegram.ui.Stories.recorder.RoundVideoRecorder$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    RoundVideoRecorder.this.lambda$hideTo$3();
                }
            }).start();
            return;
        }
        final float width = roundView.getWidth() / this.cameraView.getWidth();
        ValueAnimator valueAnimator = this.cameraViewAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.cameraViewAnimator = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        final float scaleX = this.cameraView.getScaleX();
        final float x = (roundView.getX() + (roundView.getWidth() / 2.0f)) - (this.cameraView.getX() + (this.cameraView.getWidth() / 2.0f));
        final float y = (roundView.getY() + (roundView.getHeight() / 2.0f)) - (this.cameraView.getY() + (this.cameraView.getHeight() / 2.0f));
        this.cameraViewAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.recorder.RoundVideoRecorder$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                RoundVideoRecorder.this.lambda$hideTo$4(scaleX, width, x, y, valueAnimator2);
            }
        });
        this.cameraViewAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.recorder.RoundVideoRecorder.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                RoundView roundView2 = roundView;
                if (roundView2 != null) {
                    roundView2.setDraw(true);
                }
                if (RoundVideoRecorder.this.getParent() instanceof ViewGroup) {
                    ((ViewGroup) RoundVideoRecorder.this.getParent()).removeView(RoundVideoRecorder.this);
                }
            }
        });
        this.cameraViewAnimator.setDuration(320L);
        this.cameraViewAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.roundView = roundView;
        this.cameraViewAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$hideTo$3() {
        if (getParent() instanceof ViewGroup) {
            ((ViewGroup) getParent()).removeView(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$hideTo$4(float f, float f2, float f3, float f4, ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.cameraView.setScaleX(AndroidUtilities.lerp(f, f2, floatValue));
        this.cameraView.setScaleY(AndroidUtilities.lerp(f, f2, floatValue));
        this.cameraView.setTranslationX(f3 * floatValue);
        this.cameraView.setTranslationY(f4 * floatValue);
        float f5 = 1.0f - floatValue;
        this.cameraView.setAlpha(f5);
        this.alpha = f5;
        invalidate();
    }

    public void stop() {
        AndroidUtilities.cancelRunOnUIThread(this.stopRunnable);
        if (this.recordingStarted <= 0) {
            destroy(true);
        } else {
            CameraController.getInstance().stopVideoRecording(this.cameraView.getCameraSessionRecording(), false, false);
        }
    }

    public void cancel() {
        this.cancelled = true;
        AndroidUtilities.cancelRunOnUIThread(this.stopRunnable);
        CameraController.getInstance().stopVideoRecording(this.cameraView.getCameraSessionRecording(), false, false);
        destroy(false);
    }

    public void destroy(boolean z) {
        Runnable runnable = this.onDestroyCallback;
        if (runnable != null) {
            runnable.run();
            this.onDestroyCallback = null;
        }
        AndroidUtilities.cancelRunOnUIThread(this.stopRunnable);
        this.cameraView.destroy(true, null);
        try {
            this.file.delete();
        } catch (Exception unused) {
        }
        if (z) {
            if (getParent() instanceof ViewGroup) {
                ((ViewGroup) getParent()).removeView(this);
                return;
            }
            return;
        }
        ValueAnimator valueAnimator = this.destroyAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.destroyT, 1.0f);
        this.destroyAnimator = ofFloat;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Stories.recorder.RoundVideoRecorder$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                RoundVideoRecorder.this.lambda$destroy$6(valueAnimator2);
            }
        });
        this.destroyAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Stories.recorder.RoundVideoRecorder.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (RoundVideoRecorder.this.getParent() instanceof ViewGroup) {
                    ((ViewGroup) RoundVideoRecorder.this.getParent()).removeView(RoundVideoRecorder.this);
                }
            }
        });
        this.destroyAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.destroyAnimator.setDuration(280L);
        this.destroyAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$destroy$6(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.destroyT = floatValue;
        this.cameraView.setScaleX(1.0f - floatValue);
        this.cameraView.setScaleY(1.0f - this.destroyT);
        invalidate();
    }
}
