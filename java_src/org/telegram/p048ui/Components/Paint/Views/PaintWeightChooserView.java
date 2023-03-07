package org.telegram.p048ui.Components.Paint.Views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.math.MathUtils;
import androidx.core.view.GestureDetectorCompat;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p048ui.Components.AnimatedFloat;
import org.telegram.p048ui.Components.Paint.RenderView;
import org.telegram.p048ui.Components.Paint.Swatch;
/* renamed from: org.telegram.ui.Components.Paint.Views.PaintWeightChooserView */
/* loaded from: classes6.dex */
public class PaintWeightChooserView extends View {
    private AnimatedFloat animatedMax;
    private AnimatedFloat animatedMin;
    private AnimatedFloat animatedWeight;
    private Paint backgroundPaint;
    private Paint colorPaint;
    private Swatch colorSwatch;
    private boolean drawCenter;
    private int fromContentHeight;
    private GestureDetectorCompat gestureDetector;
    private float hideProgress;
    private boolean isPanTransitionInProgress;
    private boolean isTouchInProgress;
    private boolean isViewHidden;
    private long lastUpdate;
    private float max;
    private float min;
    private int newContentHeight;
    private Runnable onUpdate;
    private float panProgress;
    private Path path;
    private RenderView renderView;
    private boolean showPreview;
    private float showProgress;
    private RectF touchRect;
    private ValueOverride valueOverride;

    /* renamed from: org.telegram.ui.Components.Paint.Views.PaintWeightChooserView$ValueOverride */
    /* loaded from: classes6.dex */
    public interface ValueOverride {
        float get();

        void set(float f);
    }

    public PaintWeightChooserView(Context context) {
        super(context);
        this.backgroundPaint = new Paint(1);
        this.colorPaint = new Paint(1);
        this.path = new Path();
        this.touchRect = new RectF();
        this.showPreview = true;
        this.animatedWeight = new AnimatedFloat(this);
        this.animatedMin = new AnimatedFloat(this);
        this.animatedMax = new AnimatedFloat(this);
        this.colorSwatch = new Swatch(-1, 1.0f, 0.016773745f);
        this.drawCenter = true;
        this.gestureDetector = new GestureDetectorCompat(context, new GestureDetector.SimpleOnGestureListener() { // from class: org.telegram.ui.Components.Paint.Views.PaintWeightChooserView.1
            float startDeltaY;
            float startWeight;
            boolean startedY;

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onDown(MotionEvent motionEvent) {
                boolean contains = PaintWeightChooserView.this.touchRect.contains(motionEvent.getX(), motionEvent.getY());
                if (PaintWeightChooserView.this.isTouchInProgress != contains) {
                    PaintWeightChooserView.this.isTouchInProgress = contains;
                    PaintWeightChooserView.this.invalidate();
                    if (contains) {
                        this.startWeight = PaintWeightChooserView.this.valueOverride != null ? PaintWeightChooserView.this.valueOverride.get() : PaintWeightChooserView.this.colorSwatch.brushWeight;
                        this.startedY = false;
                    }
                }
                return PaintWeightChooserView.this.isTouchInProgress;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                if (PaintWeightChooserView.this.isTouchInProgress) {
                    if (!this.startedY) {
                        this.startDeltaY = motionEvent.getY() - motionEvent2.getY();
                        this.startedY = true;
                    }
                    float clamp = MathUtils.clamp(this.startWeight + ((((motionEvent.getY() - motionEvent2.getY()) - this.startDeltaY) / PaintWeightChooserView.this.touchRect.height()) * (PaintWeightChooserView.this.max - PaintWeightChooserView.this.min)), PaintWeightChooserView.this.min, PaintWeightChooserView.this.max);
                    if (PaintWeightChooserView.this.valueOverride != null) {
                        PaintWeightChooserView.this.valueOverride.set(clamp);
                    } else {
                        PaintWeightChooserView.this.colorSwatch.brushWeight = clamp;
                    }
                    PaintWeightChooserView.this.animatedWeight.set(clamp, true);
                    PaintWeightChooserView.this.onUpdate.run();
                    PaintWeightChooserView.this.invalidate();
                }
                return PaintWeightChooserView.this.isTouchInProgress;
            }
        });
        this.colorPaint.setColor(-1);
        this.colorPaint.setShadowLayer(AndroidUtilities.m50dp(4), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m50dp(2), 1342177280);
        this.backgroundPaint.setColor(1090519039);
        this.backgroundPaint.setShadowLayer(AndroidUtilities.m50dp(3), BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m50dp(1), 637534208);
    }

