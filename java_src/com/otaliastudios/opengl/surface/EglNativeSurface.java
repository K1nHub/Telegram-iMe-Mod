package com.otaliastudios.opengl.surface;

import com.otaliastudios.opengl.core.EglCore;
import com.otaliastudios.opengl.internal.EglKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: EglSurface.kt */
/* loaded from: classes6.dex */
public class EglNativeSurface {
    private EglCore eglCore;
    private com.otaliastudios.opengl.internal.EglSurface eglSurface;

    public EglNativeSurface(EglCore eglCore, com.otaliastudios.opengl.internal.EglSurface eglSurface) {
        Intrinsics.checkNotNullParameter(eglCore, "eglCore");
        Intrinsics.checkNotNullParameter(eglSurface, "eglSurface");
        this.eglCore = eglCore;
        this.eglSurface = eglSurface;
    }

    public final EglCore getEglCore$library_release() {
        return this.eglCore;
    }

    public final com.otaliastudios.opengl.internal.EglSurface getEglSurface$library_release() {
        return this.eglSurface;
    }

    public void release() {
        this.eglCore.releaseSurface$library_release(this.eglSurface);
        this.eglSurface = EglKt.getEGL_NO_SURFACE();
    }

    public final void makeCurrent() {
        this.eglCore.makeSurfaceCurrent$library_release(this.eglSurface);
    }

    public final void setPresentationTime(long j) {
        this.eglCore.setSurfacePresentationTime$library_release(this.eglSurface, j);
    }
}
