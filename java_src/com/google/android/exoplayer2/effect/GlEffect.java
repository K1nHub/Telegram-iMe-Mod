package com.google.android.exoplayer2.effect;

import android.content.Context;
import com.google.android.exoplayer2.util.Effect;
import com.google.android.exoplayer2.util.FrameProcessingException;
/* loaded from: classes.dex */
public interface GlEffect extends Effect {
    GlTextureProcessor toGlTextureProcessor(Context context, boolean z) throws FrameProcessingException;
}
