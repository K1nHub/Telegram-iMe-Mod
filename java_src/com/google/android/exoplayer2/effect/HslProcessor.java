package com.google.android.exoplayer2.effect;

import android.content.Context;
import android.opengl.GLES20;
import android.util.Pair;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.FrameProcessingException;
import com.google.android.exoplayer2.util.GlProgram;
import com.google.android.exoplayer2.util.GlUtil;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class HslProcessor extends SingleFrameGlTextureProcessor {
    private static final String FRAGMENT_SHADER_PATH = "shaders/fragment_shader_hsl_es2.glsl";
    private static final String VERTEX_SHADER_PATH = "shaders/vertex_shader_transformation_es2.glsl";
    private final GlProgram glProgram;

    public HslProcessor(Context context, HslAdjustment hslAdjustment, boolean z) throws FrameProcessingException {
        super(z);
        Assertions.checkArgument(!z, "HDR is not yet supported.");
        try {
            GlProgram glProgram = new GlProgram(context, VERTEX_SHADER_PATH, FRAGMENT_SHADER_PATH);
            this.glProgram = glProgram;
            glProgram.setBufferAttribute("aFramePosition", GlUtil.getNormalizedCoordinateBounds(), 4);
            float[] create4x4IdentityMatrix = GlUtil.create4x4IdentityMatrix();
            glProgram.setFloatsUniform("uTransformationMatrix", create4x4IdentityMatrix);
            glProgram.setFloatsUniform("uTexTransformationMatrix", create4x4IdentityMatrix);
            glProgram.setFloatUniform("uHueAdjustmentDegrees", hslAdjustment.hueAdjustmentDegrees / 360.0f);
            glProgram.setFloatUniform("uSaturationAdjustment", hslAdjustment.saturationAdjustment / 100.0f);
            glProgram.setFloatUniform("uLightnessAdjustment", hslAdjustment.lightnessAdjustment / 100.0f);
        } catch (GlUtil.GlException | IOException e) {
            throw new FrameProcessingException(e);
        }
    }

    @Override // com.google.android.exoplayer2.effect.SingleFrameGlTextureProcessor
    public Pair<Integer, Integer> configure(int i, int i2) {
        return Pair.create(Integer.valueOf(i), Integer.valueOf(i2));
    }

    @Override // com.google.android.exoplayer2.effect.SingleFrameGlTextureProcessor
    public void drawFrame(int i, long j) throws FrameProcessingException {
        try {
            this.glProgram.use();
            this.glProgram.setSamplerTexIdUniform("uTexSampler", i, 0);
            this.glProgram.bindAttributesAndUniforms();
            GLES20.glDrawArrays(5, 0, 4);
        } catch (GlUtil.GlException e) {
            throw new FrameProcessingException(e, j);
        }
    }
}
