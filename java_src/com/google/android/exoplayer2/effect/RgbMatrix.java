package com.google.android.exoplayer2.effect;

import android.content.Context;
import com.google.android.exoplayer2.util.FrameProcessingException;
/* loaded from: classes.dex */
public interface RgbMatrix extends GlEffect {
    float[] getMatrix(long j, boolean z);

    @Override // com.google.android.exoplayer2.effect.GlEffect
    /* bridge */ /* synthetic */ GlTextureProcessor toGlTextureProcessor(Context context, boolean z) throws FrameProcessingException;

    @Override // com.google.android.exoplayer2.effect.GlEffect
    SingleFrameGlTextureProcessor toGlTextureProcessor(Context context, boolean z) throws FrameProcessingException;

    /* renamed from: com.google.android.exoplayer2.effect.RgbMatrix$-CC  reason: invalid class name */
    /* loaded from: classes.dex */
    public final /* synthetic */ class CC {
    }
}
