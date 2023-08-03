package org.webrtc;

import android.graphics.Point;
import android.opengl.Matrix;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes6.dex */
public class RendererCommon {
    private static float BALANCED_VISIBLE_FRACTION = 0.5625f;

    /* loaded from: classes6.dex */
    public interface GlDrawer {
        void drawOes(int i, int i2, int i3, int i4, int i5, float[] fArr, int i6, int i7, int i8, int i9, int i10, int i11, boolean z);

        void drawRgb(int i, int i2, int i3, int i4, int i5, float[] fArr, int i6, int i7, int i8, int i9, int i10, int i11, boolean z);

        void drawYuv(int[] iArr, int i, int i2, int i3, int i4, float[] fArr, int i5, int i6, int i7, int i8, int i9, int i10, boolean z);

        void release();
    }

    /* loaded from: classes6.dex */
    public interface RendererEvents {
        void onFirstFrameRendered();

        void onFrameResolutionChanged(int i, int i2, int i3);
    }

    /* loaded from: classes6.dex */
    public enum ScalingType {
        SCALE_ASPECT_FIT,
        SCALE_ASPECT_FILL,
        SCALE_ASPECT_BALANCED
    }

    /* loaded from: classes6.dex */
    public static class VideoLayoutMeasure {
        private float visibleFractionMatchOrientation;
        private float visibleFractionMismatchOrientation;

        public VideoLayoutMeasure() {
            ScalingType scalingType = ScalingType.SCALE_ASPECT_BALANCED;
            this.visibleFractionMatchOrientation = RendererCommon.convertScalingTypeToVisibleFraction(scalingType);
            this.visibleFractionMismatchOrientation = RendererCommon.convertScalingTypeToVisibleFraction(scalingType);
        }

        public void setScalingType(ScalingType scalingType) {
            setScalingType(scalingType, scalingType);
        }

        public void setScalingType(ScalingType scalingType, ScalingType scalingType2) {
            this.visibleFractionMatchOrientation = RendererCommon.convertScalingTypeToVisibleFraction(scalingType);
            this.visibleFractionMismatchOrientation = RendererCommon.convertScalingTypeToVisibleFraction(scalingType2);
        }

        public void setVisibleFraction(float f, float f2) {
            this.visibleFractionMatchOrientation = f;
            this.visibleFractionMismatchOrientation = f2;
        }

