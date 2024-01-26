package com.google.android.exoplayer2.effect;

import android.content.Context;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.FrameProcessingException;
/* loaded from: classes.dex */
public class Contrast implements GlEffect {
    public final float contrast;

    public Contrast(float f) {
        Assertions.checkArgument(-1.0f <= f && f <= 1.0f, "Contrast needs to be in the interval [-1, 1].");
        this.contrast = f;
    }

    @Override // com.google.android.exoplayer2.effect.GlEffect
    public SingleFrameGlTextureProcessor toGlTextureProcessor(Context context, boolean z) throws FrameProcessingException {
        return new ContrastProcessor(context, this, z);
    }
}
