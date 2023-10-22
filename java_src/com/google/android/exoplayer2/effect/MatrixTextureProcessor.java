package com.google.android.exoplayer2.effect;

import android.content.Context;
import android.opengl.GLES20;
import android.opengl.Matrix;
import android.util.Pair;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.FrameProcessingException;
import com.google.android.exoplayer2.util.GlProgram;
import com.google.android.exoplayer2.util.GlUtil;
import com.google.android.exoplayer2.video.ColorInfo;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.common.collect.ImmutableList;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class MatrixTextureProcessor extends SingleFrameGlTextureProcessor implements ExternalTextureProcessor {
    private static final String FRAGMENT_SHADER_OETF_ES3_PATH = "shaders/fragment_shader_oetf_es3.glsl";
    private static final String FRAGMENT_SHADER_TRANSFORMATION_EXTERNAL_YUV_ES3_PATH = "shaders/fragment_shader_transformation_external_yuv_es3.glsl";
    private static final String FRAGMENT_SHADER_TRANSFORMATION_PATH = "shaders/fragment_shader_transformation_es2.glsl";
    private static final String FRAGMENT_SHADER_TRANSFORMATION_SDR_EXTERNAL_PATH = "shaders/fragment_shader_transformation_sdr_external_es2.glsl";
    private static final String FRAGMENT_SHADER_TRANSFORMATION_SDR_OETF_ES2_PATH = "shaders/fragment_shader_transformation_sdr_oetf_es2.glsl";
    private static final String VERTEX_SHADER_TRANSFORMATION_ES3_PATH = "shaders/vertex_shader_transformation_es3.glsl";
    private static final String VERTEX_SHADER_TRANSFORMATION_PATH = "shaders/vertex_shader_transformation_es2.glsl";
    private final float[] compositeRgbMatrixArray;
    private final float[] compositeTransformationMatrixArray;
    private final GlProgram glProgram;
    private final ImmutableList<GlMatrixTransformation> matrixTransformations;
    private final ImmutableList<RgbMatrix> rgbMatrices;
    private final float[][] rgbMatrixCache;
    private final float[] tempResultMatrix;
    private final float[][] transformationMatrixCache;
    private final boolean useHdr;
    private ImmutableList<float[]> visiblePolygon;
    private static final ImmutableList<float[]> NDC_SQUARE = ImmutableList.m1050of(new float[]{-1.0f, -1.0f, BitmapDescriptorFactory.HUE_RED, 1.0f}, new float[]{-1.0f, 1.0f, BitmapDescriptorFactory.HUE_RED, 1.0f}, new float[]{1.0f, 1.0f, BitmapDescriptorFactory.HUE_RED, 1.0f}, new float[]{1.0f, -1.0f, BitmapDescriptorFactory.HUE_RED, 1.0f});
    private static final float[] BT2020_FULL_RANGE_YUV_TO_RGB_COLOR_TRANSFORM_MATRIX = {1.0f, 1.0f, 1.0f, BitmapDescriptorFactory.HUE_RED, -0.1646f, 1.8814f, 1.4746f, -0.5714f, BitmapDescriptorFactory.HUE_RED};
    private static final float[] BT2020_LIMITED_RANGE_YUV_TO_RGB_COLOR_TRANSFORM_MATRIX = {1.1689f, 1.1689f, 1.1689f, BitmapDescriptorFactory.HUE_RED, -0.1881f, 2.1502f, 1.6853f, -0.653f, BitmapDescriptorFactory.HUE_RED};

    public static MatrixTextureProcessor create(Context context, List<GlMatrixTransformation> list, List<RgbMatrix> list2, boolean z) throws FrameProcessingException {
        return new MatrixTextureProcessor(createGlProgram(context, VERTEX_SHADER_TRANSFORMATION_PATH, FRAGMENT_SHADER_TRANSFORMATION_PATH), ImmutableList.copyOf((Collection) list), ImmutableList.copyOf((Collection) list2), z);
    }

    public static MatrixTextureProcessor createWithExternalSamplerApplyingEotf(Context context, List<GlMatrixTransformation> list, List<RgbMatrix> list2, ColorInfo colorInfo) throws FrameProcessingException {
        float[] fArr;
        boolean isTransferHdr = ColorInfo.isTransferHdr(colorInfo);
        GlProgram createGlProgram = createGlProgram(context, isTransferHdr ? VERTEX_SHADER_TRANSFORMATION_ES3_PATH : VERTEX_SHADER_TRANSFORMATION_PATH, isTransferHdr ? FRAGMENT_SHADER_TRANSFORMATION_EXTERNAL_YUV_ES3_PATH : FRAGMENT_SHADER_TRANSFORMATION_SDR_EXTERNAL_PATH);
        boolean z = false;
        if (isTransferHdr) {
            if (!GlUtil.isYuvTargetExtensionSupported()) {
                throw new FrameProcessingException("The EXT_YUV_target extension is required for HDR editing input.");
            }
            if (colorInfo.colorRange == 1) {
                fArr = BT2020_FULL_RANGE_YUV_TO_RGB_COLOR_TRANSFORM_MATRIX;
            } else {
                fArr = BT2020_LIMITED_RANGE_YUV_TO_RGB_COLOR_TRANSFORM_MATRIX;
            }
            createGlProgram.setFloatsUniform("uYuvToRgbColorTransform", fArr);
            int i = colorInfo.colorTransfer;
            if (i == 7 || i == 6) {
                z = true;
            }
            Assertions.checkArgument(z);
            createGlProgram.setIntUniform("uEotfColorTransfer", i);
        } else {
            createGlProgram.setIntUniform("uApplyOetf", 0);
        }
        return new MatrixTextureProcessor(createGlProgram, ImmutableList.copyOf((Collection) list), ImmutableList.copyOf((Collection) list2), isTransferHdr);
    }

    public static MatrixTextureProcessor createApplyingOetf(Context context, List<GlMatrixTransformation> list, List<RgbMatrix> list2, ColorInfo colorInfo) throws FrameProcessingException {
        boolean isTransferHdr = ColorInfo.isTransferHdr(colorInfo);
        GlProgram createGlProgram = createGlProgram(context, isTransferHdr ? VERTEX_SHADER_TRANSFORMATION_ES3_PATH : VERTEX_SHADER_TRANSFORMATION_PATH, isTransferHdr ? FRAGMENT_SHADER_OETF_ES3_PATH : FRAGMENT_SHADER_TRANSFORMATION_SDR_OETF_ES2_PATH);
        if (isTransferHdr) {
            int i = colorInfo.colorTransfer;
            Assertions.checkArgument(i == 7 || i == 6);
            createGlProgram.setIntUniform("uOetfColorTransfer", i);
        }
        return new MatrixTextureProcessor(createGlProgram, ImmutableList.copyOf((Collection) list), ImmutableList.copyOf((Collection) list2), isTransferHdr);
    }

    public static MatrixTextureProcessor createWithExternalSamplerApplyingEotfThenOetf(Context context, List<GlMatrixTransformation> list, List<RgbMatrix> list2, ColorInfo colorInfo) throws FrameProcessingException {
        float[] fArr;
        boolean isTransferHdr = ColorInfo.isTransferHdr(colorInfo);
        GlProgram createGlProgram = createGlProgram(context, isTransferHdr ? VERTEX_SHADER_TRANSFORMATION_ES3_PATH : VERTEX_SHADER_TRANSFORMATION_PATH, isTransferHdr ? FRAGMENT_SHADER_TRANSFORMATION_EXTERNAL_YUV_ES3_PATH : FRAGMENT_SHADER_TRANSFORMATION_SDR_EXTERNAL_PATH);
        if (isTransferHdr) {
            if (!GlUtil.isYuvTargetExtensionSupported()) {
                throw new FrameProcessingException("The EXT_YUV_target extension is required for HDR editing input.");
            }
            if (colorInfo.colorRange == 1) {
                fArr = BT2020_FULL_RANGE_YUV_TO_RGB_COLOR_TRANSFORM_MATRIX;
            } else {
                fArr = BT2020_LIMITED_RANGE_YUV_TO_RGB_COLOR_TRANSFORM_MATRIX;
            }
            createGlProgram.setFloatsUniform("uYuvToRgbColorTransform", fArr);
            createGlProgram.setIntUniform("uEotfColorTransfer", -1);
        } else {
            createGlProgram.setIntUniform("uApplyOetf", 1);
        }
        return new MatrixTextureProcessor(createGlProgram, ImmutableList.copyOf((Collection) list), ImmutableList.copyOf((Collection) list2), isTransferHdr);
    }

    private MatrixTextureProcessor(GlProgram glProgram, ImmutableList<GlMatrixTransformation> immutableList, ImmutableList<RgbMatrix> immutableList2, boolean z) {
        super(z);
        this.glProgram = glProgram;
        this.matrixTransformations = immutableList;
        this.rgbMatrices = immutableList2;
        this.useHdr = z;
        this.transformationMatrixCache = (float[][]) Array.newInstance(float.class, immutableList.size(), 16);
        this.rgbMatrixCache = (float[][]) Array.newInstance(float.class, immutableList2.size(), 16);
        this.compositeTransformationMatrixArray = GlUtil.create4x4IdentityMatrix();
        this.compositeRgbMatrixArray = GlUtil.create4x4IdentityMatrix();
        this.tempResultMatrix = new float[16];
        this.visiblePolygon = NDC_SQUARE;
    }

    private static GlProgram createGlProgram(Context context, String str, String str2) throws FrameProcessingException {
        try {
            GlProgram glProgram = new GlProgram(context, str, str2);
            glProgram.setFloatsUniform("uTexTransformationMatrix", GlUtil.create4x4IdentityMatrix());
            return glProgram;
        } catch (GlUtil.GlException | IOException e) {
            throw new FrameProcessingException(e);
        }
    }

    @Override // com.google.android.exoplayer2.effect.ExternalTextureProcessor
    public void setTextureTransformMatrix(float[] fArr) {
        this.glProgram.setFloatsUniform("uTexTransformationMatrix", fArr);
    }

    @Override // com.google.android.exoplayer2.effect.SingleFrameGlTextureProcessor
    public Pair<Integer, Integer> configure(int i, int i2) {
        return MatrixUtils.configureAndGetOutputSize(i, i2, this.matrixTransformations);
    }

    @Override // com.google.android.exoplayer2.effect.SingleFrameGlTextureProcessor
    public void drawFrame(int i, long j) throws FrameProcessingException {
        updateCompositeRgbaMatrixArray(j);
        updateCompositeTransformationMatrixAndVisiblePolygon(j);
        if (this.visiblePolygon.size() < 3) {
            return;
        }
        try {
            this.glProgram.use();
            this.glProgram.setSamplerTexIdUniform("uTexSampler", i, 0);
            this.glProgram.setFloatsUniform("uTransformationMatrix", this.compositeTransformationMatrixArray);
            this.glProgram.setFloatsUniform("uRgbMatrix", this.compositeRgbMatrixArray);
            this.glProgram.setBufferAttribute("aFramePosition", GlUtil.createVertexBuffer(this.visiblePolygon), 4);
            this.glProgram.bindAttributesAndUniforms();
            GLES20.glDrawArrays(6, 0, this.visiblePolygon.size());
            GlUtil.checkGlError();
        } catch (GlUtil.GlException e) {
            throw new FrameProcessingException(e, j);
        }
    }

    @Override // com.google.android.exoplayer2.effect.SingleFrameGlTextureProcessor, com.google.android.exoplayer2.effect.GlTextureProcessor
    public void release() throws FrameProcessingException {
        super.release();
        try {
            this.glProgram.delete();
        } catch (GlUtil.GlException e) {
            throw new FrameProcessingException(e);
        }
    }

    private void updateCompositeTransformationMatrixAndVisiblePolygon(long j) {
        float[][] fArr;
        float[][] fArr2 = (float[][]) Array.newInstance(float.class, this.matrixTransformations.size(), 16);
        for (int i = 0; i < this.matrixTransformations.size(); i++) {
            fArr2[i] = this.matrixTransformations.get(i).getGlMatrixArray(j);
        }
        if (updateMatrixCache(this.transformationMatrixCache, fArr2)) {
            GlUtil.setToIdentity(this.compositeTransformationMatrixArray);
            this.visiblePolygon = NDC_SQUARE;
            for (float[] fArr3 : this.transformationMatrixCache) {
                Matrix.multiplyMM(this.tempResultMatrix, 0, fArr3, 0, this.compositeTransformationMatrixArray, 0);
                float[] fArr4 = this.tempResultMatrix;
                System.arraycopy(fArr4, 0, this.compositeTransformationMatrixArray, 0, fArr4.length);
                ImmutableList<float[]> clipConvexPolygonToNdcRange = MatrixUtils.clipConvexPolygonToNdcRange(MatrixUtils.transformPoints(fArr3, this.visiblePolygon));
                this.visiblePolygon = clipConvexPolygonToNdcRange;
                if (clipConvexPolygonToNdcRange.size() < 3) {
                    return;
                }
            }
            Matrix.invertM(this.tempResultMatrix, 0, this.compositeTransformationMatrixArray, 0);
            this.visiblePolygon = MatrixUtils.transformPoints(this.tempResultMatrix, this.visiblePolygon);
        }
    }

    private void updateCompositeRgbaMatrixArray(long j) {
        float[][] fArr = (float[][]) Array.newInstance(float.class, this.rgbMatrices.size(), 16);
        for (int i = 0; i < this.rgbMatrices.size(); i++) {
            fArr[i] = this.rgbMatrices.get(i).getMatrix(j, this.useHdr);
        }
        if (updateMatrixCache(this.rgbMatrixCache, fArr)) {
            for (int i2 = 0; i2 < this.rgbMatrices.size(); i2++) {
                Matrix.multiplyMM(this.tempResultMatrix, 0, this.rgbMatrices.get(i2).getMatrix(j, this.useHdr), 0, this.compositeRgbMatrixArray, 0);
                float[] fArr2 = this.tempResultMatrix;
                System.arraycopy(fArr2, 0, this.compositeRgbMatrixArray, 0, fArr2.length);
            }
        }
    }

    private static boolean updateMatrixCache(float[][] fArr, float[][] fArr2) {
        boolean z = false;
        for (int i = 0; i < fArr.length; i++) {
            float[] fArr3 = fArr[i];
            float[] fArr4 = fArr2[i];
            if (!Arrays.equals(fArr3, fArr4)) {
                Assertions.checkState(fArr4.length == 16, "A 4x4 transformation matrix must have 16 elements");
                System.arraycopy(fArr4, 0, fArr3, 0, fArr4.length);
                z = true;
            }
        }
        return z;
    }
}
