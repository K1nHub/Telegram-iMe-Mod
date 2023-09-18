package com.otaliastudios.opengl.internal;

import android.opengl.EGL14;
/* compiled from: egl.kt */
/* loaded from: classes6.dex */
public final class EglKt {
    private static final EglContext EGL_NO_CONTEXT = new EglContext(EGL14.EGL_NO_CONTEXT);
    private static final EglDisplay EGL_NO_DISPLAY = new EglDisplay(EGL14.EGL_NO_DISPLAY);
    private static final EglSurface EGL_NO_SURFACE = new EglSurface(EGL14.EGL_NO_SURFACE);
    private static final int EGL_SUCCESS = 12288;
    private static final int EGL_NONE = 12344;
    private static final int EGL_CONTEXT_CLIENT_VERSION = 12440;
    private static final int EGL_OPENGL_ES2_BIT = 4;
    private static final int EGL_OPENGL_ES3_BIT_KHR = 64;
    private static final int EGL_RED_SIZE = 12324;
    private static final int EGL_GREEN_SIZE = 12323;
    private static final int EGL_BLUE_SIZE = 12322;
    private static final int EGL_ALPHA_SIZE = 12321;
    private static final int EGL_SURFACE_TYPE = 12339;
    private static final int EGL_WINDOW_BIT = 4;
    private static final int EGL_PBUFFER_BIT = 1;
    private static final int EGL_RENDERABLE_TYPE = 12352;

    public static final EglContext getEGL_NO_CONTEXT() {
        return EGL_NO_CONTEXT;
    }

    public static final EglDisplay getEGL_NO_DISPLAY() {
        return EGL_NO_DISPLAY;
    }

    public static final EglSurface getEGL_NO_SURFACE() {
        return EGL_NO_SURFACE;
    }

    public static final int getEGL_SUCCESS() {
        return EGL_SUCCESS;
    }

    public static final int getEGL_NONE() {
        return EGL_NONE;
    }

    public static final int getEGL_CONTEXT_CLIENT_VERSION() {
        return EGL_CONTEXT_CLIENT_VERSION;
    }

    public static final int getEGL_OPENGL_ES2_BIT() {
        return EGL_OPENGL_ES2_BIT;
    }

    public static final int getEGL_OPENGL_ES3_BIT_KHR() {
        return EGL_OPENGL_ES3_BIT_KHR;
    }

    public static final int getEGL_RED_SIZE() {
        return EGL_RED_SIZE;
    }

    public static final int getEGL_GREEN_SIZE() {
        return EGL_GREEN_SIZE;
    }

    public static final int getEGL_BLUE_SIZE() {
        return EGL_BLUE_SIZE;
    }

    public static final int getEGL_ALPHA_SIZE() {
        return EGL_ALPHA_SIZE;
    }

    public static final int getEGL_SURFACE_TYPE() {
        return EGL_SURFACE_TYPE;
    }

    public static final int getEGL_WINDOW_BIT() {
        return EGL_WINDOW_BIT;
    }

    public static final int getEGL_PBUFFER_BIT() {
        return EGL_PBUFFER_BIT;
    }

    public static final int getEGL_RENDERABLE_TYPE() {
        return EGL_RENDERABLE_TYPE;
    }
}
