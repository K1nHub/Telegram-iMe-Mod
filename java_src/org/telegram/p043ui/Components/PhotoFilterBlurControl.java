package org.telegram.p043ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Build;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p043ui.BubbleActivity;
/* renamed from: org.telegram.ui.Components.PhotoFilterBlurControl */
/* loaded from: classes6.dex */
public class PhotoFilterBlurControl extends FrameLayout {
    private static final float BlurInsetProximity = AndroidUtilities.m107dp(20);
    private static final float BlurViewCenterInset = AndroidUtilities.m108dp(30.0f);
    private static final float BlurViewRadiusInset = AndroidUtilities.m108dp(30.0f);
    private BlurViewActiveControl activeControl;
    private Size actualAreaSize;
    private float angle;
    private Paint arcPaint;
    private RectF arcRect;
    private Point centerPoint;
    private boolean checkForMoving;
    private boolean checkForZooming;
    private PhotoFilterLinearBlurControlDelegate delegate;
    private float falloff;
    private boolean inBubbleMode;
    private boolean isMoving;
    private boolean isZooming;
    private Paint paint;
    private float pointerScale;
    private float pointerStartX;
    private float pointerStartY;
    private float size;
    private Point startCenterPoint;
    private float startDistance;
    private float startPointerDistance;
    private float startRadius;
    private int type;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.PhotoFilterBlurControl$BlurViewActiveControl */
    /* loaded from: classes6.dex */
    public enum BlurViewActiveControl {
        BlurViewActiveControlNone,
        BlurViewActiveControlCenter,
        BlurViewActiveControlInnerRadius,
        BlurViewActiveControlOuterRadius,
        BlurViewActiveControlWholeArea,
        BlurViewActiveControlRotation
    }

    /* renamed from: org.telegram.ui.Components.PhotoFilterBlurControl$PhotoFilterLinearBlurControlDelegate */
    /* loaded from: classes6.dex */
    public interface PhotoFilterLinearBlurControlDelegate {
        void valueChanged(Point point, float f, float f2, float f3);
    }

    private float degreesToRadians(float f) {
        return (f * 3.1415927f) / 180.0f;
    }

    private void setSelected(boolean z, boolean z2) {
    }

    public PhotoFilterBlurControl(Context context) {
        super(context);
        this.startCenterPoint = new Point();
        this.actualAreaSize = new Size();
        this.centerPoint = new Point(0.5f, 0.5f);
        this.falloff = 0.15f;
        this.size = 0.35f;
        this.arcRect = new RectF();
        this.pointerScale = 1.0f;
        this.checkForMoving = true;
        this.paint = new Paint(1);
        this.arcPaint = new Paint(1);
        setWillNotDraw(false);
        this.paint.setColor(-1);
        this.arcPaint.setColor(-1);
        this.arcPaint.setStrokeWidth(AndroidUtilities.m107dp(2));
        this.arcPaint.setStyle(Paint.Style.STROKE);
        this.inBubbleMode = context instanceof BubbleActivity;
    }

    public void setType(int i) {
        this.type = i;
        invalidate();
    }

    public void setDelegate(PhotoFilterLinearBlurControlDelegate photoFilterLinearBlurControlDelegate) {
        this.delegate = photoFilterLinearBlurControlDelegate;
    }

