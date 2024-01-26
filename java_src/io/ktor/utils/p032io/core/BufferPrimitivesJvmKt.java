package io.ktor.utils.p032io.core;

import io.ktor.utils.p032io.bits.MemoryJvmKt;
import java.nio.ByteBuffer;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BufferPrimitivesJvm.kt */
/* renamed from: io.ktor.utils.io.core.BufferPrimitivesJvmKt */
/* loaded from: classes4.dex */
public final class BufferPrimitivesJvmKt {
    public static final void writeFully(Buffer buffer, ByteBuffer source) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(source, "source");
        int remaining = source.remaining();
        ByteBuffer m1920getMemorySK3TCg8 = buffer.m1920getMemorySK3TCg8();
        int writePosition = buffer.getWritePosition();
        int limit = buffer.getLimit() - writePosition;
        if (limit >= remaining) {
            MemoryJvmKt.m1919copyToSG11BkQ(source, m1920getMemorySK3TCg8, writePosition);
            buffer.commitWritten(remaining);
            return;
        }
        throw new InsufficientSpaceException("buffer content", remaining, limit);
    }
}
