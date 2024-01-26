package com.google.android.exoplayer2.effect;

import android.graphics.Matrix;
import android.util.Pair;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.common.collect.ImmutableList;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class MatrixUtils {
    private static final float[][] NDC_CUBE = {new float[]{1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f}, new float[]{-1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f}, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED, 1.0f}, new float[]{BitmapDescriptorFactory.HUE_RED, -1.0f, BitmapDescriptorFactory.HUE_RED, 1.0f}, new float[]{BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f, 1.0f}, new float[]{BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, -1.0f, 1.0f}};

    public static float[] getGlMatrixArray(Matrix matrix) {
        float[] fArr = new float[9];
        matrix.getValues(fArr);
        float[] matrix4x4Array = getMatrix4x4Array(fArr);
        float[] fArr2 = new float[16];
        android.opengl.Matrix.transposeM(fArr2, 0, matrix4x4Array, 0);
        return fArr2;
    }

    private static float[] getMatrix4x4Array(float[] fArr) {
        float[] fArr2 = new float[16];
        fArr2[10] = 1.0f;
        int i = 0;
        while (i < 3) {
            int i2 = 0;
            while (i2 < 3) {
                fArr2[((i == 2 ? 3 : i) * 4) + (i2 == 2 ? 3 : i2)] = fArr[(i * 3) + i2];
                i2++;
            }
            i++;
        }
        return fArr2;
    }

    public static ImmutableList<float[]> clipConvexPolygonToNdcRange(ImmutableList<float[]> immutableList) {
        Assertions.checkArgument(immutableList.size() >= 3, "A polygon must have at least 3 vertices.");
        ImmutableList.Builder addAll = new ImmutableList.Builder().addAll((Iterable) immutableList);
        float[][] fArr = NDC_CUBE;
        int length = fArr.length;
        int i = 0;
        while (i < length) {
            float[] fArr2 = fArr[i];
            ImmutableList build = addAll.build();
            ImmutableList.Builder builder = new ImmutableList.Builder();
            for (int i2 = 0; i2 < build.size(); i2++) {
                float[] fArr3 = (float[]) build.get(i2);
                float[] fArr4 = (float[]) build.get(((build.size() + i2) - 1) % build.size());
                if (isInsideClippingHalfSpace(fArr3, fArr2)) {
                    if (!isInsideClippingHalfSpace(fArr4, fArr2)) {
                        float[] computeIntersectionPoint = computeIntersectionPoint(fArr2, fArr2, fArr4, fArr3);
                        if (!Arrays.equals(fArr3, computeIntersectionPoint)) {
                            builder.add((ImmutableList.Builder) computeIntersectionPoint);
                        }
                    }
                    builder.add((ImmutableList.Builder) fArr3);
                } else if (isInsideClippingHalfSpace(fArr4, fArr2)) {
                    float[] computeIntersectionPoint2 = computeIntersectionPoint(fArr2, fArr2, fArr4, fArr3);
                    if (!Arrays.equals(fArr4, computeIntersectionPoint2)) {
                        builder.add((ImmutableList.Builder) computeIntersectionPoint2);
                    }
                }
            }
            i++;
            addAll = builder;
        }
        return addAll.build();
    }

    private static boolean isInsideClippingHalfSpace(float[] fArr, float[] fArr2) {
        Assertions.checkArgument(fArr2.length == 4, "Expecting 4 plane parameters");
        return ((fArr2[0] * fArr[0]) + (fArr2[1] * fArr[1])) + (fArr2[2] * fArr[2]) <= fArr2[3];
    }

    private static float[] computeIntersectionPoint(float[] fArr, float[] fArr2, float[] fArr3, float[] fArr4) {
        Assertions.checkArgument(fArr2.length == 4, "Expecting 4 plane parameters");
        float f = ((((fArr[0] - fArr3[0]) * fArr2[0]) + ((fArr[1] - fArr3[1]) * fArr2[1])) + ((fArr[2] - fArr3[2]) * fArr2[2])) / ((((fArr4[0] - fArr3[0]) * fArr2[0]) + ((fArr4[1] - fArr3[1]) * fArr2[1])) + ((fArr4[2] - fArr3[2]) * fArr2[2]));
        return new float[]{fArr3[0] + ((fArr4[0] - fArr3[0]) * f), fArr3[1] + ((fArr4[1] - fArr3[1]) * f), fArr3[2] + ((fArr4[2] - fArr3[2]) * f), 1.0f};
    }

    public static ImmutableList<float[]> transformPoints(float[] fArr, ImmutableList<float[]> immutableList) {
        ImmutableList.Builder builder = new ImmutableList.Builder();
        for (int i = 0; i < immutableList.size(); i++) {
            android.opengl.Matrix.multiplyMV(r3, 0, fArr, 0, immutableList.get(i), 0);
            float[] fArr2 = {fArr2[0] / fArr2[3], fArr2[1] / fArr2[3], fArr2[2] / fArr2[3], 1.0f};
            builder.add((ImmutableList.Builder) fArr2);
        }
        return builder.build();
    }

    public static Pair<Integer, Integer> configureAndGetOutputSize(int i, int i2, ImmutableList<GlMatrixTransformation> immutableList) {
        Assertions.checkArgument(i > 0, "inputWidth must be positive");
        Assertions.checkArgument(i2 > 0, "inputHeight must be positive");
        Pair<Integer, Integer> create = Pair.create(Integer.valueOf(i), Integer.valueOf(i2));
        for (int i3 = 0; i3 < immutableList.size(); i3++) {
            create = immutableList.get(i3).configure(((Integer) create.first).intValue(), ((Integer) create.second).intValue());
        }
        return create;
    }

    private MatrixUtils() {
    }
}
