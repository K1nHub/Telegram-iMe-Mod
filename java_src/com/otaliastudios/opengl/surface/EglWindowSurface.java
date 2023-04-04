package com.otaliastudios.opengl.surface;

import android.view.Surface;
import com.otaliastudios.opengl.core.EglCore;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: EglWindowSurface.kt */
/* loaded from: classes4.dex */
public class EglWindowSurface extends EglNativeWindowSurface {
    private boolean releaseSurface;
    private Surface surface;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EglWindowSurface(EglCore eglCore, Surface surface, boolean z) {
        super(eglCore, eglCore.createWindowSurface$library_release(surface));
        Intrinsics.checkNotNullParameter(eglCore, "eglCore");
        Intrinsics.checkNotNullParameter(surface, "surface");
        this.surface = surface;
        this.releaseSurface = z;
    }

    @Override // com.otaliastudios.opengl.surface.EglNativeSurface
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
