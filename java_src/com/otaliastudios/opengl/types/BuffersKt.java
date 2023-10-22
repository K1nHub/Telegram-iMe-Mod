package com.otaliastudios.opengl.types;

import java.nio.Buffer;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: buffers.kt */
/* loaded from: classes4.dex */
public final class BuffersKt {
    public static final void dispose(Buffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (buffer instanceof Disposable) {
            ((Disposable) buffer).dispose();
        }
    }
}
