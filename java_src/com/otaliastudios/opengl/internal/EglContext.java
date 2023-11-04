package com.otaliastudios.opengl.internal;

import android.opengl.EGLContext;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: egl.kt */
/* loaded from: classes4.dex */
public final class EglContext {

    /* renamed from: native  reason: not valid java name */
    private final EGLContext f2170native;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof EglContext) && Intrinsics.areEqual(this.f2170native, ((EglContext) obj).f2170native);
    }

    public int hashCode() {
        EGLContext eGLContext = this.f2170native;
        if (eGLContext == null) {
            return 0;
        }
        return eGLContext.hashCode();
    }

    public String toString() {
        return "EglContext(native=" + this.f2170native + ')';
    }

    public EglContext(EGLContext eGLContext) {
        this.f2170native = eGLContext;
    }

    public final EGLContext getNative() {
        return this.f2170native;
    }
}
