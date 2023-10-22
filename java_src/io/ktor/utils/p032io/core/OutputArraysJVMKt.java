package io.ktor.utils.p032io.core;

import io.ktor.utils.p032io.core.internal.ChunkBuffer;
import io.ktor.utils.p032io.core.internal.UnsafeKt;
import java.nio.ByteBuffer;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: OutputArraysJVM.kt */
/* renamed from: io.ktor.utils.io.core.OutputArraysJVMKt */
/* loaded from: classes4.dex */
public final class OutputArraysJVMKt {
    public static final void writeFully(Output output, ByteBuffer bb) {
        Intrinsics.checkNotNullParameter(output, "<this>");
        Intrinsics.checkNotNullParameter(bb, "bb");
        int limit = bb.limit();
        ChunkBuffer prepareWriteHead = UnsafeKt.prepareWriteHead(output, 1, null);
        while (true) {
            try {
                bb.limit(bb.position() + Math.min(bb.remaining(), prepareWriteHead.getLimit() - prepareWriteHead.getWritePosition()));
                BufferPrimitivesJvmKt.writeFully(prepareWriteHead, bb);
                bb.limit(limit);
                if (!bb.hasRemaining()) {
                    return;
                }
                prepareWriteHead = UnsafeKt.prepareWriteHead(output, 1, prepareWriteHead);
            } finally {
                output.afterHeadWrite();
            }
        }
    }
}
