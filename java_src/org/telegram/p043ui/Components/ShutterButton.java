package org.telegram.p043ui.Components;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.DecelerateInterpolator;
import androidx.annotation.Keep;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
/* renamed from: org.telegram.ui.Components.ShutterButton */
/* loaded from: classes6.dex */
public class ShutterButton extends View {
    private ShutterButtonDelegate delegate;
    private DecelerateInterpolator interpolator;
    private long lastUpdateTime;
    private Runnable longPressed;
    private boolean pressed;
    private boolean processRelease;
    private Paint redPaint;
    private float redProgress;
    private Drawable shadowDrawable;
    private State state;
    private long totalTime;
    private Paint whitePaint;

    /* renamed from: org.telegram.ui.Components.ShutterButton$ShutterButtonDelegate */
    /* loaded from: classes6.dex */
    public interface ShutterButtonDelegate {
        boolean onTranslationChanged(float f, float f2);

        void shutterCancel();

        boolean shutterLongPressed();

        void shutterReleased();
    }

    /* renamed from: org.telegram.ui.Components.ShutterButton$State */
    /* loaded from: classes6.dex */
    public enum State {
        DEFAULT,
        RECORDING
    }

    public ShutterButton(Context context) {
        super(context);
        this.interpolator = new DecelerateInterpolator();
        this.longPressed = new Runnable() { // from class: org.telegram.ui.Components.ShutterButton.1
            @Override // java.lang.Runnable
            public void run() {
                if (ShutterButton.this.delegate == null || ShutterButton.this.delegate.shutterLongPressed()) {
                    return;
                }
                ShutterButton.this.processRelease = false;
            }
        };
        this.shadowDrawable = getResources().getDrawable(C3632R.C3634drawable.camera_btn);
        Paint paint = new Paint(1);
        this.whitePaint = paint;
        paint.setStyle(Paint.Style.FILL);
        this.whitePaint.setColor(-1);
        Paint paint2 = new Paint(1);
        this.redPaint = paint2;
        paint2.setStyle(Paint.Style.FILL);
        this.redPaint.setColor(-3324089);
        this.state = State.DEFAULT;
    }

    public void setDelegate(ShutterButtonDelegate shutterButtonDelegate) {
        this.delegate = shutterButtonDelegate;
    }

    public ShutterButtonDelegate getDelegate() {
        return this.delegate;
    }

    private void setHighlighted(boolean z) {
        AnimatorSet animatorSet = new AnimatorSet();
        if (z) {
            animatorSet.playTogether(ObjectAnimator.ofFloat(this, View.SCALE_X, 1.06f), ObjectAnimator.ofFloat(this, View.SCALE_Y, 1.06f));
        } else {
            animatorSet.playTogether(ObjectAnimator.ofFloat(this, View.SCALE_X, 1.0f), ObjectAnimator.ofFloat(this, View.SCALE_Y, 1.0f));
            animatorSet.setStartDelay(40L);
        }
        animatorSet.setDuration(120L);
        animatorSet.setInterpolator(this.interpolator);
        animatorSet.start();
    }

    @Override // android.view.View
    @Keep
    public void setScaleX(float f) {
        super.setScaleX(f);
        invalidate();
    }

    public State getState() {
        return this.state;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int measuredWidth = getMeasuredWidth() / 2;
        int measuredHeight = getMeasuredHeight() / 2;
        this.shadowDrawable.setBounds(measuredWidth - AndroidUtilities.m104dp(36), measuredHeight - AndroidUtilities.m104dp(36), AndroidUtilities.m104dp(36) + measuredWidth, AndroidUtilities.m104dp(36) + measuredHeight);
        this.shadowDrawable.draw(canvas);
        if (this.pressed || getScaleX() != 1.0f) {
            float scaleX = (getScaleX() - 1.0f) / 0.06f;
            this.whitePaint.setAlpha((int) (255.0f * scaleX));
            float f = measuredWidth;
            float f2 = measuredHeight;
            canvas.drawCircle(f, f2, AndroidUtilities.m104dp(26), this.whitePaint);
            if (this.state == State.RECORDING) {
                if (this.redProgress != 1.0f) {
                    long abs = Math.abs(System.currentTimeMillis() - this.lastUpdateTime);
                    if (abs > 17) {
                        abs = 17;
                    }
                    long j = this.totalTime + abs;
                    this.totalTime = j;
                    if (j > 120) {
                        this.totalTime = 120L;
                    }
                    this.redProgress = this.interpolator.getInterpolation(((float) this.totalTime) / 120.0f);
                    invalidate();
                }
                canvas.drawCircle(f, f2, AndroidUtilities.m105dp(26.5f) * scaleX * this.redProgress, this.redPaint);
            } else if (this.redProgress != BitmapDescriptorFactory.HUE_RED) {
                canvas.drawCircle(f, f2, AndroidUtilities.m105dp(26.5f) * scaleX, this.redPaint);
            }
        } else if (this.redProgress != BitmapDescriptorFactory.HUE_RED) {
            this.redProgress = BitmapDescriptorFactory.HUE_RED;
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(AndroidUtilities.m104dp(84), AndroidUtilities.m104dp(84));
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        int action = motionEvent.getAction();
        if (action == 0) {
            AndroidUtilities.runOnUIThread(this.longPressed, 800L);
            this.pressed = true;
            this.processRelease = true;
            setHighlighted(true);
        } else if (action == 1) {
            setHighlighted(false);
            AndroidUtilities.cancelRunOnUIThread(this.longPressed);
            if (this.processRelease) {
                this.delegate.shutterReleased();
            }
        } else if (action == 2) {
            if (x >= BitmapDescriptorFactory.HUE_RED && x <= getMeasuredWidth()) {
                x = 0.0f;
            }
            if (y >= BitmapDescriptorFactory.HUE_RED && y <= getMeasuredHeight()) {
                y = 0.0f;
            }
            if (this.delegate.onTranslationChanged(x, y)) {
                AndroidUtilities.cancelRunOnUIThread(this.longPressed);
                if (this.state == State.RECORDING) {
                    this.processRelease = false;
                    setHighlighted(false);
                    this.delegate.shutterCancel();
                    setState(State.DEFAULT, true);
                }
            }
        } else if (action == 3) {
            setHighlighted(false);
            this.pressed = false;
        }
        return true;
    }

    public void setState(State state, boolean z) {
        if (this.state != state) {
            this.state = state;
            if (z) {
                this.lastUpdateTime = System.currentTimeMillis();
                this.totalTime = 0L;
                if (this.state != State.RECORDING) {
                    this.redProgress = BitmapDescriptorFactory.HUE_RED;
                }
            } else if (state == State.RECORDING) {
                this.redProgress = 1.0f;
            } else {
                this.redProgress = BitmapDescriptorFactory.HUE_RED;
            }
            invalidate();
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.Button");
        accessibilityNodeInfo.setClickable(true);
        accessibilityNodeInfo.setLongClickable(true);
        if (Build.VERSION.SDK_INT >= 21) {
            accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_CLICK.getId(), LocaleController.getString("AccActionTakePicture", C3632R.string.AccActionTakePicture)));
            accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_LONG_CLICK.getId(), LocaleController.getString("AccActionRecordVideo", C3632R.string.AccActionRecordVideo)));
        }
    }
}
