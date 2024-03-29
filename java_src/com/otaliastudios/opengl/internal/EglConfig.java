package com.otaliastudios.opengl.internal;

import android.opengl.EGLConfig;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: egl.kt */
/* loaded from: classes4.dex */
public final class EglConfig {

    /* renamed from: native  reason: not valid java name */
    private final EGLConfig f2188native;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof EglConfig) && Intrinsics.areEqual(this.f2188native, ((EglConfig) obj).f2188native);
    }

    public int hashCode() {
        return this.f2188native.hashCode();
    }

    public String toString() {
        return "EglConfig(native=" + this.f2188native + ')';
    }

    public EglConfig(EGLConfig eGLConfig) {
        Intrinsics.checkNotNullParameter(eGLConfig, "native");
        this.f2188native = eGLConfig;
    }

    public final EGLConfig getNative() {
        return this.f2188native;
    }
}
