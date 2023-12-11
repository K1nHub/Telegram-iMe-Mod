package io.ktor.utils.p032io.core;

import io.ktor.utils.p032io.core.internal.ChunkBuffer;
import io.ktor.utils.p032io.pool.ObjectPool;
import java.nio.ByteBuffer;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BytePacketBuilder.kt */
/* renamed from: io.ktor.utils.io.core.BytePacketBuilder */
/* loaded from: classes4.dex */
public final class BytePacketBuilder extends Output {
    public BytePacketBuilder() {
        this(null, 1, null);
    }

    @Override // io.ktor.utils.p032io.core.Output
    protected final void closeDestination() {
    }

    @Override // io.ktor.utils.p032io.core.Output
    /* renamed from: flush-62zg_DM  reason: not valid java name */
    protected final void mo1920flush62zg_DM(ByteBuffer source, int i, int i2) {
        Intrinsics.checkNotNullParameter(source, "source");
    }

    public /* synthetic */ BytePacketBuilder(ObjectPool<ChunkBuffer> objectPool, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? ChunkBuffer.Companion.getPool() : objectPool);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BytePacketBuilder(ObjectPool<ChunkBuffer> pool) {
        super(pool);
        Intrinsics.checkNotNullParameter(pool, "pool");
    }

    public final int getSize() {
        return get_size();
    }

    @Override // java.lang.Appendable
    public BytePacketBuilder append(char c) {
        Output append = super.append(c);
        Intrinsics.checkNotNull(append, "null cannot be cast to non-null type io.ktor.utils.io.core.BytePacketBuilder");
        return (BytePacketBuilder) append;
    }

    @Override // java.lang.Appendable
    public BytePacketBuilder append(CharSequence charSequence) {
        Output append = super.append(charSequence);
        Intrinsics.checkNotNull(append, "null cannot be cast to non-null type io.ktor.utils.io.core.BytePacketBuilder");
        return (BytePacketBuilder) append;
    }

    @Override // java.lang.Appendable
    public BytePacketBuilder append(CharSequence charSequence, int i, int i2) {
        Output append = super.append(charSequence, i, i2);
        Intrinsics.checkNotNull(append, "null cannot be cast to non-null type io.ktor.utils.io.core.BytePacketBuilder");
        return (BytePacketBuilder) append;
    }

    public final ByteReadPacket build() {
        int size = getSize();
        ChunkBuffer stealAll$ktor_io = stealAll$ktor_io();
        if (stealAll$ktor_io == null) {
            return ByteReadPacket.Companion.getEmpty();
        }
        return new ByteReadPacket(stealAll$ktor_io, size, getPool());
    }

    public String toString() {
        return "BytePacketBuilder(" + getSize() + " bytes written)";
    }
}
