package org.telegram.p043ui.Components.Crop;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RectF;
import android.os.Build;
import android.view.MotionEvent;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.File;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.VideoEditedInfo;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.BubbleActivity;
import org.telegram.p043ui.Components.Crop.CropAreaView;
import org.telegram.p043ui.Components.Crop.CropGestureDetector;
import org.telegram.p043ui.Components.PaintingOverlay;
import org.telegram.p043ui.Components.VideoEditTextureView;
/* renamed from: org.telegram.ui.Components.Crop.CropView */
/* loaded from: classes6.dex */
public class CropView extends FrameLayout implements CropAreaView.AreaViewListener, CropGestureDetector.CropGestureListener {
    private boolean animating;
    public CropAreaView areaView;
    private Bitmap bitmap;
    private int bitmapRotation;
    private float bottomPadding;
    RectF cropRect;
    private CropTransform cropTransform;
    private CropGestureDetector detector;
    private boolean freeform;
    private boolean hasAspectRatioDialog;
    private ImageView imageView;
    private boolean inBubbleMode;
    private RectF initialAreaRect;
    private boolean isVisible;
    private CropViewListener listener;
    private Matrix overlayMatrix;
    private RectF previousAreaRect;
    private float rotationStartScale;
    RectF sizeRect;
    public CropState state;
    private Matrix tempMatrix;
    private CropRectangle tempRect;
    float[] values;
    private VideoEditTextureView videoEditTextureView;

    /* renamed from: org.telegram.ui.Components.Crop.CropView$CropViewListener */
    /* loaded from: classes6.dex */
    public interface CropViewListener {
        void onAspectLock(boolean z);

        void onChange(boolean z);

        void onTapUp();

        void onUpdate();
    }

    @Override // org.telegram.p043ui.Components.Crop.CropGestureDetector.CropGestureListener
    public void onFling(float f, float f2, float f3, float f4) {
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return true;
    }

    public void setSubtitle(String str) {
        this.areaView.setSubtitle(str);
    }

    /* renamed from: org.telegram.ui.Components.Crop.CropView$CropState */
    /* loaded from: classes6.dex */
    public class CropState {
        public float baseRotation;
        public float height;
        public Matrix matrix;
        public float minimumScale;
        public boolean mirrored;
        public float orientation;
        public float rotation;
        public float scale;
        public float width;

        /* renamed from: x */
        public float f1840x;

        /* renamed from: y */
        public float f1841y;

