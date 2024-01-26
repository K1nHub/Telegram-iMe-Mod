package com.otaliastudios.opengl.core;

import android.opengl.EGLContext;
import com.otaliastudios.opengl.internal.EglContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: EglCore.kt */
/* loaded from: classes4.dex */
public final class EglCore extends EglNativeCore {
    static {
        new Companion(null);
    }

    public EglCore(EGLContext eGLContext, int i) {
        super(new EglContext(eGLContext), i);
    }

    public void release() {
        super.release$library_release();
    }

    protected final void finalize() {
        release();
    }

    /* compiled from: EglCore.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
