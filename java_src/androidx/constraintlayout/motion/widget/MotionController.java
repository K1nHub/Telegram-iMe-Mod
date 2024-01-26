package androidx.constraintlayout.motion.widget;

import android.view.View;
import android.view.animation.Interpolator;
import androidx.constraintlayout.core.motion.utils.CurveFit;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.motion.utils.KeyCache;
import androidx.constraintlayout.motion.utils.ViewOscillator;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.motion.utils.ViewTimeCycle;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
/* loaded from: classes.dex */
public class MotionController {
    private CurveFit mArcSpline;
    private String[] mAttributeNames;
    private HashMap<String, ViewSpline> mAttributesMap;
    private HashMap<String, ViewOscillator> mCycleMap;
    private MotionPaths mEndMotionPath;
    private MotionConstrainedPoint mEndPoint;
    private double[] mInterpolateData;
    private int[] mInterpolateVariables;
    private double[] mInterpolateVelocity;
    private KeyTrigger[] mKeyTriggers;
    private ArrayList<MotionPaths> mMotionPaths;
    private boolean mNoMovement;
    private Interpolator mQuantizeMotionInterpolator;
    private float mQuantizeMotionPhase;
    private int mQuantizeMotionSteps;
    private CurveFit[] mSpline;
    float mStaggerOffset;
    float mStaggerScale;
    private MotionPaths mStartMotionPath;
    private MotionConstrainedPoint mStartPoint;
    private HashMap<String, ViewTimeCycle> mTimeCycleAttributesMap;
    private int mTransformPivotTarget;
    private View mTransformPivotView;
    private float[] mValuesBuff;

    public void getCenter(double p, float[] pos, float[] vel) {
        double[] dArr = new double[4];
        double[] dArr2 = new double[4];
        this.mSpline[0].getPos(p, dArr);
        this.mSpline[0].getSlope(p, dArr2);
        Arrays.fill(vel, (float) BitmapDescriptorFactory.HUE_RED);
        this.mStartMotionPath.getCenter(p, this.mInterpolateVariables, dArr, pos, dArr2, vel);
    }

    public String toString() {
        return " start: x: " + this.mStartMotionPath.f32x + " y: " + this.mStartMotionPath.f33y + " end: x: " + this.mEndMotionPath.f32x + " y: " + this.mEndMotionPath.f33y;
    }

