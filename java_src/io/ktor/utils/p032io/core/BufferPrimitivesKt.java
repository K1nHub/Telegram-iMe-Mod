package io.ktor.utils.p032io.core;

import io.ktor.utils.p032io.bits.Memory;
import io.ktor.utils.p032io.bits.MemoryJvmKt;
import java.io.EOFException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BufferPrimitives.kt */
/* renamed from: io.ktor.utils.io.core.BufferPrimitivesKt */
/* loaded from: classes4.dex */
public final class BufferPrimitivesKt {
    public static final void readFully(Buffer buffer, byte[] destination, int i, int i2) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(destination, "destination");
        ByteBuffer m1917getMemorySK3TCg8 = buffer.m1917getMemorySK3TCg8();
        int readPosition = buffer.getReadPosition();
        if (buffer.getWritePosition() - readPosition >= i2) {
            MemoryJvmKt.m1915copyTo9zorpBc(m1917getMemorySK3TCg8, destination, readPosition, i2, i);
            Unit unit = Unit.INSTANCE;
            buffer.discardExact(i2);
            return;
        }
        throw new EOFException("Not enough bytes to read a byte array of size " + i2 + '.');
    }

    public static final int readInt(Buffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        ByteBuffer m1917getMemorySK3TCg8 = buffer.m1917getMemorySK3TCg8();
        int readPosition = buffer.getReadPosition();
        if (buffer.getWritePosition() - readPosition >= 4) {
            Integer valueOf = Integer.valueOf(m1917getMemorySK3TCg8.getInt(readPosition));
            buffer.discardExact(4);
            return valueOf.intValue();
        }
        throw new EOFException("Not enough bytes to read a regular integer of size 4.");
    }

    public static final long readLong(Buffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        ByteBuffer m1917getMemorySK3TCg8 = buffer.m1917getMemorySK3TCg8();
        int readPosition = buffer.getReadPosition();
        if (buffer.getWritePosition() - readPosition >= 8) {
            Long valueOf = Long.valueOf(m1917getMemorySK3TCg8.getLong(readPosition));
            buffer.discardExact(8);
            return valueOf.longValue();
        }
        throw new EOFException("Not enough bytes to read a long integer of size 8.");
    }

    public static final short readShort(Buffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        ByteBuffer m1917getMemorySK3TCg8 = buffer.m1917getMemorySK3TCg8();
        int readPosition = buffer.getReadPosition();
        if (buffer.getWritePosition() - readPosition >= 2) {
            Short valueOf = Short.valueOf(m1917getMemorySK3TCg8.getShort(readPosition));
            buffer.discardExact(2);
            return valueOf.shortValue();
        }
        throw new EOFException("Not enough bytes to read a short integer of size 2.");
    }

    public static final void writeFully(Buffer buffer, byte[] source, int i, int i2) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(source, "source");
        ByteBuffer m1917getMemorySK3TCg8 = buffer.m1917getMemorySK3TCg8();
        int writePosition = buffer.getWritePosition();
        int limit = buffer.getLimit() - writePosition;
        if (limit >= i2) {
            ByteBuffer order = ByteBuffer.wrap(source, i, i2).slice().order(ByteOrder.BIG_ENDIAN);
            Intrinsics.checkNotNullExpressionValue(order, "wrap(this, offset, lengt…der(ByteOrder.BIG_ENDIAN)");
            Memory.m1911copyToJT6ljtQ(Memory.m1910constructorimpl(order), m1917getMemorySK3TCg8, 0, i2, writePosition);
            buffer.commitWritten(i2);
            return;
        }
        throw new InsufficientSpaceException("byte array", i2, limit);
    }

    public static final void writeInt(Buffer buffer, int i) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        ByteBuffer m1917getMemorySK3TCg8 = buffer.m1917getMemorySK3TCg8();
        int writePosition = buffer.getWritePosition();
        int limit = buffer.getLimit() - writePosition;
        if (limit >= 4) {
            m1917getMemorySK3TCg8.putInt(writePosition, i);
            buffer.commitWritten(4);
            return;
        }
        throw new InsufficientSpaceException("regular integer", 4, limit);
    }

    public static final void writeLong(Buffer buffer, long j) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        ByteBuffer m1917getMemorySK3TCg8 = buffer.m1917getMemorySK3TCg8();
        int writePosition = buffer.getWritePosition();
        int limit = buffer.getLimit() - writePosition;
        if (limit >= 8) {
            m1917getMemorySK3TCg8.putLong(writePosition, j);
            buffer.commitWritten(8);
            return;
        }
        throw new InsufficientSpaceException("long integer", 8, limit);
    }

    public static final void writeShort(Buffer buffer, short s) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        ByteBuffer m1917getMemorySK3TCg8 = buffer.m1917getMemorySK3TCg8();
        int writePosition = buffer.getWritePosition();
        int limit = buffer.getLimit() - writePosition;
        if (limit >= 2) {
            m1917getMemorySK3TCg8.putShort(writePosition, s);
            buffer.commitWritten(2);
            return;
        }
        throw new InsufficientSpaceException("short integer", 2, limit);
    }
}
