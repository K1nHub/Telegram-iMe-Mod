package com.otaliastudios.opengl.core;

import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLDisplay;
import android.opengl.GLSurfaceView;
import android.util.Log;
import java.util.List;
import javax.microedition.khronos.egl.EGL10;
import kotlin.TypeCastException;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import org.webrtc.EglBase;
/* compiled from: EglConfigChooser.kt */
/* loaded from: classes3.dex */
public final class EglConfigChooser {
    public static final EglConfigChooser INSTANCE = new EglConfigChooser();
    private static final String TAG = EglConfigChooser.class.getSimpleName();

    /* JADX INFO: Access modifiers changed from: private */
    public final int[] getConfigSpec(int i, boolean z) {
        int i2 = i >= 3 ? 68 : (char) 4;
        int[] iArr = new int[15];
        iArr[0] = 12324;
        iArr[1] = 8;
        iArr[2] = 12323;
        iArr[3] = 8;
        iArr[4] = 12322;
        iArr[5] = 8;
        iArr[6] = 12321;
        iArr[7] = 8;
        iArr[8] = 12339;
        iArr[9] = 5;
        iArr[10] = 12352;
        iArr[11] = i2;
        iArr[12] = z ? EglBase.EGL_RECORDABLE_ANDROID : (char) 12344;
        iArr[13] = z ? 1 : 0;
        iArr[14] = 12344;
        return iArr;
    }

    static {
        new Chooser(2);
        new Chooser(3);
    }

    private EglConfigChooser() {
    }

    public static final EGLConfig getConfig(EGLDisplay display, int i, boolean z) {
        Intrinsics.checkParameterIsNotNull(display, "display");
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        if (!EGL14.eglChooseConfig(display, INSTANCE.getConfigSpec(i, z), 0, eGLConfigArr, 0, 1, new int[1], 0)) {
            String str = TAG;
            Log.w(str, "Unable to find RGB8888 / " + i + " EGLConfig");
            return null;
        }
        return eGLConfigArr[0];
    }

    /* compiled from: EglConfigChooser.kt */
    /* loaded from: classes3.dex */
    private static final class Chooser implements GLSurfaceView.EGLConfigChooser {
        private final int version;

        public Chooser(int i) {
            this.version = i;
        }

        @Override // android.opengl.GLSurfaceView.EGLConfigChooser
        public javax.microedition.khronos.egl.EGLConfig chooseConfig(EGL10 egl, javax.microedition.khronos.egl.EGLDisplay display) {
            List filterNotNull;
            Intrinsics.checkParameterIsNotNull(egl, "egl");
            Intrinsics.checkParameterIsNotNull(display, "display");
            int[] iArr = new int[1];
            int[] configSpec = EglConfigChooser.INSTANCE.getConfigSpec(this.version, true);
            if (!egl.eglChooseConfig(display, configSpec, null, 0, iArr)) {
                throw new IllegalArgumentException("eglChooseConfig failed");
            }
            int i = iArr[0];
            if (i <= 0) {
                throw new IllegalArgumentException("No configs match configSpec");
            }
            javax.microedition.khronos.egl.EGLConfig[] eGLConfigArr = new javax.microedition.khronos.egl.EGLConfig[i];
            if (!egl.eglChooseConfig(display, configSpec, eGLConfigArr, i, iArr)) {
                throw new IllegalArgumentException("eglChooseConfig#2 failed");
            }
            filterNotNull = ArraysKt___ArraysKt.filterNotNull(eGLConfigArr);
            if (filterNotNull == null) {
                throw new TypeCastException("null cannot be cast to non-null type java.util.Collection<T>");
            }
            Object[] array = filterNotNull.toArray(new javax.microedition.khronos.egl.EGLConfig[0]);
            if (array == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
            }
            javax.microedition.khronos.egl.EGLConfig chooseConfig = chooseConfig(egl, display, (javax.microedition.khronos.egl.EGLConfig[]) array);
            if (chooseConfig != null) {
                return chooseConfig;
            }
            throw new IllegalArgumentException("No config chosen");
        }

        private final javax.microedition.khronos.egl.EGLConfig chooseConfig(EGL10 egl10, javax.microedition.khronos.egl.EGLDisplay eGLDisplay, javax.microedition.khronos.egl.EGLConfig[] eGLConfigArr) {
            for (javax.microedition.khronos.egl.EGLConfig eGLConfig : eGLConfigArr) {
                int findConfigAttrib = findConfigAttrib(egl10, eGLDisplay, eGLConfig, 12325, 0);
                int findConfigAttrib2 = findConfigAttrib(egl10, eGLDisplay, eGLConfig, 12326, 0);
                if (findConfigAttrib >= 0 && findConfigAttrib2 >= 0) {
                    int findConfigAttrib3 = findConfigAttrib(egl10, eGLDisplay, eGLConfig, 12324, 0);
                    int findConfigAttrib4 = findConfigAttrib(egl10, eGLDisplay, eGLConfig, 12323, 0);
                    int findConfigAttrib5 = findConfigAttrib(egl10, eGLDisplay, eGLConfig, 12322, 0);
                    int findConfigAttrib6 = findConfigAttrib(egl10, eGLDisplay, eGLConfig, 12321, 0);
                    if (findConfigAttrib3 == 8 && findConfigAttrib4 == 8 && findConfigAttrib5 == 8 && findConfigAttrib6 == 8) {
                        return eGLConfig;
                    }
                }
            }
            return null;
        }

        private final int findConfigAttrib(EGL10 egl10, javax.microedition.khronos.egl.EGLDisplay eGLDisplay, javax.microedition.khronos.egl.EGLConfig eGLConfig, int i, int i2) {
            int[] iArr = new int[1];
            return egl10.eglGetConfigAttrib(eGLDisplay, eGLConfig, i, iArr) ? iArr[0] : i2;
        }
    }
}
