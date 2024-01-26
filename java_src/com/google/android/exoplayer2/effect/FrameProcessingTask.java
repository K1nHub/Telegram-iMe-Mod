package com.google.android.exoplayer2.effect;

import com.google.android.exoplayer2.util.FrameProcessingException;
import com.google.android.exoplayer2.util.GlUtil;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public interface FrameProcessingTask {
    void run() throws FrameProcessingException, GlUtil.GlException;
}