    private float getDistance(MotionEvent motionEvent) {
        if (motionEvent.getPointerCount() != 2) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        float x = motionEvent.getX(0);
        float y = motionEvent.getY(0);
        float x2 = x - motionEvent.getX(1);
        float y2 = y - motionEvent.getY(1);
        return (float) Math.sqrt((x2 * x2) + (y2 * y2));
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0018, code lost:
        if (r2 != 6) goto L10;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r18) {
        /*
            Method dump skipped, instructions count: 345
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.PhotoFilterBlurControl.onTouchEvent(android.view.MotionEvent):boolean");
    }

    private void handlePan(int i, MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        Point actualCenterPoint = getActualCenterPoint();
        float f = x - actualCenterPoint.f1899x;
        float f2 = y - actualCenterPoint.f1900y;
        float sqrt = (float) Math.sqrt((f * f) + (f2 * f2));
        Size size = this.actualAreaSize;
        float min = Math.min(size.width, size.height);
        float f3 = this.falloff * min;
        float f4 = this.size * min;
        float abs = (float) Math.abs((f * Math.cos(degreesToRadians(this.angle) + 1.5707963267948966d)) + (f2 * Math.sin(degreesToRadians(this.angle) + 1.5707963267948966d)));
        float f5 = BitmapDescriptorFactory.HUE_RED;
        if (i == 1) {
            this.pointerStartX = motionEvent.getX();
            this.pointerStartY = motionEvent.getY();
            r6 = Math.abs(f4 - f3) < BlurInsetProximity ? 1 : 0;
            float f6 = r6 != 0 ? 0.0f : BlurViewRadiusInset;
            if (r6 == 0) {
                f5 = BlurViewRadiusInset;
            }
            int i2 = this.type;
            if (i2 == 0) {
                if (sqrt < BlurViewCenterInset) {
                    this.activeControl = BlurViewActiveControl.BlurViewActiveControlCenter;
                    this.startCenterPoint = actualCenterPoint;
                } else {
                    float f7 = BlurViewRadiusInset;
                    if (abs > f3 - f7 && abs < f6 + f3) {
                        this.activeControl = BlurViewActiveControl.BlurViewActiveControlInnerRadius;
                        this.startDistance = abs;
                        this.startRadius = f3;
                    } else if (abs > f4 - f5 && abs < f4 + f7) {
                        this.activeControl = BlurViewActiveControl.BlurViewActiveControlOuterRadius;
                        this.startDistance = abs;
                        this.startRadius = f4;
                    } else if (abs <= f3 - f7 || abs >= f4 + f7) {
                        this.activeControl = BlurViewActiveControl.BlurViewActiveControlRotation;
                    }
                }
            } else if (i2 == 1) {
                if (sqrt < BlurViewCenterInset) {
                    this.activeControl = BlurViewActiveControl.BlurViewActiveControlCenter;
                    this.startCenterPoint = actualCenterPoint;
                } else {
                    float f8 = BlurViewRadiusInset;
                    if (sqrt > f3 - f8 && sqrt < f6 + f3) {
                        this.activeControl = BlurViewActiveControl.BlurViewActiveControlInnerRadius;
                        this.startDistance = sqrt;
                        this.startRadius = f3;
                    } else if (sqrt > f4 - f5 && sqrt < f8 + f4) {
                        this.activeControl = BlurViewActiveControl.BlurViewActiveControlOuterRadius;
                        this.startDistance = sqrt;
                        this.startRadius = f4;
                    }
                }
            }
            setSelected(true, true);
        } else if (i != 2) {
            if (i == 3 || i == 4 || i == 5) {
                this.activeControl = BlurViewActiveControl.BlurViewActiveControlNone;
                setSelected(false, true);
            }
        } else {
            int i3 = this.type;
            if (i3 == 0) {
                int i4 = C53571.f1898xcde84254[this.activeControl.ordinal()];
                if (i4 == 1) {
                    float f9 = x - this.pointerStartX;
                    float f10 = y - this.pointerStartY;
                    float width = (getWidth() - this.actualAreaSize.width) / 2.0f;
                    if (Build.VERSION.SDK_INT >= 21 && !this.inBubbleMode) {
                        r6 = AndroidUtilities.statusBarHeight;
                    }
                    Size size2 = this.actualAreaSize;
                    float f11 = size2.height;
                    Rect rect = new Rect(width, r6 + ((getHeight() - f11) / 2.0f), size2.width, f11);
                    float f12 = rect.f1942x;
                    float max = Math.max(f12, Math.min(rect.width + f12, this.startCenterPoint.f1899x + f9));
                    float f13 = rect.f1943y;
                    Point point = new Point(max, Math.max(f13, Math.min(rect.height + f13, this.startCenterPoint.f1900y + f10)));
                    float f14 = point.f1899x - rect.f1942x;
                    Size size3 = this.actualAreaSize;
                    float f15 = size3.width;
                    this.centerPoint = new Point(f14 / f15, ((point.f1900y - rect.f1943y) + ((f15 - size3.height) / 2.0f)) / f15);
                } else if (i4 == 2) {
                    this.falloff = Math.min(Math.max(0.1f, (this.startRadius + (abs - this.startDistance)) / min), this.size - 0.02f);
                } else if (i4 == 3) {
                    this.size = Math.max(this.falloff + 0.02f, (this.startRadius + (abs - this.startDistance)) / min);
                } else if (i4 == 4) {
                    float f16 = x - this.pointerStartX;
                    float f17 = y - this.pointerStartY;
                    boolean z = x > actualCenterPoint.f1899x;
                    boolean z2 = y > actualCenterPoint.f1900y;
                    boolean z3 = Math.abs(f17) > Math.abs(f16);
                    if (z || z2 ? !(!z || z2 ? !z || !z2 ? !z3 ? f16 >= BitmapDescriptorFactory.HUE_RED : f17 >= BitmapDescriptorFactory.HUE_RED : !z3 ? f16 >= BitmapDescriptorFactory.HUE_RED : f17 <= BitmapDescriptorFactory.HUE_RED : !z3 ? f16 <= BitmapDescriptorFactory.HUE_RED : f17 <= BitmapDescriptorFactory.HUE_RED) : !(!z3 ? f16 <= BitmapDescriptorFactory.HUE_RED : f17 >= BitmapDescriptorFactory.HUE_RED)) {
                        r6 = 1;
                    }
                    this.angle += ((((float) Math.sqrt((f16 * f16) + (f17 * f17))) * ((r6 * 2) - 1)) / 3.1415927f) / 1.15f;
                    this.pointerStartX = x;
                    this.pointerStartY = y;
                }
            } else if (i3 == 1) {
                int i5 = C53571.f1898xcde84254[this.activeControl.ordinal()];
                if (i5 == 1) {
                    float f18 = x - this.pointerStartX;
                    float f19 = y - this.pointerStartY;
                    float width2 = (getWidth() - this.actualAreaSize.width) / 2.0f;
                    if (Build.VERSION.SDK_INT >= 21 && !this.inBubbleMode) {
                        r6 = AndroidUtilities.statusBarHeight;
                    }
                    Size size4 = this.actualAreaSize;
                    float f20 = size4.height;
                    Rect rect2 = new Rect(width2, r6 + ((getHeight() - f20) / 2.0f), size4.width, f20);
                    float f21 = rect2.f1942x;
                    float max2 = Math.max(f21, Math.min(rect2.width + f21, this.startCenterPoint.f1899x + f18));
                    float f22 = rect2.f1943y;
                    Point point2 = new Point(max2, Math.max(f22, Math.min(rect2.height + f22, this.startCenterPoint.f1900y + f19)));
                    float f23 = point2.f1899x - rect2.f1942x;
                    Size size5 = this.actualAreaSize;
                    float f24 = size5.width;
                    this.centerPoint = new Point(f23 / f24, ((point2.f1900y - rect2.f1943y) + ((f24 - size5.height) / 2.0f)) / f24);
                } else if (i5 == 2) {
                    this.falloff = Math.min(Math.max(0.1f, (this.startRadius + (sqrt - this.startDistance)) / min), this.size - 0.02f);
                } else if (i5 == 3) {
                    this.size = Math.max(this.falloff + 0.02f, (this.startRadius + (sqrt - this.startDistance)) / min);
                }
            }
            invalidate();
            PhotoFilterLinearBlurControlDelegate photoFilterLinearBlurControlDelegate = this.delegate;
            if (photoFilterLinearBlurControlDelegate != null) {
                photoFilterLinearBlurControlDelegate.valueChanged(this.centerPoint, this.falloff, this.size, degreesToRadians(this.angle) + 1.5707964f);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Components.PhotoFilterBlurControl$1 */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class C53571 {

        /* renamed from: $SwitchMap$org$telegram$ui$Components$PhotoFilterBlurControl$BlurViewActiveControl */
        static final /* synthetic */ int[] f1898xcde84254;

        static {
            int[] iArr = new int[BlurViewActiveControl.values().length];
            f1898xcde84254 = iArr;
            try {
                iArr[BlurViewActiveControl.BlurViewActiveControlCenter.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1898xcde84254[BlurViewActiveControl.BlurViewActiveControlInnerRadius.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1898xcde84254[BlurViewActiveControl.BlurViewActiveControlOuterRadius.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1898xcde84254[BlurViewActiveControl.BlurViewActiveControlRotation.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private void handlePinch(int i, MotionEvent motionEvent) {
        if (i == 1) {
            this.startPointerDistance = getDistance(motionEvent);
            this.pointerScale = 1.0f;
            this.activeControl = BlurViewActiveControl.BlurViewActiveControlWholeArea;
            setSelected(true, true);
        } else if (i != 2) {
            if (i == 3 || i == 4 || i == 5) {
                this.activeControl = BlurViewActiveControl.BlurViewActiveControlNone;
                setSelected(false, true);
                return;
            }
            return;
        }
        float distance = getDistance(motionEvent);
        float f = this.pointerScale + (((distance - this.startPointerDistance) / AndroidUtilities.density) * 0.01f);
        this.pointerScale = f;
        float max = Math.max(0.1f, this.falloff * f);
        this.falloff = max;
        this.size = Math.max(max + 0.02f, this.size * this.pointerScale);
        this.pointerScale = 1.0f;
        this.startPointerDistance = distance;
        invalidate();
        PhotoFilterLinearBlurControlDelegate photoFilterLinearBlurControlDelegate = this.delegate;
        if (photoFilterLinearBlurControlDelegate != null) {
            photoFilterLinearBlurControlDelegate.valueChanged(this.centerPoint, this.falloff, this.size, degreesToRadians(this.angle) + 1.5707964f);
        }
    }

    public void setActualAreaSize(float f, float f2) {
        Size size = this.actualAreaSize;
        size.width = f;
        size.height = f2;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int i;
        super.onDraw(canvas);
        Point actualCenterPoint = getActualCenterPoint();
        float actualInnerRadius = getActualInnerRadius();
        float actualOuterRadius = getActualOuterRadius();
        canvas.translate(actualCenterPoint.f1899x, actualCenterPoint.f1900y);
        int i2 = this.type;
        if (i2 == 0) {
            canvas.rotate(this.angle);
            float m108dp = AndroidUtilities.m108dp(6.0f);
            float m108dp2 = AndroidUtilities.m108dp(12.0f);
            float m108dp3 = AndroidUtilities.m108dp(1.5f);
            for (int i3 = 0; i3 < 30; i3++) {
                float f = m108dp2 + m108dp;
                float f2 = i3 * f;
                float f3 = -actualInnerRadius;
                float f4 = f2 + m108dp2;
                float f5 = m108dp3 - actualInnerRadius;
                canvas.drawRect(f2, f3, f4, f5, this.paint);
                float f6 = ((-i) * f) - m108dp;
                float f7 = f6 - m108dp2;
                canvas.drawRect(f7, f3, f6, f5, this.paint);
                float f8 = m108dp3 + actualInnerRadius;
                canvas.drawRect(f2, actualInnerRadius, f4, f8, this.paint);
                canvas.drawRect(f7, actualInnerRadius, f6, f8, this.paint);
            }
            float m108dp4 = AndroidUtilities.m108dp(6.0f);
            for (int i4 = 0; i4 < 64; i4++) {
                float f9 = m108dp4 + m108dp;
                float f10 = i4 * f9;
                float f11 = -actualOuterRadius;
                float f12 = m108dp4 + f10;
                float f13 = m108dp3 - actualOuterRadius;
                canvas.drawRect(f10, f11, f12, f13, this.paint);
                float f14 = ((-i4) * f9) - m108dp;
                float f15 = f14 - m108dp4;
                canvas.drawRect(f15, f11, f14, f13, this.paint);
                float f16 = m108dp3 + actualOuterRadius;
                canvas.drawRect(f10, actualOuterRadius, f12, f16, this.paint);
                canvas.drawRect(f15, actualOuterRadius, f14, f16, this.paint);
            }
        } else if (i2 == 1) {
            float f17 = -actualInnerRadius;
            this.arcRect.set(f17, f17, actualInnerRadius, actualInnerRadius);
            for (int i5 = 0; i5 < 22; i5++) {
                canvas.drawArc(this.arcRect, 16.35f * i5, 10.2f, false, this.arcPaint);
            }
            float f18 = -actualOuterRadius;
            this.arcRect.set(f18, f18, actualOuterRadius, actualOuterRadius);
            for (int i6 = 0; i6 < 64; i6++) {
                canvas.drawArc(this.arcRect, 5.62f * i6, 3.6f, false, this.arcPaint);
            }
        }
        canvas.drawCircle(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, AndroidUtilities.m107dp(8), this.paint);
    }

    private Point getActualCenterPoint() {
        float f = this.actualAreaSize.width;
        float width = ((getWidth() - f) / 2.0f) + (this.centerPoint.f1899x * f);
        int i = (Build.VERSION.SDK_INT < 21 || this.inBubbleMode) ? 0 : AndroidUtilities.statusBarHeight;
        Size size = this.actualAreaSize;
        float f2 = size.height;
        float height = i + ((getHeight() - f2) / 2.0f);
        float f3 = size.width;
        return new Point(width, (height - ((f3 - f2) / 2.0f)) + (this.centerPoint.f1900y * f3));
    }

    private float getActualInnerRadius() {
        Size size = this.actualAreaSize;
        return Math.min(size.width, size.height) * this.falloff;
    }

    private float getActualOuterRadius() {
        Size size = this.actualAreaSize;
        return Math.min(size.width, size.height) * this.size;
    }
}
