package io.ktor.utils.p032io;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ByteWriteChannel.kt */
/* renamed from: io.ktor.utils.io.ByteWriteChannelKt */
/* loaded from: classes4.dex */
public final class ByteWriteChannelKt {
    public static final Object writeFully(ByteWriteChannel byteWriteChannel, byte[] bArr, Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object writeFully = byteWriteChannel.writeFully(bArr, 0, bArr.length, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return writeFully == coroutine_suspended ? writeFully : Unit.INSTANCE;
    }

    public static final boolean close(ByteWriteChannel byteWriteChannel) {
        Intrinsics.checkNotNullParameter(byteWriteChannel, "<this>");
        return byteWriteChannel.close(null);
    }
}
