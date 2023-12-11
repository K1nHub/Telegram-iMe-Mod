package io.ktor.utils.p032io.core;

import io.ktor.utils.p032io.bits.Memory;
import io.ktor.utils.p032io.bits.MemoryJvmKt;
import io.ktor.utils.p032io.core.internal.ChunkBuffer;
import io.ktor.utils.p032io.pool.ObjectPool;
import java.io.EOFException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BufferUtilsJvm.kt */
/* renamed from: io.ktor.utils.io.core.BufferUtilsJvmKt */
/* loaded from: classes4.dex */
public final class BufferUtilsJvmKt {
    public static final ChunkBuffer ChunkBuffer(ByteBuffer buffer, ObjectPool<ChunkBuffer> objectPool) {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        Memory.Companion companion = Memory.Companion;
        ByteBuffer order = buffer.slice().order(ByteOrder.BIG_ENDIAN);
        Intrinsics.checkNotNullExpressionValue(order, "buffer.slice().order(ByteOrder.BIG_ENDIAN)");
        return new ChunkBuffer(Memory.m1912constructorimpl(order), null, objectPool, null);
    }

    public static final void readFully(Buffer buffer, ByteBuffer dst, int i) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(dst, "dst");
        ByteBuffer m1919getMemorySK3TCg8 = buffer.m1919getMemorySK3TCg8();
        int readPosition = buffer.getReadPosition();
        if (buffer.getWritePosition() - readPosition >= i) {
            int limit = dst.limit();
            try {
                dst.limit(dst.position() + i);
                MemoryJvmKt.m1916copyTo62zg_DM(m1919getMemorySK3TCg8, dst, readPosition);
                dst.limit(limit);
                Unit unit = Unit.INSTANCE;
                buffer.discardExact(i);
                return;
            } catch (Throwable th) {
                dst.limit(limit);
                throw th;
            }
        }
        throw new EOFException("Not enough bytes to read a buffer content of size " + i + '.');
    }
}
