package io.ktor.utils.p032io.core;

import io.ktor.utils.p032io.core.internal.ChunkBuffer;
import io.ktor.utils.p032io.pool.ObjectPool;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ByteReadPacket.kt */
/* renamed from: io.ktor.utils.io.core.ByteReadPacket */
/* loaded from: classes4.dex */
public final class ByteReadPacket extends Input {
    public static final Companion Companion = new Companion(null);
    private static final ByteReadPacket Empty;

    @Override // io.ktor.utils.p032io.core.Input
    protected final void closeSource() {
    }

    @Override // io.ktor.utils.p032io.core.Input
    protected final ChunkBuffer fill() {
        return null;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ByteReadPacket(ChunkBuffer head, long j, ObjectPool<ChunkBuffer> pool) {
        super(head, j, pool);
        Intrinsics.checkNotNullParameter(head, "head");
        Intrinsics.checkNotNullParameter(pool, "pool");
        markNoMoreChunksAvailable();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ByteReadPacket(ChunkBuffer head, ObjectPool<ChunkBuffer> pool) {
        this(head, BuffersKt.remainingAll(head), pool);
        Intrinsics.checkNotNullParameter(head, "head");
        Intrinsics.checkNotNullParameter(pool, "pool");
    }

    public final ByteReadPacket copy() {
        return new ByteReadPacket(BuffersKt.copyAll(getHead()), getRemaining(), getPool());
    }

    public String toString() {
        return "ByteReadPacket(" + getRemaining() + " bytes remaining)";
    }

    /* compiled from: ByteReadPacket.kt */
    /* renamed from: io.ktor.utils.io.core.ByteReadPacket$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final ByteReadPacket getEmpty() {
            return ByteReadPacket.Empty;
        }
    }

    static {
        ChunkBuffer.Companion companion = ChunkBuffer.Companion;
        Empty = new ByteReadPacket(companion.getEmpty(), 0L, companion.getEmptyPool());
    }
}
