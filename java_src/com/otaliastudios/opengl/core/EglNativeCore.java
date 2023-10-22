package com.otaliastudios.opengl.core;

import android.opengl.EGL14;
import android.opengl.EGLExt;
import android.util.Log;
import com.otaliastudios.opengl.internal.EglConfig;
import com.otaliastudios.opengl.internal.EglContext;
import com.otaliastudios.opengl.internal.EglDisplay;
import com.otaliastudios.opengl.internal.EglKt;
import com.otaliastudios.opengl.internal.EglSurface;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: EglNativeCore.kt */
/* loaded from: classes4.dex */
public class EglNativeCore {
    private EglConfig eglConfig;
    private EglContext eglContext;
    private EglDisplay eglDisplay;

    static {
        new Companion(null);
    }

    public EglNativeCore(EglContext sharedContext, int i) {
        EglConfig config$library_release;
        Intrinsics.checkNotNullParameter(sharedContext, "sharedContext");
        this.eglDisplay = EglKt.getEGL_NO_DISPLAY();
        this.eglContext = EglKt.getEGL_NO_CONTEXT();
        EglDisplay eglDisplay = new EglDisplay(EGL14.eglGetDisplay(0));
        this.eglDisplay = eglDisplay;
        if (eglDisplay == EglKt.getEGL_NO_DISPLAY()) {
            throw new RuntimeException("unable to get EGL14 display");
        }
        if (!EGL14.eglInitialize(this.eglDisplay.getNative(), new int[1], 0, new int[1], 0)) {
            throw new RuntimeException("unable to initialize EGL14");
        }
        EglNativeConfigChooser eglNativeConfigChooser = new EglNativeConfigChooser();
        boolean z = (i & 1) != 0;
        if (((i & 2) != 0) && (config$library_release = eglNativeConfigChooser.getConfig$library_release(this.eglDisplay, 3, z)) != null) {
            EglContext eglContext = new EglContext(EGL14.eglCreateContext(this.eglDisplay.getNative(), config$library_release.getNative(), sharedContext.getNative(), new int[]{EglKt.getEGL_CONTEXT_CLIENT_VERSION(), 3, EglKt.getEGL_NONE()}, 0));
            try {
                Egloo.checkEglError("eglCreateContext (3)");
                this.eglConfig = config$library_release;
                this.eglContext = eglContext;
            } catch (Exception unused) {
            }
        }
        if (this.eglContext == EglKt.getEGL_NO_CONTEXT()) {
            EglConfig config$library_release2 = eglNativeConfigChooser.getConfig$library_release(this.eglDisplay, 2, z);
            if (config$library_release2 != null) {
                EglContext eglContext2 = new EglContext(EGL14.eglCreateContext(this.eglDisplay.getNative(), config$library_release2.getNative(), sharedContext.getNative(), new int[]{EglKt.getEGL_CONTEXT_CLIENT_VERSION(), 2, EglKt.getEGL_NONE()}, 0));
                Egloo.checkEglError("eglCreateContext (2)");
                this.eglConfig = config$library_release2;
                this.eglContext = eglContext2;
                return;
            }
            throw new RuntimeException("Unable to find a suitable EGLConfig");
        }
    }

    public void release$library_release() {
        if (this.eglDisplay != EglKt.getEGL_NO_DISPLAY()) {
            EGL14.eglMakeCurrent(this.eglDisplay.getNative(), EglKt.getEGL_NO_SURFACE().getNative(), EglKt.getEGL_NO_SURFACE().getNative(), EglKt.getEGL_NO_CONTEXT().getNative());
            EGL14.eglDestroyContext(this.eglDisplay.getNative(), this.eglContext.getNative());
            EGL14.eglReleaseThread();
            EGL14.eglTerminate(this.eglDisplay.getNative());
        }
        this.eglDisplay = EglKt.getEGL_NO_DISPLAY();
        this.eglContext = EglKt.getEGL_NO_CONTEXT();
        this.eglConfig = null;
    }

    public final void releaseSurface$library_release(EglSurface eglSurface) {
        Intrinsics.checkNotNullParameter(eglSurface, "eglSurface");
        EGL14.eglDestroySurface(this.eglDisplay.getNative(), eglSurface.getNative());
    }

    public final EglSurface createWindowSurface$library_release(Object surface) {
        Intrinsics.checkNotNullParameter(surface, "surface");
        int[] iArr = {EglKt.getEGL_NONE()};
        EglDisplay eglDisplay = this.eglDisplay;
        EglConfig eglConfig = this.eglConfig;
        Intrinsics.checkNotNull(eglConfig);
        EglSurface eglSurface = new EglSurface(EGL14.eglCreateWindowSurface(eglDisplay.getNative(), eglConfig.getNative(), surface, iArr, 0));
        Egloo.checkEglError("eglCreateWindowSurface");
        if (eglSurface != EglKt.getEGL_NO_SURFACE()) {
            return eglSurface;
        }
        throw new RuntimeException("surface was null");
    }

    public final void makeSurfaceCurrent$library_release(EglSurface eglSurface) {
        Intrinsics.checkNotNullParameter(eglSurface, "eglSurface");
        if (this.eglDisplay == EglKt.getEGL_NO_DISPLAY()) {
            Log.v("EglCore", "NOTE: makeSurfaceCurrent w/o display");
        }
        if (!EGL14.eglMakeCurrent(this.eglDisplay.getNative(), eglSurface.getNative(), eglSurface.getNative(), this.eglContext.getNative())) {
            throw new RuntimeException("eglMakeCurrent failed");
        }
    }

    public final boolean swapSurfaceBuffers$library_release(EglSurface eglSurface) {
        Intrinsics.checkNotNullParameter(eglSurface, "eglSurface");
        return EGL14.eglSwapBuffers(this.eglDisplay.getNative(), eglSurface.getNative());
    }

    public final void setSurfacePresentationTime$library_release(EglSurface eglSurface, long j) {
        Intrinsics.checkNotNullParameter(eglSurface, "eglSurface");
        EGLExt.eglPresentationTimeANDROID(this.eglDisplay.getNative(), eglSurface.getNative(), j);
    }

    /* compiled from: EglNativeCore.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
