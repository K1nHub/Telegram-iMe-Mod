package org.telegram.p043ui.Components.Paint;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Matrix;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.zxing.common.detector.MathUtils;
import java.util.Vector;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BotWebViewVibrationEffect;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.Paint.Brush;
import org.telegram.p043ui.Components.Size;
/* renamed from: org.telegram.ui.Components.Paint.Input */
/* loaded from: classes6.dex */
public class Input {
    private static final CubicBezierInterpolator PRESSURE_INTERPOLATOR = new CubicBezierInterpolator(0.0d, 0.5d, 0.0d, 1.0d);
    private ValueAnimator arrowAnimator;
    private boolean beganDrawing;
    private boolean canFill;
    private boolean clearBuffer;
    private final ShapeDetector detector;
    private long drawingStart;
    private ValueAnimator fillAnimator;
    private boolean hasMoved;
    private boolean ignore;
    private Matrix invertMatrix;
    private boolean isFirst;
    private float lastAngle;
    private boolean lastAngleSet;
    private Point lastLocation;
    private double lastRemainder;
    private Point lastThickLocation;
    private long lastVelocityUpdate;
    private int pointsCount;
    private int realPointsCount;
    private RenderView renderView;
    private Brush switchedBrushByStylusFrom;
    private double thicknessCount;
    private double thicknessSum;
    private float velocity;
    private Point[] points = new Point[3];
    private float[] tempPoint = new float[2];
    private final Runnable fillWithCurrentBrush = new Runnable() { // from class: org.telegram.ui.Components.Paint.Input$$ExternalSyntheticLambda3
        @Override // java.lang.Runnable
        public final void run() {
            Input.this.lambda$new$1();
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public void setShapeHelper(Shape shape) {
        if (shape != null) {
            float currentWeight = this.renderView.getCurrentWeight();
            shape.thickness = currentWeight;
            double d = this.thicknessSum;
            if (d > 0.0d) {
                shape.thickness = (float) (currentWeight * (d / this.thicknessCount));
            }
            if (shape.getType() == 4) {
                shape.arrowTriangleLength *= shape.thickness;
            }
        }
        this.renderView.getPainting().setHelperShape(shape);
    }

    public Input(RenderView renderView) {
        this.renderView = renderView;
        this.detector = new ShapeDetector(renderView.getContext(), new Utilities.Callback() { // from class: org.telegram.ui.Components.Paint.Input$$ExternalSyntheticLambda6
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                Input.this.setShapeHelper((Shape) obj);
            }
        });
    }

    public void setMatrix(Matrix matrix) {
        Matrix matrix2 = new Matrix();
        this.invertMatrix = matrix2;
        matrix.invert(matrix2);
    }

    private void fill(Brush brush, final boolean z, final Runnable runnable) {
        if (!this.canFill || this.lastLocation == null) {
            return;
        }
        if (brush == null) {
            brush = this.renderView.getCurrentBrush();
        }
        if ((brush instanceof Brush.Elliptical) || (brush instanceof Brush.Neon)) {
            brush = new Brush.Radial();
        }
        final Brush brush2 = brush;
        this.canFill = false;
        if (brush2 instanceof Brush.Eraser) {
            this.renderView.getPainting().hasBlur = false;
        }
        this.renderView.getPainting().clearStroke();
        this.pointsCount = 0;
        this.realPointsCount = 0;
        this.lastAngleSet = false;
        this.beganDrawing = false;
        if (z) {
            this.renderView.onBeganDrawing();
        }
        Size size = this.renderView.getPainting().getSize();
        Point point = this.lastLocation;
        float distance = MathUtils.distance((float) point.f1870x, (float) point.f1871y, (float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED);
        Point point2 = this.lastLocation;
        float max = Math.max(distance, MathUtils.distance((float) point2.f1870x, (float) point2.f1871y, size.width, (float) BitmapDescriptorFactory.HUE_RED));
        Point point3 = this.lastLocation;
        float distance2 = MathUtils.distance((float) point3.f1870x, (float) point3.f1871y, (float) BitmapDescriptorFactory.HUE_RED, size.height);
        Point point4 = this.lastLocation;
        final float max2 = Math.max(max, Math.max(distance2, MathUtils.distance((float) point4.f1870x, (float) point4.f1871y, size.width, size.height))) / 0.84f;
        ValueAnimator valueAnimator = this.arrowAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.arrowAnimator = null;
        }
        ValueAnimator valueAnimator2 = this.fillAnimator;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.fillAnimator = null;
        }
        Point point5 = this.lastLocation;
        final Point point6 = new Point(point5.f1870x, point5.f1871y, 1.0d);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        this.fillAnimator = ofFloat;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Paint.Input$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                Input.this.lambda$fill$0(point6, brush2, max2, valueAnimator3);
            }
        });
        this.fillAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Paint.Input.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                Input.this.fillAnimator = null;
                Path path = new Path(new Point[]{point6});
                path.setup(Input.this.renderView.getCurrentColor(), max2 * 1.0f, brush2);
                Input.this.renderView.getPainting().commitPath(path, brush2.isEraser() ? -1 : Input.this.renderView.getCurrentColor(), z, null);
                if (z) {
                    Input.this.renderView.onFinishedDrawing(true);
                }
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        });
        this.fillAnimator.setDuration(450L);
        this.fillAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.fillAnimator.start();
        if (z) {
            BotWebViewVibrationEffect.IMPACT_HEAVY.vibrate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fill$0(Point point, Brush brush, float f, ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        Path path = new Path(new Point[]{point});
        path.setup(brush.isEraser() ? -1 : this.renderView.getCurrentColor(), floatValue * f, brush);
        this.renderView.getPainting().paintStroke(path, true, true, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1() {
        fill(null, true, null);
    }

    public void clear(Runnable runnable) {
        this.lastLocation = new Point(this.renderView.getPainting().getSize().width, 0.0d, 1.0d);
        this.canFill = true;
        fill(new Brush.Eraser(), false, runnable);
    }

    public void ignoreOnce() {
        this.ignore = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x021b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x021c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void process(android.view.MotionEvent r21, float r22) {
        /*
            Method dump skipped, instructions count: 898
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.Paint.Input.process(android.view.MotionEvent, float):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$process$2(float f, Point point, float f2, float[] fArr, double d, boolean[] zArr, ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        double d2 = f;
        double d3 = f2;
        double cos = Math.cos(d2 - 2.5918139392115793d) * d3;
        double sin = Math.sin(d2 - 2.748893571891069d) * d3;
        double d4 = floatValue;
        paintPath(new Path(new Point[]{new Point(point.f1870x + (fArr[0] * cos), point.f1871y + (fArr[0] * sin), d), new Point(point.f1870x + (cos * d4), point.f1871y + (sin * d4), d, true)}));
        double cos2 = Math.cos(d2 + 2.5918139392115793d);
        double sin2 = Math.sin(d2 + 2.748893571891069d);
        double d5 = cos2 * d3;
        double d6 = d3 * sin2;
        paintPath(new Path(new Point[]{new Point(point.f1870x + (fArr[0] * d5), point.f1871y + (fArr[0] * d6), d), new Point(point.f1870x + (d5 * d4), point.f1871y + (d6 * d4), d, true)}));
        if (!zArr[0] && floatValue > 0.4f) {
            zArr[0] = true;
            BotWebViewVibrationEffect.SELECTION_CHANGE.vibrate();
        }
        fArr[0] = floatValue;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$process$3() {
        Brush brush = this.switchedBrushByStylusFrom;
        if (brush != null) {
            this.renderView.selectBrush(brush);
            this.switchedBrushByStylusFrom = null;
        }
    }

    private float lerpAngle(float f, float f2, float f3) {
        double d = 1.0f - f3;
        double d2 = f;
        double d3 = f3;
        double d4 = f2;
        return (float) Math.atan2((Math.sin(d2) * d) + (Math.sin(d4) * d3), (d * Math.cos(d2)) + (d3 * Math.cos(d4)));
    }

    private void reset() {
        this.pointsCount = 0;
    }

    private void smoothenAndPaintPoints(boolean z, float f) {
        int i = this.pointsCount;
        if (i > 2) {
            Vector vector = new Vector();
            Point[] pointArr = this.points;
            Point point = pointArr[0];
            Point point2 = pointArr[1];
            Point point3 = pointArr[2];
            if (point3 == null || point2 == null || point == null) {
                return;
            }
            Point multiplySum = point2.multiplySum(point, 0.5d);
            Point multiplySum2 = point3.multiplySum(point2, 0.5d);
            int min = (int) Math.min(48.0d, Math.max(Math.floor(multiplySum.getDistanceTo(multiplySum2) / 1), 24.0d));
            float f2 = 1.0f / min;
            float f3 = 0.0f;
            int i2 = 0;
            while (i2 < min) {
                int i3 = i2;
                Point smoothPoint = smoothPoint(multiplySum, multiplySum2, point2, f3, f);
                if (this.isFirst) {
                    smoothPoint.edge = true;
                    this.isFirst = false;
                }
                vector.add(smoothPoint);
                this.thicknessSum += smoothPoint.f1872z;
                this.thicknessCount += 1.0d;
                f3 += f2;
                i2 = i3 + 1;
            }
            if (z) {
                multiplySum2.edge = true;
            }
            vector.add(multiplySum2);
            Point[] pointArr2 = new Point[vector.size()];
            vector.toArray(pointArr2);
            paintPath(new Path(pointArr2));
            Point[] pointArr3 = this.points;
            System.arraycopy(pointArr3, 1, pointArr3, 0, 2);
            if (z) {
                this.pointsCount = 0;
                return;
            } else {
                this.pointsCount = 2;
                return;
            }
        }
        Point[] pointArr4 = new Point[i];
        System.arraycopy(this.points, 0, pointArr4, 0, i);
        paintPath(new Path(pointArr4));
    }

    private Point smoothPoint(Point point, Point point2, Point point3, float f, float f2) {
        float f3 = 1.0f - f;
        double d = f3;
        double d2 = f * f;
        double d3 = f3 * f3;
        double d4 = f;
        return new Point((point.f1870x * d3) + (point3.f1870x * 2.0d * d4 * d) + (point2.f1870x * d2), (point.f1871y * d3) + (point3.f1871y * 2.0d * d4 * d) + (point2.f1871y * d2), (((((point.f1872z * Math.pow(d, 2.0d)) + (point3.f1872z * ((2.0f * f3) * f))) + (point2.f1872z * d2)) - 1.0d) * AndroidUtilities.lerp(f2, 1.0f, androidx.core.math.MathUtils.clamp(this.realPointsCount / 16.0f, (float) BitmapDescriptorFactory.HUE_RED, 1.0f))) + 1.0d);
    }

    private void paintPath(final Path path) {
        path.setup(this.renderView.getCurrentColor(), this.renderView.getCurrentWeight(), this.renderView.getCurrentBrush());
        if (this.clearBuffer) {
            this.lastRemainder = 0.0d;
        }
        path.remainder = this.lastRemainder;
        this.renderView.getPainting().paintStroke(path, this.clearBuffer, false, new Runnable() { // from class: org.telegram.ui.Components.Paint.Input$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                Input.this.lambda$paintPath$5(path);
            }
        });
        this.clearBuffer = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$paintPath$4(Path path) {
        this.lastRemainder = path.remainder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$paintPath$5(final Path path) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Paint.Input$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                Input.this.lambda$paintPath$4(path);
            }
        });
    }
}
