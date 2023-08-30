package com.otaliastudios.opengl.types;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: buffers.kt */
/* loaded from: classes4.dex */
public final class BuffersJvmKt {
    public static final ByteBuffer byteBuffer(int i) {
        ByteBuffer order = ByteBuffer.allocateDirect(i * 1).order(ByteOrder.nativeOrder());
        order.limit(order.capacity());
        Intrinsics.checkNotNullExpressionValue(order, "allocateDirect(size * Egloo.SIZE_OF_BYTE)\n        .order(ByteOrder.nativeOrder())\n        .also { it.limit(it.capacity()) }");
        return order;
    }

    public static final FloatBuffer floatBuffer(int i) {
        FloatBuffer asFloatBuffer = byteBuffer(i * 4).asFloatBuffer();
        Intrinsics.checkNotNullExpressionValue(asFloatBuffer, "byteBuffer(size * Egloo.SIZE_OF_FLOAT).asFloatBuffer()");
        return asFloatBuffer;
    }
}
