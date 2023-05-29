package com.otaliastudios.opengl.program;

import android.opengl.GLES20;
import com.otaliastudios.opengl.core.Egloo;
import com.otaliastudios.opengl.internal.GlKt;
import kotlin.UInt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: GlShader.kt */
/* loaded from: classes4.dex */
public final class GlShader {
    private static final Companion Companion = new Companion(null);

    /* renamed from: id */
    private final int f385id;

    public GlShader(int i, int i2) {
        this.f385id = i2;
    }

    public final int getId() {
        return this.f385id;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public GlShader(int i, String source) {
        this(i, Companion.compile(i, source));
        Intrinsics.checkNotNullParameter(source, "source");
    }

    public final void release() {
        GLES20.glDeleteShader(UInt.m1580constructorimpl(this.f385id));
    }

    /* compiled from: GlShader.kt */
    /* loaded from: classes4.dex */
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int compile(int i, String str) {
            int m1580constructorimpl = UInt.m1580constructorimpl(GLES20.glCreateShader(UInt.m1580constructorimpl(i)));
            Egloo.checkGlError(Intrinsics.stringPlus("glCreateShader type=", Integer.valueOf(i)));
            GLES20.glShaderSource(m1580constructorimpl, str);
            GLES20.glCompileShader(m1580constructorimpl);
            int[] iArr = new int[1];
            GLES20.glGetShaderiv(m1580constructorimpl, GlKt.getGL_COMPILE_STATUS(), iArr, 0);
            if (iArr[0] != 0) {
                return m1580constructorimpl;
            }
            String str2 = "Could not compile shader " + i + ": '" + ((Object) GLES20.glGetShaderInfoLog(m1580constructorimpl)) + "' source: " + str;
            GLES20.glDeleteShader(m1580constructorimpl);
            throw new RuntimeException(str2);
        }
    }
}
