package com.otaliastudios.opengl.core;

import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLExt;
import android.opengl.EGLSurface;
import android.util.Log;
import android.view.Surface;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: EglCore.kt */
/* loaded from: classes3.dex */
public final class EglCore {
    private static final String TAG;
    private EGLConfig eglConfig;
    private EGLContext eglContext;
    private EGLDisplay eglDisplay;

    public EglCore() {
        this(null, 0, 3, null);
    }

    public EglCore(EGLContext sharedContext, int i) {
        Intrinsics.checkParameterIsNotNull(sharedContext, "sharedContext");
        this.eglDisplay = EGL14.EGL_NO_DISPLAY;
        this.eglContext = EGL14.EGL_NO_CONTEXT;
        EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
        this.eglDisplay = eglGetDisplay;
        if (eglGetDisplay == EGL14.EGL_NO_DISPLAY) {
            throw new RuntimeException("unable to get EGL14 display");
        }
        int[] iArr = new int[2];
        if (!EGL14.eglInitialize(eglGetDisplay, iArr, 0, iArr, 1)) {
            this.eglDisplay = null;
            throw new RuntimeException("unable to initialize EGL14");
        }
        boolean z = (i & 1) != 0;
        if ((i & 2) != 0) {
            EGLDisplay eGLDisplay = this.eglDisplay;
            if (eGLDisplay == null) {
                Intrinsics.throwNpe();
            }
            EGLConfig config = EglConfigChooser.getConfig(eGLDisplay, 3, z);
            if (config != null) {
                EGLContext eglCreateContext = EGL14.eglCreateContext(this.eglDisplay, config, sharedContext, new int[]{12440, 3, 12344}, 0);
                try {
                    Egloo.checkEglError("eglCreateContext (3)");
                    this.eglConfig = config;
                    this.eglContext = eglCreateContext;
                } catch (Exception unused) {
                }
            }
        }
        if (this.eglContext == EGL14.EGL_NO_CONTEXT) {
            EGLDisplay eGLDisplay2 = this.eglDisplay;
            if (eGLDisplay2 == null) {
                Intrinsics.throwNpe();
            }
            EGLConfig config2 = EglConfigChooser.getConfig(eGLDisplay2, 2, z);
            if (config2 != null) {
                EGLContext eglCreateContext2 = EGL14.eglCreateContext(this.eglDisplay, config2, sharedContext, new int[]{12440, 2, 12344}, 0);
                Egloo.checkEglError("eglCreateContext (2)");
                this.eglConfig = config2;
                this.eglContext = eglCreateContext2;
                return;
            }
            throw new RuntimeException("Unable to find a suitable EGLConfig");
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ EglCore(android.opengl.EGLContext r1, int r2, int r3, kotlin.jvm.internal.DefaultConstructorMarker r4) {
        /*
            r0 = this;
            r4 = r3 & 1
            if (r4 == 0) goto Lb
            android.opengl.EGLContext r1 = android.opengl.EGL14.EGL_NO_CONTEXT
            java.lang.String r4 = "EGL14.EGL_NO_CONTEXT"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r1, r4)
        Lb:
            r3 = r3 & 2
            if (r3 == 0) goto L10
            r2 = 0
        L10:
            r0.<init>(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.otaliastudios.opengl.core.EglCore.<init>(android.opengl.EGLContext, int, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    public final void release() {
        EGLDisplay eGLDisplay = this.eglDisplay;
        if (eGLDisplay != EGL14.EGL_NO_DISPLAY) {
            EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
            EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
            EGL14.eglDestroyContext(this.eglDisplay, this.eglContext);
            EGL14.eglReleaseThread();
            EGL14.eglTerminate(this.eglDisplay);
        }
        this.eglDisplay = EGL14.EGL_NO_DISPLAY;
        this.eglContext = EGL14.EGL_NO_CONTEXT;
        this.eglConfig = null;
    }

    protected final void finalize() {
        if (this.eglDisplay != EGL14.EGL_NO_DISPLAY) {
            Log.e(TAG, "WARNING: EglCore was not explicitly released - state may be leaked");
            release();
        }
    }

    public final void releaseSurface$egloo_release(EGLSurface eglSurface) {
        Intrinsics.checkParameterIsNotNull(eglSurface, "eglSurface");
        EGL14.eglDestroySurface(this.eglDisplay, eglSurface);
    }

    public final EGLSurface createWindowSurface$egloo_release(Object surface) {
        Intrinsics.checkParameterIsNotNull(surface, "surface");
        if (!(surface instanceof Surface) && !(surface instanceof SurfaceTexture)) {
            throw new RuntimeException("invalid surface: " + surface);
        }
        EGLSurface eglCreateWindowSurface = EGL14.eglCreateWindowSurface(this.eglDisplay, this.eglConfig, surface, new int[]{12344}, 0);
        Egloo.checkEglError("eglCreateWindowSurface");
        if (eglCreateWindowSurface != null) {
            return eglCreateWindowSurface;
        }
        throw new RuntimeException("surface was null");
    }

    public final void makeSurfaceCurrent$egloo_release(EGLSurface eglSurface) {
        Intrinsics.checkParameterIsNotNull(eglSurface, "eglSurface");
        if (this.eglDisplay == EGL14.EGL_NO_DISPLAY) {
            Log.d(TAG, "NOTE: makeSurfaceCurrent w/o display");
        }
        if (!EGL14.eglMakeCurrent(this.eglDisplay, eglSurface, eglSurface, this.eglContext)) {
            throw new RuntimeException("eglMakeCurrent failed");
        }
    }

    public final boolean swapSurfaceBuffers$egloo_release(EGLSurface eglSurface) {
        Intrinsics.checkParameterIsNotNull(eglSurface, "eglSurface");
        return EGL14.eglSwapBuffers(this.eglDisplay, eglSurface);
    }

    public final void setSurfacePresentationTime$egloo_release(EGLSurface eglSurface, long j) {
        Intrinsics.checkParameterIsNotNull(eglSurface, "eglSurface");
        EGLExt.eglPresentationTimeANDROID(this.eglDisplay, eglSurface, j);
    }

    /* compiled from: EglCore.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
        TAG = EglCore.class.getSimpleName();
    }
}
