package io.ktor.utils.p032io.core;

import io.ktor.utils.p032io.core.internal.ChunkBuffer;
import io.ktor.utils.p032io.pool.SingleInstancePool;
import java.nio.ByteBuffer;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ByteReadPacketExtensions.kt */
/* renamed from: io.ktor.utils.io.core.SingleByteBufferPool */
/* loaded from: classes4.dex */
public final class SingleByteBufferPool extends SingleInstancePool<ChunkBuffer> {
    private final ByteBuffer instance;
    private final Function1<ByteBuffer, Unit> release;

    /* JADX WARN: Multi-variable type inference failed */
    public SingleByteBufferPool(ByteBuffer instance, Function1<? super ByteBuffer, Unit> release) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        Intrinsics.checkNotNullParameter(release, "release");
        this.instance = instance;
        this.release = release;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.ktor.utils.p032io.pool.SingleInstancePool
    public ChunkBuffer produceInstance() {
        return BufferUtilsJvmKt.ChunkBuffer(this.instance, this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.ktor.utils.p032io.pool.SingleInstancePool
    public void disposeInstance(ChunkBuffer instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        this.release.invoke(this.instance);
    }
}