        private CropState(int i, int i2, int i3) {
            this.width = i;
            this.height = i2;
            this.f1840x = BitmapDescriptorFactory.HUE_RED;
            this.f1841y = BitmapDescriptorFactory.HUE_RED;
            this.scale = 1.0f;
            this.baseRotation = i3;
            this.rotation = BitmapDescriptorFactory.HUE_RED;
            this.matrix = new Matrix();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void update(int i, int i2, int i3) {
            float f = i;
            this.scale *= this.width / f;
            this.width = f;
            this.height = i2;
            updateMinimumScale();
            this.matrix.getValues(CropView.this.values);
            this.matrix.reset();
            Matrix matrix = this.matrix;
            float f2 = this.scale;
            matrix.postScale(f2, f2);
            Matrix matrix2 = this.matrix;
            float[] fArr = CropView.this.values;
            matrix2.postTranslate(fArr[2], fArr[5]);
            CropView.this.updateMatrix();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean hasChanges() {
            return Math.abs(this.f1840x) > 1.0E-5f || Math.abs(this.f1841y) > 1.0E-5f || Math.abs(this.scale - this.minimumScale) > 1.0E-5f || Math.abs(this.rotation) > 1.0E-5f || Math.abs(this.orientation) > 1.0E-5f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float getWidth() {
            return this.width;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float getHeight() {
            return this.height;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float getOrientedWidth() {
            return (this.orientation + this.baseRotation) % 180.0f != BitmapDescriptorFactory.HUE_RED ? this.height : this.width;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float getOrientedHeight() {
            return (this.orientation + this.baseRotation) % 180.0f != BitmapDescriptorFactory.HUE_RED ? this.width : this.height;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void translate(float f, float f2) {
            this.f1840x += f;
            this.f1841y += f2;
            this.matrix.postTranslate(f, f2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float getX() {
            return this.f1840x;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float getY() {
            return this.f1841y;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void scale(float f, float f2, float f3) {
            this.scale *= f;
            this.matrix.postScale(f, f, f2, f3);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float getScale() {
            return this.scale;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void rotate(float f, float f2, float f3) {
            this.rotation += f;
            this.matrix.postRotate(f, f2, f3);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float getRotation() {
            return this.rotation;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float getOrientation() {
            return this.orientation + this.baseRotation;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getOrientationOnly() {
            return (int) this.orientation;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float getBaseRotation() {
            return this.baseRotation;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mirror() {
            this.mirrored = !this.mirrored;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void reset(CropAreaView cropAreaView, float f, boolean z) {
            this.matrix.reset();
            this.f1840x = BitmapDescriptorFactory.HUE_RED;
            this.f1841y = BitmapDescriptorFactory.HUE_RED;
            this.rotation = BitmapDescriptorFactory.HUE_RED;
            this.orientation = f;
            updateMinimumScale();
            float f2 = this.minimumScale;
            this.scale = f2;
            this.matrix.postScale(f2, f2);
        }

        private void updateMinimumScale() {
            float f = this.orientation;
            float f2 = this.baseRotation;
            float f3 = (f + f2) % 180.0f != BitmapDescriptorFactory.HUE_RED ? this.height : this.width;
            float f4 = (f + f2) % 180.0f != BitmapDescriptorFactory.HUE_RED ? this.width : this.height;
            if (CropView.this.freeform) {
                this.minimumScale = CropView.this.areaView.getCropWidth() / f3;
            } else {
                this.minimumScale = Math.max(CropView.this.areaView.getCropWidth() / f3, CropView.this.areaView.getCropHeight() / f4);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void getConcatMatrix(Matrix matrix) {
            matrix.postConcat(this.matrix);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Matrix getMatrix() {
            Matrix matrix = new Matrix();
            matrix.set(this.matrix);
            return matrix;
        }
    }

    public float getStateOrientation() {
        CropState cropState = this.state;
        return cropState == null ? BitmapDescriptorFactory.HUE_RED : cropState.orientation;
    }

    public float getStateFullOrientation() {
        CropState cropState = this.state;
        if (cropState == null) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        return cropState.orientation + cropState.baseRotation;
    }

    public boolean getStateMirror() {
        CropState cropState = this.state;
        return cropState != null && cropState.mirrored;
    }

    public CropView(Context context) {
        super(context);
        this.values = new float[9];
        this.cropRect = new RectF();
        this.sizeRect = new RectF(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1280.0f, 1280.0f);
        this.inBubbleMode = context instanceof BubbleActivity;
        this.previousAreaRect = new RectF();
        this.initialAreaRect = new RectF();
        this.overlayMatrix = new Matrix();
        this.tempRect = new CropRectangle();
        this.tempMatrix = new Matrix();
        this.animating = false;
        ImageView imageView = new ImageView(context);
        this.imageView = imageView;
        imageView.setScaleType(ImageView.ScaleType.MATRIX);
        addView(this.imageView);
        CropGestureDetector cropGestureDetector = new CropGestureDetector(context);
        this.detector = cropGestureDetector;
        cropGestureDetector.setOnGestureListener(this);
        CropAreaView cropAreaView = new CropAreaView(context);
        this.areaView = cropAreaView;
        cropAreaView.setListener(this);
        addView(this.areaView);
    }

    public boolean isReady() {
        return (this.detector.isScaling() || this.detector.isDragging() || this.areaView.isDragging()) ? false : true;
    }

    public void setListener(CropViewListener cropViewListener) {
        this.listener = cropViewListener;
    }

    public void setBottomPadding(float f) {
        this.bottomPadding = f;
        this.areaView.setBottomPadding(f);
    }

    public void setAspectRatio(float f) {
        this.areaView.setActualRect(f);
    }

    public void setBitmap(Bitmap bitmap, int i, boolean z, boolean z2, PaintingOverlay paintingOverlay, CropTransform cropTransform, VideoEditTextureView videoEditTextureView, final MediaController.CropState cropState) {
        this.freeform = z;
        this.videoEditTextureView = videoEditTextureView;
        this.cropTransform = cropTransform;
        this.bitmapRotation = i;
        this.bitmap = bitmap;
        this.areaView.setIsVideo(videoEditTextureView != null);
        if (bitmap == null && videoEditTextureView == null) {
            this.state = null;
            this.imageView.setImageDrawable(null);
            return;
        }
        final int currentWidth = getCurrentWidth();
        final int currentHeight = getCurrentHeight();
        CropState cropState2 = this.state;
        if (cropState2 != null && z2) {
            cropState2.update(currentWidth, currentHeight, i);
        } else {
            this.state = new CropState(currentWidth, currentHeight, 0);
            this.areaView.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: org.telegram.ui.Components.Crop.CropView.1
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public boolean onPreDraw() {
                    float f;
                    float f2;
                    int i2;
                    int i3;
                    CropView.this.reset();
                    MediaController.CropState cropState3 = cropState;
                    if (cropState3 != null) {
                        float f3 = cropState3.lockedAspectRatio;
                        if (f3 > 1.0E-4f) {
                            CropView.this.areaView.setLockedAspectRatio(f3);
                            if (CropView.this.listener != null) {
                                CropView.this.listener.onAspectLock(true);
                            }
                        }
                        CropView.this.setFreeform(cropState.freeform);
                        float aspectRatio = CropView.this.areaView.getAspectRatio();
                        int i4 = cropState.transformRotation;
                        if (i4 == 90 || i4 == 270) {
                            aspectRatio = 1.0f / aspectRatio;
                            CropState cropState4 = CropView.this.state;
                            f = cropState4.height;
                            f2 = cropState4.width;
                            i2 = currentHeight;
                            i3 = currentWidth;
                        } else {
                            CropState cropState5 = CropView.this.state;
                            f = cropState5.width;
                            f2 = cropState5.height;
                            i2 = currentWidth;
                            i3 = currentHeight;
                        }
                        boolean z3 = CropView.this.freeform;
                        if (CropView.this.freeform && CropView.this.areaView.getLockAspectRatio() > BitmapDescriptorFactory.HUE_RED) {
                            CropAreaView cropAreaView = CropView.this.areaView;
                            cropAreaView.setLockedAspectRatio(1.0f / cropAreaView.getLockAspectRatio());
                            CropAreaView cropAreaView2 = CropView.this.areaView;
                            cropAreaView2.setActualRect(cropAreaView2.getLockAspectRatio());
                            z3 = false;
                        } else {
                            CropView cropView = CropView.this;
                            cropView.areaView.setBitmap(cropView.getCurrentWidth(), CropView.this.getCurrentHeight(), (((float) i4) + CropView.this.state.getBaseRotation()) % 180.0f != BitmapDescriptorFactory.HUE_RED, CropView.this.freeform);
                        }
                        CropView cropView2 = CropView.this;
                        cropView2.state.reset(cropView2.areaView, i4, z3);
                        CropAreaView cropAreaView3 = CropView.this.areaView;
                        MediaController.CropState cropState6 = cropState;
                        cropAreaView3.setActualRect((aspectRatio * cropState6.cropPw) / cropState6.cropPh);
                        CropState cropState7 = CropView.this.state;
                        MediaController.CropState cropState8 = cropState;
                        cropState7.mirrored = cropState8.mirrored;
                        cropState7.rotate(cropState8.cropRotate, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
                        CropState cropState9 = CropView.this.state;
                        MediaController.CropState cropState10 = cropState;
                        float f4 = cropState10.cropPx * i2;
                        float f5 = cropState9.minimumScale;
                        cropState9.translate(f4 * f5, cropState10.cropPy * i3 * f5);
                        float max = Math.max(CropView.this.areaView.getCropWidth() / f, CropView.this.areaView.getCropHeight() / f2);
                        CropState cropState11 = CropView.this.state;
                        cropState11.scale(cropState.cropScale * (max / cropState11.minimumScale), BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
                        CropView.this.updateMatrix();
                        if (CropView.this.listener != null) {
                            CropView.this.listener.onChange(false);
                        }
                    }
                    CropView.this.areaView.getViewTreeObserver().removeOnPreDrawListener(this);
                    return false;
                }
            });
        }
        this.imageView.setImageBitmap(videoEditTextureView == null ? this.bitmap : null);
    }

    public void willShow() {
        this.areaView.setFrameVisibility(true, false);
        this.areaView.setDimVisibility(true);
        this.areaView.invalidate();
    }

    public void setFreeform(boolean z) {
        this.areaView.setFreeform(z);
        this.freeform = z;
    }

    public void onShow() {
        this.isVisible = true;
    }

    public void onHide() {
        this.videoEditTextureView = null;
        this.isVisible = false;
    }

    public void show() {
        updateCropTransform();
        this.areaView.setDimVisibility(true);
        this.areaView.setFrameVisibility(true, true);
        this.areaView.invalidate();
    }

    public void hide() {
        this.imageView.setVisibility(4);
        this.areaView.setDimVisibility(false);
        this.areaView.setFrameVisibility(false, false);
        this.areaView.invalidate();
    }

    public void reset() {
        reset(false);
    }

    public void reset(boolean z) {
        this.areaView.resetAnimator();
        this.areaView.setBitmap(getCurrentWidth(), getCurrentHeight(), this.state.getBaseRotation() % 180.0f != BitmapDescriptorFactory.HUE_RED, this.freeform);
        this.areaView.setLockedAspectRatio(this.freeform ? 0.0f : 1.0f);
        this.state.reset(this.areaView, BitmapDescriptorFactory.HUE_RED, this.freeform);
        this.state.mirrored = false;
        this.areaView.getCropRect(this.initialAreaRect);
        updateMatrix(z);
        resetRotationStartScale();
        CropViewListener cropViewListener = this.listener;
        if (cropViewListener != null) {
            cropViewListener.onChange(true);
            this.listener.onAspectLock(false);
        }
    }

    public void updateMatrix() {
        updateMatrix(false);
    }

    public void updateMatrix(boolean z) {
        if (this.state == null) {
            return;
        }
        this.overlayMatrix.reset();
        if (this.state.getBaseRotation() == 90.0f || this.state.getBaseRotation() == 270.0f) {
            this.overlayMatrix.postTranslate((-this.state.getHeight()) / 2.0f, (-this.state.getWidth()) / 2.0f);
        } else {
            this.overlayMatrix.postTranslate((-this.state.getWidth()) / 2.0f, (-this.state.getHeight()) / 2.0f);
        }
        this.overlayMatrix.postRotate(this.state.getOrientationOnly());
        this.state.getConcatMatrix(this.overlayMatrix);
        this.overlayMatrix.postTranslate(this.areaView.getCropCenterX(), this.areaView.getCropCenterY());
        if (!this.freeform || this.isVisible || z) {
            updateCropTransform();
            this.listener.onUpdate();
        }
        invalidate();
    }

    private void fillAreaView(RectF rectF, boolean z) {
        final float f;
        final boolean z2;
        if (this.state == null) {
            return;
        }
        int i = 0;
        final float[] fArr = {1.0f};
        float max = Math.max(rectF.width() / this.areaView.getCropWidth(), rectF.height() / this.areaView.getCropHeight());
        if (this.state.getScale() * max > 30.0f) {
            z2 = true;
            f = 30.0f / this.state.getScale();
        } else {
            f = max;
            z2 = false;
        }
        if (Build.VERSION.SDK_INT >= 21 && !this.inBubbleMode) {
            i = AndroidUtilities.statusBarHeight;
        }
        final float orientedWidth = this.state.getOrientedWidth() * ((rectF.centerX() - (this.imageView.getWidth() / 2)) / this.areaView.getCropWidth());
        final float centerY = ((rectF.centerY() - (((this.imageView.getHeight() - this.bottomPadding) + i) / 2.0f)) / this.areaView.getCropHeight()) * this.state.getOrientedHeight();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Crop.CropView$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                CropView.this.lambda$fillAreaView$0(f, fArr, orientedWidth, centerY, valueAnimator);
            }
        });
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Crop.CropView.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (z2) {
                    CropView.this.fitContentInBounds(false, false, true);
                }
            }
        });
        this.areaView.fill(rectF, ofFloat, true);
        this.initialAreaRect.set(rectF);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fillAreaView$0(float f, float[] fArr, float f2, float f3, ValueAnimator valueAnimator) {
        float floatValue = (((f - 1.0f) * ((Float) valueAnimator.getAnimatedValue()).floatValue()) + 1.0f) / fArr[0];
        fArr[0] = fArr[0] * floatValue;
        this.state.scale(floatValue, f2, f3);
        updateMatrix();
    }

    private float fitScale(RectF rectF, float f, float f2) {
        float width = rectF.width() * f2;
        float height = rectF.height() * f2;
        float width2 = (rectF.width() - width) / 2.0f;
        float height2 = (rectF.height() - height) / 2.0f;
        float f3 = rectF.left;
        float f4 = rectF.top;
        rectF.set(f3 + width2, f4 + height2, f3 + width2 + width, f4 + height2 + height);
        return f * f2;
    }

    private void fitTranslation(RectF rectF, RectF rectF2, PointF pointF, float f) {
        float f2 = rectF2.left;
        float f3 = rectF2.top;
        float f4 = rectF2.right;
        float f5 = rectF2.bottom;
        float f6 = rectF.left;
        if (f6 > f2) {
            f4 += f6 - f2;
            f2 = f6;
        }
        float f7 = rectF.top;
        if (f7 > f3) {
            f5 += f7 - f3;
            f3 = f7;
        }
        float f8 = rectF.right;
        if (f8 < f4) {
            f2 += f8 - f4;
        }
        float f9 = rectF.bottom;
        if (f9 < f5) {
            f3 += f9 - f5;
        }
        float centerX = rectF2.centerX() - (f2 + (rectF2.width() / 2.0f));
        float centerY = rectF2.centerY() - (f3 + (rectF2.height() / 2.0f));
        double d = f;
        double d2 = 1.5707963267948966d - d;
        double d3 = centerX;
        float cos = (float) (Math.cos(d2) * d3);
        double d4 = d + 1.5707963267948966d;
        double d5 = centerY;
        pointF.set(pointF.x + ((float) (Math.sin(d2) * d3)) + ((float) (Math.cos(d4) * d5)), pointF.y + cos + ((float) (Math.sin(d4) * d5)));
    }

    public RectF calculateBoundingBox(float f, float f2, float f3) {
        RectF rectF = new RectF(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f, f2);
        Matrix matrix = new Matrix();
        matrix.postRotate(f3, f / 2.0f, f2 / 2.0f);
        matrix.mapRect(rectF);
        return rectF;
    }

    public float scaleWidthToMaxSize(RectF rectF, RectF rectF2) {
        float width = rectF2.width();
        return ((float) Math.floor((double) ((rectF.height() * width) / rectF.width()))) > rectF2.height() ? (float) Math.floor((rectF2.height() * rectF.width()) / rectF.height()) : width;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.Crop.CropView$CropRectangle */
    /* loaded from: classes6.dex */
    public static class CropRectangle {
        float[] coords = new float[8];

        CropRectangle() {
        }

        void setRect(RectF rectF) {
            float[] fArr = this.coords;
            float f = rectF.left;
            fArr[0] = f;
            float f2 = rectF.top;
            fArr[1] = f2;
            float f3 = rectF.right;
            fArr[2] = f3;
            fArr[3] = f2;
            fArr[4] = f3;
            float f4 = rectF.bottom;
            fArr[5] = f4;
            fArr[6] = f;
            fArr[7] = f4;
        }

        void applyMatrix(Matrix matrix) {
            matrix.mapPoints(this.coords);
        }

        void getRect(RectF rectF) {
            float[] fArr = this.coords;
            rectF.set(fArr[0], fArr[1], fArr[2], fArr[7]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fitContentInBounds(boolean z, boolean z2, boolean z3) {
        fitContentInBounds(z, z2, z3, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fitContentInBounds(final boolean z, final boolean z2, final boolean z3, final boolean z4) {
        float f;
        if (this.state == null) {
            return;
        }
        float cropWidth = this.areaView.getCropWidth();
        float cropHeight = this.areaView.getCropHeight();
        float orientedWidth = this.state.getOrientedWidth();
        float orientedHeight = this.state.getOrientedHeight();
        float rotation = this.state.getRotation();
        float radians = (float) Math.toRadians(rotation);
        RectF calculateBoundingBox = calculateBoundingBox(cropWidth, cropHeight, rotation);
        RectF rectF = new RectF(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, orientedWidth, orientedHeight);
        float scale = this.state.getScale();
        this.tempRect.setRect(rectF);
        Matrix matrix = this.state.getMatrix();
        matrix.preTranslate(((cropWidth - orientedWidth) / 2.0f) / scale, ((cropHeight - orientedHeight) / 2.0f) / scale);
        this.tempMatrix.reset();
        this.tempMatrix.setTranslate(rectF.centerX(), rectF.centerY());
        Matrix matrix2 = this.tempMatrix;
        matrix2.setConcat(matrix2, matrix);
        this.tempMatrix.preTranslate(-rectF.centerX(), -rectF.centerY());
        this.tempRect.applyMatrix(this.tempMatrix);
        this.tempMatrix.reset();
        this.tempMatrix.preRotate(-rotation, orientedWidth / 2.0f, orientedHeight / 2.0f);
        this.tempRect.applyMatrix(this.tempMatrix);
        this.tempRect.getRect(rectF);
        PointF pointF = new PointF(this.state.getX(), this.state.getY());
        if (!rectF.contains(calculateBoundingBox)) {
            f = (!z || (calculateBoundingBox.width() <= rectF.width() && calculateBoundingBox.height() <= rectF.height())) ? scale : fitScale(rectF, scale, calculateBoundingBox.width() / scaleWidthToMaxSize(calculateBoundingBox, rectF));
            fitTranslation(rectF, calculateBoundingBox, pointF, radians);
        } else if (!z2 || this.rotationStartScale <= BitmapDescriptorFactory.HUE_RED) {
            f = scale;
        } else {
            float width = calculateBoundingBox.width() / scaleWidthToMaxSize(calculateBoundingBox, rectF);
            if (this.state.getScale() * width < this.rotationStartScale) {
                width = 1.0f;
            }
            f = fitScale(rectF, scale, width);
            fitTranslation(rectF, calculateBoundingBox, pointF, radians);
        }
        final float x = pointF.x - this.state.getX();
        final float y = pointF.y - this.state.getY();
        if (!z3) {
            this.state.translate(x, y);
            this.state.scale(f / scale, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
            updateMatrix();
            return;
        }
        final float f2 = f / scale;
        if (Math.abs(f2 - 1.0f) >= 1.0E-5f || Math.abs(x) >= 1.0E-5f || Math.abs(y) >= 1.0E-5f) {
            this.animating = true;
            final float[] fArr = {1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED};
            ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Crop.CropView$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    CropView.this.lambda$fitContentInBounds$1(x, fArr, y, f2, valueAnimator);
                }
            });
            ofFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Crop.CropView.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    CropView.this.animating = false;
                    if (z4) {
                        return;
                    }
                    CropView.this.fitContentInBounds(z, z2, z3, true);
                }
            });
            ofFloat.setInterpolator(this.areaView.getInterpolator());
            ofFloat.setDuration(z4 ? 100L : 200L);
            ofFloat.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fitContentInBounds$1(float f, float[] fArr, float f2, float f3, ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        float f4 = (f * floatValue) - fArr[1];
        fArr[1] = fArr[1] + f4;
        float f5 = (f2 * floatValue) - fArr[2];
        fArr[2] = fArr[2] + f5;
        this.state.translate(f4 * fArr[0], f5 * fArr[0]);
        float f6 = (((f3 - 1.0f) * floatValue) + 1.0f) / fArr[0];
        fArr[0] = fArr[0] * f6;
        this.state.scale(f6, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        updateMatrix();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getCurrentWidth() {
        VideoEditTextureView videoEditTextureView = this.videoEditTextureView;
        if (videoEditTextureView != null) {
            return videoEditTextureView.getVideoWidth();
        }
        int i = this.bitmapRotation;
        return (i == 90 || i == 270) ? this.bitmap.getHeight() : this.bitmap.getWidth();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getCurrentHeight() {
        VideoEditTextureView videoEditTextureView = this.videoEditTextureView;
        if (videoEditTextureView != null) {
            return videoEditTextureView.getVideoHeight();
        }
        int i = this.bitmapRotation;
        return (i == 90 || i == 270) ? this.bitmap.getWidth() : this.bitmap.getHeight();
    }

    public boolean isMirrored() {
        CropState cropState = this.state;
        if (cropState == null) {
            return false;
        }
        return cropState.mirrored;
    }

    public boolean mirror() {
        CropState cropState = this.state;
        boolean z = false;
        if (cropState == null) {
            return false;
        }
        cropState.mirror();
        updateMatrix();
        if (this.listener != null) {
            float orientation = (this.state.getOrientation() - this.state.getBaseRotation()) % 360.0f;
            CropViewListener cropViewListener = this.listener;
            if (!this.state.hasChanges() && orientation == BitmapDescriptorFactory.HUE_RED && this.areaView.getLockAspectRatio() == BitmapDescriptorFactory.HUE_RED && !this.state.mirrored) {
                z = true;
            }
            cropViewListener.onChange(z);
        }
        return this.state.mirrored;
    }

    public void maximize(boolean z) {
        float currentWidth;
        int currentHeight;
        CropState cropState = this.state;
        if (cropState == null) {
            return;
        }
        final float f = cropState.minimumScale;
        this.areaView.resetAnimator();
        if (this.state.getOrientation() % 180.0f != BitmapDescriptorFactory.HUE_RED) {
            currentWidth = getCurrentHeight();
            currentHeight = getCurrentWidth();
        } else {
            currentWidth = getCurrentWidth();
            currentHeight = getCurrentHeight();
        }
        float f2 = currentWidth / currentHeight;
        if (!this.freeform) {
            f2 = 1.0f;
        }
        this.areaView.calculateRect(this.initialAreaRect, f2);
        this.areaView.setLockedAspectRatio(this.freeform ? 0.0f : 1.0f);
        resetRotationStartScale();
        if (z) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
            final RectF rectF = new RectF();
            final RectF rectF2 = new RectF();
            this.areaView.getCropRect(rectF);
            CropState cropState2 = this.state;
            final float f3 = cropState2.f1840x;
            final float f4 = cropState2.f1841y;
            final float f5 = cropState2.scale;
            final float f6 = cropState2.rotation;
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Crop.CropView$$ExternalSyntheticLambda2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    CropView.this.lambda$maximize$2(rectF, rectF2, f3, f4, f6, f5, f, valueAnimator);
                }
            });
            ofFloat.setInterpolator(this.areaView.getInterpolator());
            ofFloat.setDuration(250L);
            ofFloat.start();
            return;
        }
        this.areaView.setActualRect(this.initialAreaRect);
        CropState cropState3 = this.state;
        cropState3.translate(-cropState3.f1840x, -cropState3.f1841y);
        CropState cropState4 = this.state;
        cropState4.scale(cropState4.minimumScale / cropState4.scale, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        CropState cropState5 = this.state;
        cropState5.rotate(-cropState5.rotation, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        updateMatrix();
        resetRotationStartScale();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$maximize$2(RectF rectF, RectF rectF2, float f, float f2, float f3, float f4, float f5, ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        AndroidUtilities.lerp(rectF, this.initialAreaRect, floatValue, rectF2);
        this.areaView.setActualRect(rectF2);
        CropState cropState = this.state;
        float f6 = 1.0f - floatValue;
        float f7 = cropState.f1840x - (f * f6);
        float f8 = cropState.f1841y - (f2 * f6);
        float f9 = cropState.rotation - (f3 * f6);
        float lerp = AndroidUtilities.lerp(f4, f5, floatValue);
        CropState cropState2 = this.state;
        cropState2.translate(-f7, -f8);
        this.state.scale(lerp / cropState2.scale, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        this.state.rotate(-f9, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        fitContentInBounds(true, false, false);
    }

    public boolean rotate(float f) {
        if (this.state == null) {
            return false;
        }
        this.areaView.resetAnimator();
        resetRotationStartScale();
        float orientation = ((this.state.getOrientation() - this.state.getBaseRotation()) + f) % 360.0f;
        boolean z = this.freeform;
        if (!z || this.areaView.getLockAspectRatio() <= BitmapDescriptorFactory.HUE_RED) {
            this.areaView.setBitmap(getCurrentWidth(), getCurrentHeight(), (this.state.getBaseRotation() + orientation) % 180.0f != BitmapDescriptorFactory.HUE_RED, this.freeform);
        } else {
            CropAreaView cropAreaView = this.areaView;
            cropAreaView.setLockedAspectRatio(1.0f / cropAreaView.getLockAspectRatio());
            CropAreaView cropAreaView2 = this.areaView;
            cropAreaView2.setActualRect(cropAreaView2.getLockAspectRatio());
            z = false;
        }
        this.state.reset(this.areaView, orientation, z);
        updateMatrix();
        fitContentInBounds(true, false, false);
        CropViewListener cropViewListener = this.listener;
        if (cropViewListener != null) {
            cropViewListener.onChange(orientation == BitmapDescriptorFactory.HUE_RED && this.areaView.getLockAspectRatio() == BitmapDescriptorFactory.HUE_RED && !this.state.mirrored);
        }
        return this.state.getOrientationOnly() != 0;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.animating || this.areaView.onTouchEvent(motionEvent)) {
            return true;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            onScrollChangeBegan();
        } else if (action == 1 || action == 3) {
            onScrollChangeEnded();
        }
        try {
            return this.detector.onTouchEvent(motionEvent);
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // org.telegram.p043ui.Components.Crop.CropAreaView.AreaViewListener
    public void onAreaChangeBegan() {
        this.areaView.getCropRect(this.previousAreaRect);
        resetRotationStartScale();
        CropViewListener cropViewListener = this.listener;
        if (cropViewListener != null) {
            cropViewListener.onChange(false);
        }
    }

    @Override // org.telegram.p043ui.Components.Crop.CropAreaView.AreaViewListener
    public void onAreaChange() {
        this.areaView.setGridType(CropAreaView.GridType.MAJOR, false);
        float centerX = this.previousAreaRect.centerX() - this.areaView.getCropCenterX();
        float centerY = this.previousAreaRect.centerY() - this.areaView.getCropCenterY();
        CropState cropState = this.state;
        if (cropState != null) {
            cropState.translate(centerX, centerY);
        }
        updateMatrix();
        this.areaView.getCropRect(this.previousAreaRect);
        fitContentInBounds(true, false, false);
    }

    @Override // org.telegram.p043ui.Components.Crop.CropAreaView.AreaViewListener
    public void onAreaChangeEnded() {
        this.areaView.setGridType(CropAreaView.GridType.NONE, true);
        fillAreaView(this.areaView.getTargetRectToFill(), false);
    }

    @Override // org.telegram.p043ui.Components.Crop.CropGestureDetector.CropGestureListener
    public void onDrag(float f, float f2) {
        if (this.animating) {
            return;
        }
        this.state.translate(f, f2);
        updateMatrix();
    }

    @Override // org.telegram.p043ui.Components.Crop.CropGestureDetector.CropGestureListener
    public void onTapUp() {
        CropViewListener cropViewListener = this.listener;
        if (cropViewListener != null) {
            cropViewListener.onTapUp();
        }
    }

    public void onScrollChangeBegan() {
        if (this.animating) {
            return;
        }
        this.areaView.setGridType(CropAreaView.GridType.MAJOR, true);
        resetRotationStartScale();
        CropViewListener cropViewListener = this.listener;
        if (cropViewListener != null) {
            cropViewListener.onChange(false);
        }
    }

    public void onScrollChangeEnded() {
        this.areaView.setGridType(CropAreaView.GridType.NONE, true);
        fitContentInBounds(true, false, true);
    }

    @Override // org.telegram.p043ui.Components.Crop.CropGestureDetector.CropGestureListener
    public void onScale(float f, float f2, float f3) {
        if (this.animating) {
            return;
        }
        if (this.state.getScale() * f > 30.0f) {
            f = 30.0f / this.state.getScale();
        }
        this.state.scale(f, ((f2 - (this.imageView.getWidth() / 2)) / this.areaView.getCropWidth()) * this.state.getOrientedWidth(), ((f3 - (((this.imageView.getHeight() - this.bottomPadding) - ((Build.VERSION.SDK_INT < 21 || this.inBubbleMode) ? 0 : AndroidUtilities.statusBarHeight)) / 2.0f)) / this.areaView.getCropHeight()) * this.state.getOrientedHeight());
        updateMatrix();
    }

    public void onRotationBegan() {
        CropState cropState;
        this.areaView.setGridType(CropAreaView.GridType.MINOR, false);
        if (this.rotationStartScale >= 1.0E-5f || (cropState = this.state) == null) {
            return;
        }
        this.rotationStartScale = cropState.getScale();
    }

    public void onRotationEnded() {
        this.areaView.setGridType(CropAreaView.GridType.NONE, true);
    }

    private void resetRotationStartScale() {
        this.rotationStartScale = BitmapDescriptorFactory.HUE_RED;
    }

    @Override // android.view.View
    public void setRotation(float f) {
        this.state.rotate(f - this.state.getRotation(), BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        fitContentInBounds(true, true, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0106 A[Catch: all -> 0x0013, TryCatch #0 {all -> 0x0013, blocks: (B:4:0x000f, B:8:0x0018, B:10:0x001f, B:12:0x004d, B:13:0x0052, B:15:0x0092, B:17:0x0098, B:19:0x00a2, B:26:0x0102, B:28:0x0106, B:31:0x014d, B:30:0x0126, B:25:0x00f9, B:32:0x019d), top: B:36:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0126 A[Catch: all -> 0x0013, TryCatch #0 {all -> 0x0013, blocks: (B:4:0x000f, B:8:0x0018, B:10:0x001f, B:12:0x004d, B:13:0x0052, B:15:0x0092, B:17:0x0098, B:19:0x00a2, B:26:0x0102, B:28:0x0106, B:31:0x014d, B:30:0x0126, B:25:0x00f9, B:32:0x019d), top: B:36:0x000f }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void editBitmap(android.content.Context r19, java.lang.String r20, android.graphics.Bitmap r21, android.graphics.Canvas r22, android.graphics.Bitmap r23, android.graphics.Bitmap.CompressFormat r24, android.graphics.Matrix r25, int r26, int r27, float r28, float r29, float r30, float r31, boolean r32, java.util.ArrayList<org.telegram.messenger.VideoEditedInfo.MediaEntity> r33, boolean r34) {
        /*
            Method dump skipped, instructions count: 421
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.Crop.CropView.editBitmap(android.content.Context, java.lang.String, android.graphics.Bitmap, android.graphics.Canvas, android.graphics.Bitmap, android.graphics.Bitmap$CompressFormat, android.graphics.Matrix, int, int, float, float, float, float, boolean, java.util.ArrayList, boolean):void");
    }

    private void updateCropTransform() {
        float f;
        int i;
        float f2;
        float max;
        if (this.cropTransform == null || this.state == null) {
            return;
        }
        this.areaView.getCropRect(this.cropRect);
        int ceil = (int) Math.ceil(scaleWidthToMaxSize(this.cropRect, this.sizeRect));
        int ceil2 = (int) Math.ceil(f / this.areaView.getAspectRatio());
        float cropWidth = ceil / this.areaView.getCropWidth();
        this.state.matrix.getValues(this.values);
        CropState cropState = this.state;
        float f3 = cropState.minimumScale * cropWidth;
        int orientationOnly = cropState.getOrientationOnly();
        while (orientationOnly < 0) {
            orientationOnly += 360;
        }
        if (orientationOnly == 90 || orientationOnly == 270) {
            CropState cropState2 = this.state;
            i = (int) cropState2.height;
            f2 = cropState2.width;
        } else {
            CropState cropState3 = this.state;
            i = (int) cropState3.width;
            f2 = cropState3.height;
        }
        double d = ceil;
        float f4 = i;
        float ceil3 = (float) (d / Math.ceil(f4 * f3));
        float f5 = (int) f2;
        float ceil4 = (float) (ceil2 / Math.ceil(f3 * f5));
        if (ceil3 > 1.0f || ceil4 > 1.0f) {
            float max2 = Math.max(ceil3, ceil4);
            ceil3 /= max2;
            ceil4 /= max2;
        }
        float f6 = ceil4;
        float f7 = ceil3;
        RectF targetRectToFill = this.areaView.getTargetRectToFill(f4 / f5);
        if (this.freeform) {
            max = targetRectToFill.width() / f4;
        } else {
            max = Math.max(targetRectToFill.width() / f4, targetRectToFill.height() / f5);
        }
        CropState cropState4 = this.state;
        float f8 = cropState4.scale;
        float f9 = f8 / max;
        float f10 = f8 / cropState4.minimumScale;
        float[] fArr = this.values;
        float f11 = (fArr[2] / f4) / f8;
        float f12 = (fArr[5] / f5) / f8;
        float f13 = cropState4.rotation;
        RectF targetRectToFill2 = this.areaView.getTargetRectToFill();
        float cropCenterX = this.areaView.getCropCenterX() - targetRectToFill2.centerX();
        float cropCenterY = this.areaView.getCropCenterY() - targetRectToFill2.centerY();
        CropTransform cropTransform = this.cropTransform;
        CropState cropState5 = this.state;
        boolean z = cropState5.mirrored || cropState5.hasChanges() || this.state.getBaseRotation() >= 1.0E-5f;
        int orientationOnly2 = this.state.getOrientationOnly();
        CropState cropState6 = this.state;
        cropTransform.setViewTransform(z, f11, f12, f13, orientationOnly2, f9, f10, cropState6.minimumScale / max, f7, f6, cropCenterX, cropCenterY, cropState6.mirrored);
    }

    public static String getCopy(String str) {
        File directory = FileLoader.getDirectory(4);
        File file = new File(directory, SharedConfig.getLastLocalId() + "_temp.jpg");
        try {
            AndroidUtilities.copyFile(new File(str), file);
        } catch (Exception e) {
            FileLog.m102e(e);
        }
        return file.getAbsolutePath();
    }

    public void makeCrop(MediaController.MediaEditState mediaEditState) {
        float f;
        MediaController.CropState cropState;
        int i;
        int i2;
        float f2;
        if (this.state == null) {
            return;
        }
        this.areaView.getCropRect(this.cropRect);
        int ceil = (int) Math.ceil(scaleWidthToMaxSize(this.cropRect, this.sizeRect));
        int ceil2 = (int) Math.ceil(f / this.areaView.getAspectRatio());
        float cropWidth = ceil / this.areaView.getCropWidth();
        if (mediaEditState.paintPath != null) {
            Bitmap createBitmap = Bitmap.createBitmap(ceil, ceil2, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            String copy = getCopy(mediaEditState.paintPath);
            if (mediaEditState.croppedPaintPath != null) {
                new File(mediaEditState.croppedPaintPath).delete();
                mediaEditState.croppedPaintPath = null;
            }
            mediaEditState.croppedPaintPath = copy;
            ArrayList<VideoEditedInfo.MediaEntity> arrayList = mediaEditState.mediaEntities;
            if (arrayList != null && !arrayList.isEmpty()) {
                mediaEditState.croppedMediaEntities = new ArrayList<>(mediaEditState.mediaEntities.size());
                int size = mediaEditState.mediaEntities.size();
                for (int i3 = 0; i3 < size; i3++) {
                    mediaEditState.croppedMediaEntities.add(mediaEditState.mediaEntities.get(i3).copy());
                }
            } else {
                mediaEditState.croppedMediaEntities = null;
            }
            Context context = getContext();
            Bitmap.CompressFormat compressFormat = Bitmap.CompressFormat.PNG;
            Matrix matrix = this.state.matrix;
            int currentWidth = getCurrentWidth();
            int currentHeight = getCurrentHeight();
            CropState cropState2 = this.state;
            editBitmap(context, copy, null, canvas, createBitmap, compressFormat, matrix, currentWidth, currentHeight, cropState2.scale, cropState2.rotation, cropState2.getOrientationOnly(), cropWidth, false, mediaEditState.croppedMediaEntities, false);
        }
        if (mediaEditState.cropState == null) {
            mediaEditState.cropState = new MediaController.CropState();
        }
        this.state.matrix.getValues(this.values);
        CropState cropState3 = this.state;
        float f3 = cropState3.minimumScale * cropWidth;
        mediaEditState.cropState.transformRotation = cropState3.getOrientationOnly();
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m105d("set transformRotation = " + mediaEditState.cropState.transformRotation);
        }
        while (true) {
            cropState = mediaEditState.cropState;
            i = cropState.transformRotation;
            if (i >= 0) {
                break;
            }
            cropState.transformRotation = i + 360;
        }
        if (i == 90 || i == 270) {
            CropState cropState4 = this.state;
            i2 = (int) cropState4.height;
            f2 = cropState4.width;
        } else {
            CropState cropState5 = this.state;
            i2 = (int) cropState5.width;
            f2 = cropState5.height;
        }
        float f4 = i2;
        cropState.cropPw = (float) (ceil / Math.ceil(f4 * f3));
        float f5 = (int) f2;
        mediaEditState.cropState.cropPh = (float) (ceil2 / Math.ceil(f3 * f5));
        MediaController.CropState cropState6 = mediaEditState.cropState;
        float f6 = cropState6.cropPw;
        if (f6 > 1.0f || cropState6.cropPh > 1.0f) {
            float max = Math.max(f6, cropState6.cropPh);
            MediaController.CropState cropState7 = mediaEditState.cropState;
            cropState7.cropPw /= max;
            cropState7.cropPh /= max;
        }
        mediaEditState.cropState.cropScale = this.state.scale * Math.min(f4 / this.areaView.getCropWidth(), f5 / this.areaView.getCropHeight());
        MediaController.CropState cropState8 = mediaEditState.cropState;
        float[] fArr = this.values;
        float f7 = fArr[2] / f4;
        CropState cropState9 = this.state;
        float f8 = cropState9.scale;
        cropState8.cropPx = f7 / f8;
        cropState8.cropPy = (fArr[5] / f5) / f8;
        cropState8.cropRotate = cropState9.rotation;
        cropState8.stateScale = f8;
        cropState8.mirrored = cropState9.mirrored;
        cropState8.scale = cropWidth;
        cropState8.matrix = cropState9.matrix;
        cropState8.width = ceil;
        cropState8.height = ceil2;
        cropState8.freeform = this.freeform;
        cropState8.lockedAspectRatio = this.areaView.getLockAspectRatio();
        mediaEditState.cropState.initied = true;
    }

    private void setLockedAspectRatio(float f) {
        this.areaView.setLockedAspectRatio(f);
        RectF rectF = new RectF();
        this.areaView.calculateRect(rectF, f);
        fillAreaView(rectF, true);
        CropViewListener cropViewListener = this.listener;
        if (cropViewListener != null) {
            cropViewListener.onChange(false);
            this.listener.onAspectLock(true);
        }
    }

    public void showAspectRatioDialog() {
        if (this.state == null || this.hasAspectRatioDialog) {
            return;
        }
        this.hasAspectRatioDialog = true;
        String[] strArr = new String[8];
        final Integer[][] numArr = {new Integer[]{3, 2}, new Integer[]{5, 3}, new Integer[]{4, 3}, new Integer[]{5, 4}, new Integer[]{7, 5}, new Integer[]{16, 9}};
        strArr[0] = LocaleController.getString("CropOriginal", C3632R.string.CropOriginal);
        strArr[1] = LocaleController.getString("CropSquare", C3632R.string.CropSquare);
        int i = 2;
        for (int i2 = 0; i2 < 6; i2++) {
            Integer[] numArr2 = numArr[i2];
            if (this.areaView.getAspectRatio() > 1.0f) {
                strArr[i] = String.format("%d:%d", numArr2[0], numArr2[1]);
            } else {
                strArr[i] = String.format("%d:%d", numArr2[1], numArr2[0]);
            }
            i++;
        }
        AlertDialog create = new AlertDialog.Builder(getContext()).setItems(strArr, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.Crop.CropView$$ExternalSyntheticLambda4
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i3) {
                CropView.this.lambda$showAspectRatioDialog$3(numArr, dialogInterface, i3);
            }
        }).create();
        create.setCanceledOnTouchOutside(true);
        create.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: org.telegram.ui.Components.Crop.CropView$$ExternalSyntheticLambda3
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                CropView.this.lambda$showAspectRatioDialog$4(dialogInterface);
            }
        });
        create.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showAspectRatioDialog$3(Integer[][] numArr, DialogInterface dialogInterface, int i) {
        this.hasAspectRatioDialog = false;
        if (i == 0) {
            setLockedAspectRatio((this.state.getBaseRotation() % 180.0f != BitmapDescriptorFactory.HUE_RED ? this.state.getHeight() : this.state.getWidth()) / (this.state.getBaseRotation() % 180.0f != BitmapDescriptorFactory.HUE_RED ? this.state.getWidth() : this.state.getHeight()));
        } else if (i == 1) {
            setLockedAspectRatio(1.0f);
        } else {
            Integer[] numArr2 = numArr[i - 2];
            if (this.areaView.getAspectRatio() > 1.0f) {
                setLockedAspectRatio(numArr2[0].intValue() / numArr2[1].intValue());
            } else {
                setLockedAspectRatio(numArr2[1].intValue() / numArr2[0].intValue());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showAspectRatioDialog$4(DialogInterface dialogInterface) {
        this.hasAspectRatioDialog = false;
    }

    public void updateLayout() {
        CropState cropState;
        float cropWidth = this.areaView.getCropWidth();
        if (cropWidth == BitmapDescriptorFactory.HUE_RED || (cropState = this.state) == null) {
            return;
        }
        this.areaView.calculateRect(this.initialAreaRect, cropState.getWidth() / this.state.getHeight());
        CropAreaView cropAreaView = this.areaView;
        cropAreaView.setActualRect(cropAreaView.getAspectRatio());
        this.areaView.getCropRect(this.previousAreaRect);
        this.state.scale(this.areaView.getCropWidth() / cropWidth, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        updateMatrix();
    }

    public float getCropLeft() {
        return this.areaView.getCropLeft();
    }

    public float getCropTop() {
        return this.areaView.getCropTop();
    }

    public float getCropWidth() {
        return this.areaView.getCropWidth();
    }

    public float getCropHeight() {
        return this.areaView.getCropHeight();
    }

    public RectF getActualRect() {
        this.areaView.getCropRect(this.cropRect);
        return this.cropRect;
    }
}