    public void setShowPreview(boolean z) {
        this.showPreview = z;
        invalidate();
    }

    public void setValueOverride(ValueOverride valueOverride) {
        this.valueOverride = valueOverride;
        invalidate();
    }

    public void startPanTransition(int i, int i2) {
        this.isPanTransitionInProgress = true;
        this.fromContentHeight = i;
        this.newContentHeight = i2;
        invalidate();
    }

    public void stopPanTransition() {
        this.isPanTransitionInProgress = false;
        invalidate();
    }

    public void updatePanTransition(float f, float f2) {
        if (this.isPanTransitionInProgress) {
            if (this.fromContentHeight < this.newContentHeight) {
                f2 = 1.0f - f2;
            }
            this.panProgress = f2;
            setTranslationY(f);
            int lerp = AndroidUtilities.lerp(this.fromContentHeight, this.newContentHeight, this.panProgress);
            int i = (int) (lerp * 0.3f);
            this.touchRect.set(BitmapDescriptorFactory.HUE_RED, (lerp - i) / 2.0f, AndroidUtilities.m50dp(32), (lerp + i) / 2.0f);
            invalidate();
        }
    }

    public void setRenderView(RenderView renderView) {
        this.renderView = renderView;
    }

    public void setColorSwatch(Swatch swatch) {
        this.colorSwatch = swatch;
        invalidate();
    }

    public void setDrawCenter(boolean z) {
        this.drawCenter = z;
        invalidate();
    }

    public void setMinMax(float f, float f2) {
        this.min = f;
        this.max = f2;
        invalidate();
    }

    public void setOnUpdate(Runnable runnable) {
        this.onUpdate = runnable;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean onTouchEvent = this.gestureDetector.onTouchEvent(motionEvent);
        if (motionEvent.getActionMasked() == 1 || motionEvent.getActionMasked() == 3) {
            this.isTouchInProgress = false;
            invalidate();
        }
        return onTouchEvent;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (this.isPanTransitionInProgress) {
            return;
        }
        int height = (int) (getHeight() * 0.3f);
        this.touchRect.set(BitmapDescriptorFactory.HUE_RED, (getHeight() - height) / 2.0f, AndroidUtilities.m50dp(32), (getHeight() + height) / 2.0f);
    }

    public void setViewHidden(boolean z) {
        this.isViewHidden = z;
        invalidate();
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x01d1  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0219  */
    /* JADX WARN: Removed duplicated region for block: B:38:? A[RETURN, SYNTHETIC] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onDraw(android.graphics.Canvas r17) {
        /*
            Method dump skipped, instructions count: 541
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Components.Paint.Views.PaintWeightChooserView.onDraw(android.graphics.Canvas):void");
    }

    private void drawCircleWithShadow(Canvas canvas, float f, float f2, float f3, boolean z) {
        if (z) {
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set((f - f3) - AndroidUtilities.m50dp(6), (f2 - f3) - AndroidUtilities.m50dp(6), f + f3 + AndroidUtilities.m50dp(6), f2 + f3 + AndroidUtilities.m50dp(6));
            canvas.saveLayerAlpha(rectF, (int) (this.showProgress * 255.0f), 31);
        }
        canvas.drawCircle(f, f2, f3, this.colorPaint);
        if (z) {
            canvas.restore();
        }
    }
}
