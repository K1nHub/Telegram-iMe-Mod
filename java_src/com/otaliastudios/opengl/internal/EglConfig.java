package com.otaliastudios.opengl.internal;

import android.opengl.EGLConfig;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: egl.kt */
/* loaded from: classes4.dex */
public final class EglConfig {

    /* renamed from: native  reason: not valid java name */
    private final EGLConfig f1836native;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof EglConfig) && Intrinsics.areEqual(this.f1836native, ((EglConfig) obj).f1836native);
    }

    public int hashCode() {
        return this.f1836native.hashCode();
    }

    public String toString() {
        return "EglConfig(native=" + this.f1836native + ')';
    }

    public EglConfig(EGLConfig eGLConfig) {
        Intrinsics.checkNotNullParameter(eGLConfig, "native");
        this.f1836native = eGLConfig;
    }

    public final EGLConfig getNative() {
        return this.f1836native;
    }
}
