package com.google.android.exoplayer2.effect;

import android.content.Context;
import android.util.Pair;
import com.google.android.exoplayer2.util.FrameProcessingException;
/* loaded from: classes.dex */
public interface GlMatrixTransformation extends GlEffect {
    Pair<Integer, Integer> configure(int i, int i2);

    float[] getGlMatrixArray(long j);

    @Override // com.google.android.exoplayer2.effect.GlEffect
    /* bridge */ /* synthetic */ GlTextureProcessor toGlTextureProcessor(Context context, boolean z) throws FrameProcessingException;

    @Override // com.google.android.exoplayer2.effect.GlEffect
    SingleFrameGlTextureProcessor toGlTextureProcessor(Context context, boolean z) throws FrameProcessingException;

    /* renamed from: com.google.android.exoplayer2.effect.GlMatrixTransformation$-CC  reason: invalid class name */
    /* loaded from: classes.dex */
    public final /* synthetic */ class CC {
    }
}
