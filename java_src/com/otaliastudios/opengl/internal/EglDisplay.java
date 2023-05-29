package com.otaliastudios.opengl.internal;

import android.opengl.EGLDisplay;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: egl.kt */
/* loaded from: classes4.dex */
public final class EglDisplay {

    /* renamed from: native  reason: not valid java name */
    private final EGLDisplay f1838native;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof EglDisplay) && Intrinsics.areEqual(this.f1838native, ((EglDisplay) obj).f1838native);
    }

    public int hashCode() {
        EGLDisplay eGLDisplay = this.f1838native;
        if (eGLDisplay == null) {
            return 0;
        }
        return eGLDisplay.hashCode();
    }

    public String toString() {
        return "EglDisplay(native=" + this.f1838native + ')';
    }

    public EglDisplay(EGLDisplay eGLDisplay) {
        this.f1838native = eGLDisplay;
    }

    public final EGLDisplay getNative() {
        return this.f1838native;
    }
}
