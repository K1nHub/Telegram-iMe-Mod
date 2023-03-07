package com.otaliastudios.opengl.surface;

import android.view.Surface;
import com.otaliastudios.opengl.core.EglCore;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: EglWindowSurface.kt */
/* loaded from: classes3.dex */
public class EglWindowSurface extends EglSurface {
    private boolean releaseSurface;
    private Surface surface;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EglWindowSurface(EglCore eglCore, Surface surface, boolean z) {
        super(eglCore, eglCore.createWindowSurface$egloo_release(surface));
        Intrinsics.checkParameterIsNotNull(eglCore, "eglCore");
        Intrinsics.checkParameterIsNotNull(surface, "surface");
        this.surface = surface;
        this.releaseSurface = z;
    }

    public final boolean swapBuffers() {
        return getEglCore().swapSurfaceBuffers$egloo_release(getEglSurface());
    }

    @Override // com.otaliastudios.opengl.surface.EglSurface
    public void release() {
        super.release();
        if (this.releaseSurface) {
            Surface surface = this.surface;
            if (surface != null) {
                surface.release();
            }
            this.surface = null;
        }
    }
}
