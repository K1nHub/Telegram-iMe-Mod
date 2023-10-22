package io.ktor.utils.p032io.internal;

import java.nio.ByteBuffer;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ReadWriteBufferState.kt */
/* renamed from: io.ktor.utils.io.internal.ReadWriteBufferStateKt */
/* loaded from: classes4.dex */
public final class ReadWriteBufferStateKt {
    private static final ByteBuffer EmptyByteBuffer;
    private static final RingBufferCapacity EmptyCapacity;

    static {
        ByteBuffer allocate = ByteBuffer.allocate(0);
        Intrinsics.checkNotNullExpressionValue(allocate, "allocate(0)");
        EmptyByteBuffer = allocate;
        EmptyCapacity = new RingBufferCapacity(0);
    }

    public static final ByteBuffer getEmptyByteBuffer() {
        return EmptyByteBuffer;
    }

    public static final RingBufferCapacity getEmptyCapacity() {
        return EmptyCapacity;
    }
}
