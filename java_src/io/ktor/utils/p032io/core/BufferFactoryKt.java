package io.ktor.utils.p032io.core;

import io.ktor.utils.p032io.core.internal.ChunkBuffer;
import io.ktor.utils.p032io.pool.ObjectPool;
/* compiled from: BufferFactory.kt */
/* renamed from: io.ktor.utils.io.core.BufferFactoryKt */
/* loaded from: classes4.dex */
public final class BufferFactoryKt {
    private static final ObjectPool<ChunkBuffer> DefaultChunkedBufferPool = new DefaultBufferPool(0, 0, null, 7, null);

    public static final ObjectPool<ChunkBuffer> getDefaultChunkedBufferPool() {
        return DefaultChunkedBufferPool;
    }
}
