package com.otaliastudios.opengl.surface;

import android.opengl.EGL14;
import android.opengl.EGLSurface;
import com.otaliastudios.opengl.core.EglCore;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: EglSurface.kt */
/* loaded from: classes3.dex */
public abstract class EglSurface {
    private EglCore eglCore;
    private EGLSurface eglSurface;

    static {
        new Companion(null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public EglSurface(EglCore eglCore, EGLSurface eglSurface) {
        Intrinsics.checkParameterIsNotNull(eglCore, "eglCore");
        Intrinsics.checkParameterIsNotNull(eglSurface, "eglSurface");
        this.eglCore = eglCore;
        this.eglSurface = eglSurface;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final EglCore getEglCore() {
        return this.eglCore;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final EGLSurface getEglSurface() {
        return this.eglSurface;
    }

    public void release() {
        this.eglCore.releaseSurface$egloo_release(this.eglSurface);
        EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
        Intrinsics.checkExpressionValueIsNotNull(eGLSurface, "EGL14.EGL_NO_SURFACE");
        this.eglSurface = eGLSurface;
    }

    public final void makeCurrent() {
        this.eglCore.makeSurfaceCurrent$egloo_release(this.eglSurface);
    }

    public final void setPresentationTime(long j) {
        this.eglCore.setSurfacePresentationTime$egloo_release(this.eglSurface, j);
    }

    /* compiled from: EglSurface.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }
}