    private float getAdjustedPosition(float position, float[] velocity) {
        float f = BitmapDescriptorFactory.HUE_RED;
        if (velocity != null) {
            velocity[0] = 1.0f;
        } else {
            float f2 = this.mStaggerScale;
            if (f2 != 1.0d) {
                float f3 = this.mStaggerOffset;
                if (position < f3) {
                    position = 0.0f;
                }
                if (position > f3 && position < 1.0d) {
                    position = Math.min((position - f3) * f2, 1.0f);
                }
            }
        }
        Easing easing = this.mStartMotionPath.mKeyFrameEasing;
        float f4 = Float.NaN;
        Iterator<MotionPaths> it = this.mMotionPaths.iterator();
        while (it.hasNext()) {
            MotionPaths next = it.next();
            Easing easing2 = next.mKeyFrameEasing;
            if (easing2 != null) {
                float f5 = next.time;
                if (f5 < position) {
                    easing = easing2;
                    f = f5;
                } else if (Float.isNaN(f4)) {
                    f4 = next.time;
                }
            }
        }
        if (easing != null) {
            float f6 = (Float.isNaN(f4) ? 1.0f : f4) - f;
            double d = (position - f) / f6;
            position = (((float) easing.get(d)) * f6) + f;
            if (velocity != null) {
                velocity[0] = (float) easing.getDiff(d);
            }
        }
        return position;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean interpolate(View child, float global_position, long time, KeyCache keyCache) {
        ViewTimeCycle.PathRotate pathRotate;
        boolean z;
        int i;
        double d;
        View view;
        float f;
        float adjustedPosition = getAdjustedPosition(global_position, null);
        int i2 = this.mQuantizeMotionSteps;
        if (i2 != Key.UNSET) {
            float f2 = 1.0f / i2;
            float floor = ((float) Math.floor(adjustedPosition / f2)) * f2;
            float f3 = (adjustedPosition % f2) / f2;
            if (!Float.isNaN(this.mQuantizeMotionPhase)) {
                f3 = (f3 + this.mQuantizeMotionPhase) % 1.0f;
            }
            Interpolator interpolator = this.mQuantizeMotionInterpolator;
            if (interpolator != null) {
                f = interpolator.getInterpolation(f3);
            } else {
                f = ((double) f3) > 0.5d ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            }
            adjustedPosition = (f * f2) + floor;
        }
        float f4 = adjustedPosition;
        HashMap<String, ViewSpline> hashMap = this.mAttributesMap;
        if (hashMap != null) {
            for (ViewSpline viewSpline : hashMap.values()) {
                viewSpline.setProperty(child, f4);
            }
        }
        HashMap<String, ViewTimeCycle> hashMap2 = this.mTimeCycleAttributesMap;
        if (hashMap2 != null) {
            pathRotate = null;
            boolean z2 = false;
            for (ViewTimeCycle viewTimeCycle : hashMap2.values()) {
                if (viewTimeCycle instanceof ViewTimeCycle.PathRotate) {
                    pathRotate = (ViewTimeCycle.PathRotate) viewTimeCycle;
                } else {
                    z2 |= viewTimeCycle.setProperty(child, f4, time, keyCache);
                }
            }
            z = z2;
        } else {
            pathRotate = null;
            z = false;
        }
        CurveFit[] curveFitArr = this.mSpline;
        if (curveFitArr != null) {
            double d2 = f4;
            curveFitArr[0].getPos(d2, this.mInterpolateData);
            this.mSpline[0].getSlope(d2, this.mInterpolateVelocity);
            CurveFit curveFit = this.mArcSpline;
            if (curveFit != null) {
                double[] dArr = this.mInterpolateData;
                if (dArr.length > 0) {
                    curveFit.getPos(d2, dArr);
                    this.mArcSpline.getSlope(d2, this.mInterpolateVelocity);
                }
            }
            if (this.mNoMovement) {
                d = d2;
            } else {
                d = d2;
                this.mStartMotionPath.setView(f4, child, this.mInterpolateVariables, this.mInterpolateData, this.mInterpolateVelocity, null);
            }
            if (this.mTransformPivotTarget != Key.UNSET) {
                if (this.mTransformPivotView == null) {
                    this.mTransformPivotView = ((View) child.getParent()).findViewById(this.mTransformPivotTarget);
                }
                if (this.mTransformPivotView != null) {
                    float top = (view.getTop() + this.mTransformPivotView.getBottom()) / 2.0f;
                    float left = (this.mTransformPivotView.getLeft() + this.mTransformPivotView.getRight()) / 2.0f;
                    if (child.getRight() - child.getLeft() > 0 && child.getBottom() - child.getTop() > 0) {
                        child.setPivotX(left - child.getLeft());
                        child.setPivotY(top - child.getTop());
                    }
                }
            }
            HashMap<String, ViewSpline> hashMap3 = this.mAttributesMap;
            if (hashMap3 != null) {
                for (ViewSpline viewSpline2 : hashMap3.values()) {
                    if (viewSpline2 instanceof ViewSpline.PathRotate) {
                        double[] dArr2 = this.mInterpolateVelocity;
                        if (dArr2.length > 1) {
                            ((ViewSpline.PathRotate) viewSpline2).setPathRotate(child, f4, dArr2[0], dArr2[1]);
                        }
                    }
                }
            }
            if (pathRotate != null) {
                double[] dArr3 = this.mInterpolateVelocity;
                i = 1;
                z |= pathRotate.setPathRotate(child, keyCache, f4, time, dArr3[0], dArr3[1]);
            } else {
                i = 1;
            }
            int i3 = i;
            while (true) {
                CurveFit[] curveFitArr2 = this.mSpline;
                if (i3 >= curveFitArr2.length) {
                    break;
                }
                curveFitArr2[i3].getPos(d, this.mValuesBuff);
                this.mStartMotionPath.attributes.get(this.mAttributeNames[i3 - 1]).setInterpolatedValue(child, this.mValuesBuff);
                i3++;
            }
            MotionConstrainedPoint motionConstrainedPoint = this.mStartPoint;
            if (motionConstrainedPoint.mVisibilityMode == 0) {
                if (f4 <= BitmapDescriptorFactory.HUE_RED) {
                    child.setVisibility(motionConstrainedPoint.visibility);
                } else if (f4 >= 1.0f) {
                    child.setVisibility(this.mEndPoint.visibility);
                } else if (this.mEndPoint.visibility != motionConstrainedPoint.visibility) {
                    child.setVisibility(0);
                }
            }
            if (this.mKeyTriggers != null) {
                int i4 = 0;
                while (true) {
                    KeyTrigger[] keyTriggerArr = this.mKeyTriggers;
                    if (i4 >= keyTriggerArr.length) {
                        break;
                    }
                    keyTriggerArr[i4].conditionallyFire(f4, child);
                    i4++;
                }
            }
        } else {
            i = 1;
            MotionPaths motionPaths = this.mStartMotionPath;
            float f5 = motionPaths.f32x;
            MotionPaths motionPaths2 = this.mEndMotionPath;
            float f6 = f5 + ((motionPaths2.f32x - f5) * f4);
            float f7 = motionPaths.f33y;
            float f8 = f7 + ((motionPaths2.f33y - f7) * f4);
            float f9 = motionPaths.width;
            float f10 = motionPaths2.width;
            float f11 = motionPaths.height;
            float f12 = motionPaths2.height;
            float f13 = f6 + 0.5f;
            int i5 = (int) f13;
            float f14 = f8 + 0.5f;
            int i6 = (int) f14;
            int i7 = (int) (f13 + ((f10 - f9) * f4) + f9);
            int i8 = (int) (f14 + ((f12 - f11) * f4) + f11);
            int i9 = i7 - i5;
            int i10 = i8 - i6;
            if (f10 != f9 || f12 != f11) {
                child.measure(View.MeasureSpec.makeMeasureSpec(i9, 1073741824), View.MeasureSpec.makeMeasureSpec(i10, 1073741824));
            }
            child.layout(i5, i6, i7, i8);
        }
        HashMap<String, ViewOscillator> hashMap4 = this.mCycleMap;
        if (hashMap4 != null) {
            for (ViewOscillator viewOscillator : hashMap4.values()) {
                if (viewOscillator instanceof ViewOscillator.PathRotateSet) {
                    double[] dArr4 = this.mInterpolateVelocity;
                    ((ViewOscillator.PathRotateSet) viewOscillator).setPathRotate(child, f4, dArr4[0], dArr4[i]);
                } else {
                    viewOscillator.setProperty(child, f4);
                }
            }
        }
        return z;
    }
}
