package com.otaliastudios.opengl.surface;

import com.otaliastudios.opengl.core.EglCore;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: EglSurface.kt */
/* loaded from: classes4.dex */
public abstract class EglSurface extends EglNativeSurface {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EglSurface(EglCore eglCore, com.otaliastudios.opengl.internal.EglSurface eglSurface) {
        super(eglCore, eglSurface);
        Intrinsics.checkNotNullParameter(eglCore, "eglCore");
        Intrinsics.checkNotNullParameter(eglSurface, "eglSurface");
    }

    /* compiled from: EglSurface.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    static {
        new Companion(null);
        Intrinsics.checkNotNullExpressionValue(com.otaliastudios.opengl.internal.EglSurface.class.getSimpleName(), "EglSurface::class.java.simpleName");
    }
}
