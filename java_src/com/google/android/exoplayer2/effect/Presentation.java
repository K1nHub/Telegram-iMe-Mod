package com.google.android.exoplayer2.effect;

import android.content.Context;
import android.graphics.Matrix;
import android.util.Pair;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.common.collect.ImmutableList;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
/* loaded from: classes.dex */
public final class Presentation implements MatrixTransformation {
    private static final float ASPECT_RATIO_UNSET = -1.0f;
    public static final int LAYOUT_SCALE_TO_FIT = 0;
    public static final int LAYOUT_SCALE_TO_FIT_WITH_CROP = 1;
    public static final int LAYOUT_STRETCH_TO_FIT = 2;
    private final int layout;
    private float outputHeight;
    private float outputWidth;
    private float requestedAspectRatio;
    private final int requestedHeightPixels;
    private final int requestedWidthPixels;
    private Matrix transformationMatrix;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface Layout {
    }

    @Override // com.google.android.exoplayer2.effect.MatrixTransformation, com.google.android.exoplayer2.effect.GlMatrixTransformation
    public /* synthetic */ float[] getGlMatrixArray(long j) {
        float[] glMatrixArray;
        glMatrixArray = MatrixUtils.getGlMatrixArray(getMatrix(j));
        return glMatrixArray;
    }

    @Override // com.google.android.exoplayer2.effect.GlMatrixTransformation, com.google.android.exoplayer2.effect.GlEffect
    public /* bridge */ /* synthetic */ GlTextureProcessor toGlTextureProcessor(Context context, boolean z) {
        GlTextureProcessor glTextureProcessor;
        glTextureProcessor = toGlTextureProcessor(context, z);
        return glTextureProcessor;
    }

    @Override // com.google.android.exoplayer2.effect.GlMatrixTransformation, com.google.android.exoplayer2.effect.GlEffect
    public /* synthetic */ SingleFrameGlTextureProcessor toGlTextureProcessor(Context context, boolean z) {
        SingleFrameGlTextureProcessor create;
        create = MatrixTextureProcessor.create(context, ImmutableList.m1056of(this), ImmutableList.m1057of(), z);
        return create;
    }

    private static void checkLayout(int i) {
        boolean z = true;
        if (i != 0 && i != 1 && i != 2) {
            z = false;
        }
        Assertions.checkArgument(z, "invalid layout " + i);
    }

    public static Presentation createForAspectRatio(float f, int i) {
        boolean z = f == -1.0f || f > BitmapDescriptorFactory.HUE_RED;
        Assertions.checkArgument(z, "aspect ratio " + f + " must be positive or unset");
        checkLayout(i);
        return new Presentation(-1, -1, f, i);
    }

    public static Presentation createForHeight(int i) {
        return new Presentation(-1, i, -1.0f, 0);
    }

    public static Presentation createForWidthAndHeight(int i, int i2, int i3) {
        boolean z = i > 0;
        Assertions.checkArgument(z, "width " + i + " must be positive");
        boolean z2 = i2 > 0;
        Assertions.checkArgument(z2, "height " + i2 + " must be positive");
        checkLayout(i3);
        return new Presentation(i, i2, -1.0f, i3);
    }

    private Presentation(int i, int i2, float f, int i3) {
        Assertions.checkArgument(f == -1.0f || i == -1, "width and aspect ratio should not both be set");
        this.requestedWidthPixels = i;
        this.requestedHeightPixels = i2;
        this.requestedAspectRatio = f;
        this.layout = i3;
        this.outputWidth = -1.0f;
        this.outputHeight = -1.0f;
        this.transformationMatrix = new Matrix();
    }

    @Override // com.google.android.exoplayer2.effect.GlMatrixTransformation
    public Pair<Integer, Integer> configure(int i, int i2) {
        int i3;
        Assertions.checkArgument(i > 0, "inputWidth must be positive");
        Assertions.checkArgument(i2 > 0, "inputHeight must be positive");
        this.transformationMatrix = new Matrix();
        this.outputWidth = i;
        this.outputHeight = i2;
        int i4 = this.requestedWidthPixels;
        if (i4 != -1 && (i3 = this.requestedHeightPixels) != -1) {
            this.requestedAspectRatio = i4 / i3;
        }
        if (this.requestedAspectRatio != -1.0f) {
            applyAspectRatio();
        }
        int i5 = this.requestedHeightPixels;
        if (i5 != -1) {
            int i6 = this.requestedWidthPixels;
            if (i6 != -1) {
                this.outputWidth = i6;
            } else {
                this.outputWidth = (i5 * this.outputWidth) / this.outputHeight;
            }
            this.outputHeight = i5;
        }
        return Pair.create(Integer.valueOf(Math.round(this.outputWidth)), Integer.valueOf(Math.round(this.outputHeight)));
    }

    @Override // com.google.android.exoplayer2.effect.MatrixTransformation
    public Matrix getMatrix(long j) {
        return (Matrix) Assertions.checkStateNotNull(this.transformationMatrix, "configure must be called first");
    }

    private void applyAspectRatio() {
        float f = this.outputWidth;
        float f2 = this.outputHeight;
        float f3 = f / f2;
        int i = this.layout;
        if (i == 0) {
            float f4 = this.requestedAspectRatio;
            if (f4 > f3) {
                this.transformationMatrix.setScale(f3 / f4, 1.0f);
                this.outputWidth = this.outputHeight * this.requestedAspectRatio;
                return;
            }
            this.transformationMatrix.setScale(1.0f, f4 / f3);
            this.outputHeight = this.outputWidth / this.requestedAspectRatio;
        } else if (i == 1) {
            float f5 = this.requestedAspectRatio;
            if (f5 > f3) {
                this.transformationMatrix.setScale(1.0f, f5 / f3);
                this.outputHeight = this.outputWidth / this.requestedAspectRatio;
                return;
            }
            this.transformationMatrix.setScale(f3 / f5, 1.0f);
            this.outputWidth = this.outputHeight * this.requestedAspectRatio;
        } else if (i == 2) {
            float f6 = this.requestedAspectRatio;
            if (f6 > f3) {
                this.outputWidth = f2 * f6;
            } else {
                this.outputHeight = f / f6;
            }
        }
    }
}
