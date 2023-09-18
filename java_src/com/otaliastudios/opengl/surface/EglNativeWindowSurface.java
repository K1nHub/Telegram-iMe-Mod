package com.otaliastudios.opengl.surface;

import com.otaliastudios.opengl.core.EglCore;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: EglWindowSurface.kt */
/* loaded from: classes6.dex */
public abstract class EglNativeWindowSurface extends EglSurface {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EglNativeWindowSurface(EglCore eglCore, com.otaliastudios.opengl.internal.EglSurface eglSurface) {
        super(eglCore, eglSurface);
        Intrinsics.checkNotNullParameter(eglCore, "eglCore");
        Intrinsics.checkNotNullParameter(eglSurface, "eglSurface");
    }

    public final boolean swapBuffers() {
        return getEglCore$library_release().swapSurfaceBuffers$library_release(getEglSurface$library_release());
    }
}
