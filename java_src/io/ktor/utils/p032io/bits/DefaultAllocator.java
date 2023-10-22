package io.ktor.utils.p032io.bits;

import java.nio.ByteBuffer;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: MemoryFactoryJvm.kt */
/* renamed from: io.ktor.utils.io.bits.DefaultAllocator */
/* loaded from: classes4.dex */
public final class DefaultAllocator implements Allocator {
    public static final DefaultAllocator INSTANCE = new DefaultAllocator();

    @Override // io.ktor.utils.p032io.bits.Allocator
    /* renamed from: free-3GNKZMM */
    public void mo1904free3GNKZMM(ByteBuffer instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
    }

    private DefaultAllocator() {
    }

    @Override // io.ktor.utils.p032io.bits.Allocator
    /* renamed from: alloc-gFv-Zug */
    public ByteBuffer mo1903allocgFvZug(int i) {
        ByteBuffer allocate = ByteBuffer.allocate(i);
        Intrinsics.checkNotNullExpressionValue(allocate, "allocate(size)");
        return Memory.m1905constructorimpl(allocate);
    }
}
