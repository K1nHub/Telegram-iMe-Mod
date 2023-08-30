package com.google.android.exoplayer2.effect;

import android.content.Context;
import com.google.android.exoplayer2.util.FrameProcessingException;
import com.google.android.exoplayer2.util.GlUtil;
/* loaded from: classes.dex */
public interface ColorLut extends GlEffect {
    int getLength(long j);

    int getLutTextureId(long j);

    void release() throws GlUtil.GlException;

    @Override // com.google.android.exoplayer2.effect.GlEffect
    /* bridge */ /* synthetic */ GlTextureProcessor toGlTextureProcessor(Context context, boolean z) throws FrameProcessingException;

    @Override // com.google.android.exoplayer2.effect.GlEffect
    SingleFrameGlTextureProcessor toGlTextureProcessor(Context context, boolean z) throws FrameProcessingException;

    /* renamed from: com.google.android.exoplayer2.effect.ColorLut$-CC  reason: invalid class name */
    /* loaded from: classes.dex */
    public final /* synthetic */ class CC {
        /* renamed from: $default$toGlTextureProcessor  reason: collision with other method in class */
        public static SingleFrameGlTextureProcessor m1004$default$toGlTextureProcessor(ColorLut _this, Context context, boolean z) throws FrameProcessingException {
            return new ColorLutProcessor(context, _this, z);
        }
    }
}
