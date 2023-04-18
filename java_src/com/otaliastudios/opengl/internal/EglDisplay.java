package com.otaliastudios.opengl.internal;

import android.opengl.EGLDisplay;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: egl.kt */
/* loaded from: classes4.dex */
public final class EglDisplay {

    /* renamed from: native  reason: not valid java name */
    private final EGLDisplay f1830native;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof EglDisplay) && Intrinsics.areEqual(this.f1830native, ((EglDisplay) obj).f1830native);
    }

    public int hashCode() {
        EGLDisplay eGLDisplay = this.f1830native;
        if (eGLDisplay == null) {
            return 0;
        }
        return eGLDisplay.hashCode();
    }

    public String toString() {
        return "EglDisplay(native=" + this.f1830native + ')';
    }

    public EglDisplay(EGLDisplay eGLDisplay) {
        this.f1830native = eGLDisplay;
    }

    public final EGLDisplay getNative() {
        return this.f1830native;
    }
}
