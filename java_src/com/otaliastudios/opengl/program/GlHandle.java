package com.otaliastudios.opengl.program;

import android.opengl.GLES20;
import com.otaliastudios.opengl.core.Egloo;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: GlHandle.kt */
/* loaded from: classes3.dex */
public final class GlHandle {
    public static final Companion Companion = new Companion(null);
    private final String name;
    private final int value;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: GlHandle.kt */
    /* loaded from: classes3.dex */
    public enum Type {
        ATTRIB,
        UNIFORM
    }

    /* loaded from: classes3.dex */
    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Type.values().length];
            $EnumSwitchMapping$0 = iArr;
            iArr[Type.ATTRIB.ordinal()] = 1;
            iArr[Type.UNIFORM.ordinal()] = 2;
        }
    }

    private GlHandle(int i, Type type, String str) {
        int glGetAttribLocation;
        this.name = str;
        int i2 = WhenMappings.$EnumSwitchMapping$0[type.ordinal()];
        if (i2 == 1) {
            glGetAttribLocation = GLES20.glGetAttribLocation(i, str);
        } else if (i2 != 2) {
            throw new NoWhenBranchMatchedException();
        } else {
            glGetAttribLocation = GLES20.glGetUniformLocation(i, str);
        }
        this.value = glGetAttribLocation;
        Egloo.checkGlProgramLocation(glGetAttribLocation, str);
    }

    public /* synthetic */ GlHandle(int i, Type type, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, type, str);
    }

    public final int getValue() {
        return this.value;
    }

    /* compiled from: GlHandle.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final GlHandle getAttrib(int i, String name) {
            Intrinsics.checkParameterIsNotNull(name, "name");
            return new GlHandle(i, Type.ATTRIB, name, null);
        }

        public final GlHandle getUniform(int i, String name) {
            Intrinsics.checkParameterIsNotNull(name, "name");
            return new GlHandle(i, Type.UNIFORM, name, null);
        }
    }
}
