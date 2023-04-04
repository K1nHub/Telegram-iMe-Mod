package com.otaliastudios.opengl.internal;

import android.opengl.EGLSurface;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: egl.kt */
/* loaded from: classes4.dex */
public final class EglSurface {

    /* renamed from: native  reason: not valid java name */
    private final EGLSurface f1912native;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof EglSurface) && Intrinsics.areEqual(this.f1912native, ((EglSurface) obj).f1912native);
    }

    public int hashCode() {
        EGLSurface eGLSurface = this.f1912native;
        if (eGLSurface == null) {
            return 0;
        }
        return eGLSurface.hashCode();
    }

    public String toString() {
        return "EglSurface(native=" + this.f1912native + ')';
    }

    public EglSurface(EGLSurface eGLSurface) {
        this.f1912native = eGLSurface;
    }

    public final EGLSurface getNative() {
        return this.f1912native;
    }
}
