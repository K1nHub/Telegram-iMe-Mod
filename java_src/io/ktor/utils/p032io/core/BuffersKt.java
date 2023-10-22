package io.ktor.utils.p032io.core;

import io.ktor.utils.p032io.core.internal.ChunkBuffer;
import io.ktor.utils.p032io.pool.ObjectPool;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Buffers.kt */
/* renamed from: io.ktor.utils.io.core.BuffersKt */
/* loaded from: classes4.dex */
public final class BuffersKt {
    public static final void releaseAll(ChunkBuffer chunkBuffer, ObjectPool<ChunkBuffer> pool) {
        Intrinsics.checkNotNullParameter(pool, "pool");
        while (chunkBuffer != null) {
            ChunkBuffer cleanNext = chunkBuffer.cleanNext();
            chunkBuffer.release(pool);
            chunkBuffer = cleanNext;
        }
    }

    public static final ChunkBuffer copyAll(ChunkBuffer chunkBuffer) {
        Intrinsics.checkNotNullParameter(chunkBuffer, "<this>");
        ChunkBuffer duplicate = chunkBuffer.duplicate();
        ChunkBuffer next = chunkBuffer.getNext();
        return next == null ? duplicate : copyAll(next, duplicate, duplicate);
    }

    private static final ChunkBuffer copyAll(ChunkBuffer chunkBuffer, ChunkBuffer chunkBuffer2, ChunkBuffer chunkBuffer3) {
        while (true) {
            ChunkBuffer duplicate = chunkBuffer.duplicate();
            chunkBuffer3.setNext(duplicate);
            chunkBuffer = chunkBuffer.getNext();
            if (chunkBuffer == null) {
                return chunkBuffer2;
            }
            chunkBuffer3 = duplicate;
        }
    }

    public static final ChunkBuffer findTail(ChunkBuffer chunkBuffer) {
        Intrinsics.checkNotNullParameter(chunkBuffer, "<this>");
        while (true) {
            ChunkBuffer next = chunkBuffer.getNext();
            if (next == null) {
                return chunkBuffer;
            }
            chunkBuffer = next;
        }
    }

    private static final long remainingAll(ChunkBuffer chunkBuffer, long j) {
        do {
            j += chunkBuffer.getWritePosition() - chunkBuffer.getReadPosition();
            chunkBuffer = chunkBuffer.getNext();
        } while (chunkBuffer != null);
        return j;
    }

    public static final long remainingAll(ChunkBuffer chunkBuffer) {
        Intrinsics.checkNotNullParameter(chunkBuffer, "<this>");
        return remainingAll(chunkBuffer, 0L);
    }
}
