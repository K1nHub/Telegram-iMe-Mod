package io.ktor.utils.p032io.core;

import io.ktor.utils.p032io.bits.Memory;
import java.nio.ByteBuffer;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BufferAppend.kt */
/* renamed from: io.ktor.utils.io.core.BufferAppendKt */
/* loaded from: classes4.dex */
public final class BufferAppendKt {
    public static final int writeBufferAppend(Buffer buffer, Buffer other, int i) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        int min = Math.min(other.getWritePosition() - other.getReadPosition(), i);
        if (buffer.getLimit() - buffer.getWritePosition() <= min) {
            writeBufferAppendUnreserve(buffer, min);
        }
        ByteBuffer m1920getMemorySK3TCg8 = buffer.m1920getMemorySK3TCg8();
        int writePosition = buffer.getWritePosition();
        buffer.getLimit();
        ByteBuffer m1920getMemorySK3TCg82 = other.m1920getMemorySK3TCg8();
        int readPosition = other.getReadPosition();
        other.getWritePosition();
        Memory.m1914copyToJT6ljtQ(m1920getMemorySK3TCg82, m1920getMemorySK3TCg8, readPosition, min, writePosition);
        other.discardExact(min);
        buffer.commitWritten(min);
        return min;
    }

    private static final void writeBufferAppendUnreserve(Buffer buffer, int i) {
        if ((buffer.getLimit() - buffer.getWritePosition()) + (buffer.getCapacity() - buffer.getLimit()) < i) {
            throw new IllegalArgumentException("Can't append buffer: not enough free space at the end");
        }
        if ((buffer.getWritePosition() + i) - buffer.getLimit() > 0) {
            buffer.releaseEndGap$ktor_io();
        }
    }
}
