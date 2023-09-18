package com.otaliastudios.opengl.core;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: GlBindable.kt */
/* loaded from: classes6.dex */
public final class GlBindableKt {
    public static final void use(GlBindable glBindable, Function0<Unit> block) {
        Intrinsics.checkNotNullParameter(glBindable, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        glBindable.bind();
        block.invoke();
        glBindable.unbind();
    }
}
