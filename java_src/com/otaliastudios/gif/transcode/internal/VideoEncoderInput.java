package com.otaliastudios.gif.transcode.internal;

import android.opengl.EGL14;
import android.view.Surface;
import com.otaliastudios.opengl.core.EglCore;
import com.otaliastudios.opengl.surface.EglWindowSurface;
/* loaded from: classes3.dex */
public class VideoEncoderInput {
    private EglCore mEglCore = new EglCore(EGL14.EGL_NO_CONTEXT, 1);
    private EglWindowSurface mEglSurface;

    public VideoEncoderInput(Surface surface) {
        EglWindowSurface eglWindowSurface = new EglWindowSurface(this.mEglCore, surface, true);
        this.mEglSurface = eglWindowSurface;
        eglWindowSurface.makeCurrent();
    }

    public void onFrame(long j) {
        this.mEglSurface.setPresentationTime(j * 1000);
        this.mEglSurface.swapBuffers();
    }

    public void release() {
        this.mEglSurface.release();
        this.mEglCore.release();
    }
}
