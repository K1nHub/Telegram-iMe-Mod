package com.otaliastudios.opengl.extensions;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Buffers.kt */
/* loaded from: classes3.dex */
public final class BuffersKt {
    public static final FloatBuffer toBuffer(float[] toBuffer) {
        Intrinsics.checkParameterIsNotNull(toBuffer, "$this$toBuffer");
        FloatBuffer buffer = ByteBuffer.allocateDirect(toBuffer.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer().put(toBuffer);
        buffer.rewind();
        Intrinsics.checkExpressionValueIsNotNull(buffer, "buffer");
        return buffer;
    }

    public static final FloatBuffer floatBufferOf(float... elements) {
        Intrinsics.checkParameterIsNotNull(elements, "elements");
        return toBuffer(Arrays.copyOf(elements, elements.length));
    }
}
