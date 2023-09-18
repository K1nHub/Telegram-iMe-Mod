package com.otaliastudios.opengl.core;

import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.util.Log;
import com.otaliastudios.opengl.internal.EglConfig;
import com.otaliastudios.opengl.internal.EglDisplay;
import com.otaliastudios.opengl.internal.EglKt;
import java.util.Iterator;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import org.webrtc.EglBase;
/* compiled from: EglNativeConfigChooser.kt */
/* loaded from: classes6.dex */
public class EglNativeConfigChooser {
    static {
        new Companion(null);
    }

    /* compiled from: EglNativeConfigChooser.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public final EglConfig getConfig$library_release(EglDisplay display, int i, boolean z) {
        IntRange indices;
        Intrinsics.checkNotNullParameter(display, "display");
        EglConfig[] eglConfigArr = new EglConfig[1];
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        boolean eglChooseConfig = EGL14.eglChooseConfig(display.getNative(), getConfigSpec$library_release(i, z), 0, eGLConfigArr, 0, 1, new int[1], 0);
        if (eglChooseConfig) {
            indices = ArraysKt___ArraysKt.getIndices(eglConfigArr);
            Iterator<Integer> it = indices.iterator();
            while (it.hasNext()) {
                int nextInt = ((IntIterator) it).nextInt();
                EGLConfig eGLConfig = eGLConfigArr[nextInt];
                eglConfigArr[nextInt] = eGLConfig == null ? null : new EglConfig(eGLConfig);
            }
        }
        if (!eglChooseConfig) {
            Log.w("EglConfigChooser", "Unable to find RGB8888 / " + i + " EGLConfig");
            return null;
        }
        return eglConfigArr[0];
    }

    public final int[] getConfigSpec$library_release(int i, boolean z) {
        int egl_opengl_es2_bit;
        if (i >= 3) {
            egl_opengl_es2_bit = EglKt.getEGL_OPENGL_ES2_BIT() | EglKt.getEGL_OPENGL_ES3_BIT_KHR();
        } else {
            egl_opengl_es2_bit = EglKt.getEGL_OPENGL_ES2_BIT();
        }
        int[] iArr = new int[15];
        iArr[0] = EglKt.getEGL_RED_SIZE();
        iArr[1] = 8;
        iArr[2] = EglKt.getEGL_GREEN_SIZE();
        iArr[3] = 8;
        iArr[4] = EglKt.getEGL_BLUE_SIZE();
        iArr[5] = 8;
        iArr[6] = EglKt.getEGL_ALPHA_SIZE();
        iArr[7] = 8;
        iArr[8] = EglKt.getEGL_SURFACE_TYPE();
        iArr[9] = EglKt.getEGL_WINDOW_BIT() | EglKt.getEGL_PBUFFER_BIT();
        iArr[10] = EglKt.getEGL_RENDERABLE_TYPE();
        iArr[11] = egl_opengl_es2_bit;
        iArr[12] = z ? EglBase.EGL_RECORDABLE_ANDROID : EglKt.getEGL_NONE();
        iArr[13] = z ? 1 : 0;
        iArr[14] = EglKt.getEGL_NONE();
        return iArr;
    }
}
