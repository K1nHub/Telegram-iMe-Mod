package com.google.android.exoplayer2.effect;

import android.content.Context;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.FrameProcessingException;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.common.collect.ImmutableList;
/* loaded from: classes.dex */
public class RgbFilter implements RgbMatrix {
    private static final int COLOR_FILTER_GRAYSCALE_INDEX = 1;
    private static final int COLOR_FILTER_INVERTED_INDEX = 2;
    private final int colorFilter;
    private Boolean useHdr;
    private static final float[] FILTER_MATRIX_GRAYSCALE_SDR = {0.2126f, 0.2126f, 0.2126f, BitmapDescriptorFactory.HUE_RED, 0.7152f, 0.7152f, 0.7152f, BitmapDescriptorFactory.HUE_RED, 0.0722f, 0.0722f, 0.0722f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f};
    private static final float[] FILTER_MATRIX_GRAYSCALE_HDR = {0.2627f, 0.2627f, 0.2627f, BitmapDescriptorFactory.HUE_RED, 0.678f, 0.678f, 0.678f, BitmapDescriptorFactory.HUE_RED, 0.0593f, 0.0593f, 0.0593f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f};
    private static final float[] FILTER_MATRIX_INVERTED = {-1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, -1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, -1.0f, BitmapDescriptorFactory.HUE_RED, 1.0f, 1.0f, 1.0f, 1.0f};

    public static RgbFilter createGrayscaleFilter() {
        return new RgbFilter(1);
    }

    public static RgbFilter createInvertedFilter() {
        return new RgbFilter(2);
    }

    private RgbFilter(int i) {
        this.colorFilter = i;
    }

    private void checkForConsistentHdrSetting(boolean z) {
        Boolean bool = this.useHdr;
        if (bool == null) {
            this.useHdr = Boolean.valueOf(z);
        } else {
            Assertions.checkState(bool.booleanValue() == z, "Changing HDR setting is not supported.");
        }
    }

    @Override // com.google.android.exoplayer2.effect.RgbMatrix
    public float[] getMatrix(long j, boolean z) {
        checkForConsistentHdrSetting(z);
        int i = this.colorFilter;
        if (i == 1) {
            return z ? FILTER_MATRIX_GRAYSCALE_HDR : FILTER_MATRIX_GRAYSCALE_SDR;
        } else if (i == 2) {
            return FILTER_MATRIX_INVERTED;
        } else {
            throw new IllegalStateException("Invalid color filter " + this.colorFilter);
        }
    }

    @Override // com.google.android.exoplayer2.effect.RgbMatrix, com.google.android.exoplayer2.effect.GlEffect
    public SingleFrameGlTextureProcessor toGlTextureProcessor(Context context, boolean z) throws FrameProcessingException {
        SingleFrameGlTextureProcessor create;
        checkForConsistentHdrSetting(z);
        create = MatrixTextureProcessor.create(context, ImmutableList.m1054of(), ImmutableList.m1053of(this), z);
        return create;
    }
}
