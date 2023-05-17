package com.otaliastudios.opengl.internal;

import android.opengl.EGLSurface;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: egl.kt */
/* loaded from: classes4.dex */
public final class EglSurface {

    /* renamed from: native  reason: not valid java name */
    private final EGLSurface f1839native;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof EglSurface) && Intrinsics.areEqual(this.f1839native, ((EglSurface) obj).f1839native);
    }

    public int hashCode() {
        EGLSurface eGLSurface = this.f1839native;
        if (eGLSurface == null) {
            return 0;
        }
        return eGLSurface.hashCode();
    }

    public String toString() {
        return "EglSurface(native=" + this.f1839native + ')';
    }

    public EglSurface(EGLSurface eGLSurface) {
        this.f1839native = eGLSurface;
    }

    public final EGLSurface getNative() {
        return this.f1839native;
    }
}