        /* JADX WARN: Code restructure failed: missing block: B:32:0x0052, code lost:
            if ((r3 > 0) == (r12 > 0)) goto L27;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public android.graphics.Point measure(boolean r8, int r9, int r10, int r11, int r12) {
            /*
                r7 = this;
                r0 = 2147483647(0x7fffffff, float:NaN)
                int r1 = android.view.View.getDefaultSize(r0, r9)
                int r0 = android.view.View.getDefaultSize(r0, r10)
                if (r11 == 0) goto L57
                if (r12 == 0) goto L57
                if (r1 == 0) goto L57
                if (r0 != 0) goto L14
                goto L57
            L14:
                float r11 = (float) r11
                float r12 = (float) r12
                float r11 = r11 / r12
                float r12 = (float) r1
                float r2 = (float) r0
                float r12 = r12 / r2
                r2 = 1065353216(0x3f800000, float:1.0)
                int r3 = (r11 > r2 ? 1 : (r11 == r2 ? 0 : -1))
                r4 = 1
                r5 = 0
                if (r3 <= 0) goto L24
                r6 = r4
                goto L25
            L24:
                r6 = r5
            L25:
                int r12 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
                if (r12 <= 0) goto L2b
                r2 = r4
                goto L2c
            L2b:
                r2 = r5
            L2c:
                if (r6 != r2) goto L31
                float r2 = r7.visibleFractionMatchOrientation
                goto L33
            L31:
                float r2 = r7.visibleFractionMismatchOrientation
            L33:
                android.graphics.Point r11 = org.webrtc.RendererCommon.getDisplaySize(r2, r11, r1, r0)
                if (r8 != 0) goto L56
                int r8 = android.view.View.MeasureSpec.getMode(r9)
                r9 = 1073741824(0x40000000, float:2.0)
                if (r8 != r9) goto L43
                r11.x = r1
            L43:
                int r8 = android.view.View.MeasureSpec.getMode(r10)
                if (r8 == r9) goto L54
                if (r3 <= 0) goto L4d
                r8 = r4
                goto L4e
            L4d:
                r8 = r5
            L4e:
                if (r12 <= 0) goto L51
                goto L52
            L51:
                r4 = r5
            L52:
                if (r8 != r4) goto L56
            L54:
                r11.y = r0
            L56:
                return r11
            L57:
                android.graphics.Point r8 = new android.graphics.Point
                r8.<init>(r1, r0)
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: org.webrtc.RendererCommon.VideoLayoutMeasure.measure(boolean, int, int, int, int):android.graphics.Point");
        }
    }

    public static float[] getLayoutMatrix(boolean z, float f, float f2) {
        float f3;
        float f4;
        if (f2 > f) {
            f4 = f / f2;
            f3 = 1.0f;
        } else {
            f3 = f2 / f;
            f4 = 1.0f;
        }
        if (z) {
            f3 *= -1.0f;
        }
        float[] fArr = new float[16];
        Matrix.setIdentityM(fArr, 0);
        Matrix.scaleM(fArr, 0, f3, f4, 1.0f);
        adjustOrigin(fArr);
        return fArr;
    }

    public static android.graphics.Matrix convertMatrixToAndroidGraphicsMatrix(float[] fArr) {
        float[] fArr2 = {fArr[0], fArr[4], fArr[12], fArr[1], fArr[5], fArr[13], fArr[3], fArr[7], fArr[15]};
        android.graphics.Matrix matrix = new android.graphics.Matrix();
        matrix.setValues(fArr2);
        return matrix;
    }

    public static float[] convertMatrixFromAndroidGraphicsMatrix(android.graphics.Matrix matrix) {
        float[] fArr = new float[9];
        matrix.getValues(fArr);
        return new float[]{fArr[0], fArr[3], BitmapDescriptorFactory.HUE_RED, fArr[6], fArr[1], fArr[4], BitmapDescriptorFactory.HUE_RED, fArr[7], BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED, fArr[2], fArr[5], BitmapDescriptorFactory.HUE_RED, fArr[8]};
    }

    public static Point getDisplaySize(ScalingType scalingType, float f, int i, int i2) {
        return getDisplaySize(convertScalingTypeToVisibleFraction(scalingType), f, i, i2);
    }

    private static void adjustOrigin(float[] fArr) {
        fArr[12] = fArr[12] - ((fArr[0] + fArr[4]) * 0.5f);
        fArr[13] = fArr[13] - ((fArr[1] + fArr[5]) * 0.5f);
        fArr[12] = fArr[12] + 0.5f;
        fArr[13] = fArr[13] + 0.5f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.webrtc.RendererCommon$1 */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class C71511 {
        static final /* synthetic */ int[] $SwitchMap$org$webrtc$RendererCommon$ScalingType;

        static {
            int[] iArr = new int[ScalingType.values().length];
            $SwitchMap$org$webrtc$RendererCommon$ScalingType = iArr;
            try {
                iArr[ScalingType.SCALE_ASPECT_FIT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$webrtc$RendererCommon$ScalingType[ScalingType.SCALE_ASPECT_FILL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$webrtc$RendererCommon$ScalingType[ScalingType.SCALE_ASPECT_BALANCED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static float convertScalingTypeToVisibleFraction(ScalingType scalingType) {
        int i = C71511.$SwitchMap$org$webrtc$RendererCommon$ScalingType[scalingType.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    return BALANCED_VISIBLE_FRACTION;
                }
                throw new IllegalArgumentException();
            }
            return BitmapDescriptorFactory.HUE_RED;
        }
        return 1.0f;
    }

    public static Point getDisplaySize(float f, float f2, int i, int i2) {
        if (f == BitmapDescriptorFactory.HUE_RED || f2 == BitmapDescriptorFactory.HUE_RED) {
            return new Point(i, i2);
        }
        return new Point(Math.min(i, Math.round((i2 / f) * f2)), Math.min(i2, Math.round((i / f) / f2)));
    }
}
