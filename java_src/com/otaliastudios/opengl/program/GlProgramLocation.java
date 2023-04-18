package com.otaliastudios.opengl.program;

import android.opengl.GLES20;
import com.otaliastudios.opengl.core.Egloo;
import kotlin.NoWhenBranchMatchedException;
import kotlin.UInt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: GlProgramLocation.kt */
/* loaded from: classes4.dex */
public final class GlProgramLocation {
    public static final Companion Companion = new Companion(null);
    private final String name;
    private final int uvalue;
    private final int value;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: GlProgramLocation.kt */
    /* loaded from: classes4.dex */
    public enum Type {
        ATTRIB,
        UNIFORM
    }

    /* compiled from: GlProgramLocation.kt */
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Type.values().length];
            iArr[Type.ATTRIB.ordinal()] = 1;
            iArr[Type.UNIFORM.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public /* synthetic */ GlProgramLocation(int i, Type type, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, type, str);
    }

    private GlProgramLocation(int i, Type type, String str) {
        int glGetAttribLocation;
        this.name = str;
        int i2 = WhenMappings.$EnumSwitchMapping$0[type.ordinal()];
        if (i2 == 1) {
            glGetAttribLocation = GLES20.glGetAttribLocation(UInt.m1559constructorimpl(i), str);
        } else if (i2 != 2) {
            throw new NoWhenBranchMatchedException();
        } else {
            glGetAttribLocation = GLES20.glGetUniformLocation(UInt.m1559constructorimpl(i), str);
        }
        this.value = glGetAttribLocation;
        Egloo.checkGlProgramLocation(glGetAttribLocation, str);
        this.uvalue = UInt.m1559constructorimpl(glGetAttribLocation);
    }

    public final int getValue() {
        return this.value;
    }

    /* renamed from: getUvalue-pVg5ArA$library_release  reason: not valid java name */
    public final int m1546getUvaluepVg5ArA$library_release() {
        return this.uvalue;
    }

    /* compiled from: GlProgramLocation.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final GlProgramLocation getAttrib(int i, String name) {
            Intrinsics.checkNotNullParameter(name, "name");
            return new GlProgramLocation(i, Type.ATTRIB, name, null);
        }

        public final GlProgramLocation getUniform(int i, String name) {
            Intrinsics.checkNotNullParameter(name, "name");
            return new GlProgramLocation(i, Type.UNIFORM, name, null);
        }
    }
}
