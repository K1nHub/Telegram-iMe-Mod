package com.google.android.exoplayer2.effect;

import com.google.android.exoplayer2.effect.GlTextureProcessor;
import com.google.android.exoplayer2.util.FrameProcessingException;
/* loaded from: classes.dex */
public final /* synthetic */ class SingleFrameGlTextureProcessor$$ExternalSyntheticLambda0 implements GlTextureProcessor.ErrorListener {
    public static final /* synthetic */ SingleFrameGlTextureProcessor$$ExternalSyntheticLambda0 INSTANCE = new SingleFrameGlTextureProcessor$$ExternalSyntheticLambda0();

    private /* synthetic */ SingleFrameGlTextureProcessor$$ExternalSyntheticLambda0() {
    }

    @Override // com.google.android.exoplayer2.effect.GlTextureProcessor.ErrorListener
    public final void onFrameProcessingError(FrameProcessingException frameProcessingException) {
        SingleFrameGlTextureProcessor.lambda$new$0(frameProcessingException);
    }
}
