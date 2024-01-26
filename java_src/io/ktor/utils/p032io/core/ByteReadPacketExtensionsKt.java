package io.ktor.utils.p032io.core;

import io.ktor.utils.p032io.core.internal.ChunkBuffer;
import io.ktor.utils.p032io.pool.ObjectPool;
import java.nio.ByteBuffer;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ByteReadPacketExtensions.kt */
/* renamed from: io.ktor.utils.io.core.ByteReadPacketExtensionsKt */
/* loaded from: classes4.dex */
public final class ByteReadPacketExtensionsKt {
    public static final ByteReadPacket ByteReadPacket(ByteBuffer bb, Function1<? super ByteBuffer, Unit> release) {
        Intrinsics.checkNotNullParameter(bb, "bb");
        Intrinsics.checkNotNullParameter(release, "release");
        ObjectPool<ChunkBuffer> poolFor = poolFor(bb, release);
        ChunkBuffer borrow = poolFor.borrow();
        borrow.resetForRead();
        return new ByteReadPacket(borrow, poolFor);
    }

    private static final ObjectPool<ChunkBuffer> poolFor(ByteBuffer byteBuffer, Function1<? super ByteBuffer, Unit> function1) {
        return new SingleByteBufferPool(byteBuffer, function1);
    }
}
