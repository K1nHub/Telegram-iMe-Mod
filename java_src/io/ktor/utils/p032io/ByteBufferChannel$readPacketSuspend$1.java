package io.ktor.utils.p032io;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ByteBufferChannel.kt */
@DebugMetadata(m148c = "io.ktor.utils.io.ByteBufferChannel", m147f = "ByteBufferChannel.kt", m146l = {794}, m145m = "readPacketSuspend")
/* renamed from: io.ktor.utils.io.ByteBufferChannel$readPacketSuspend$1 */
/* loaded from: classes4.dex */
public final class ByteBufferChannel$readPacketSuspend$1 extends ContinuationImpl {
    int I$0;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ ByteBufferChannel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ByteBufferChannel$readPacketSuspend$1(ByteBufferChannel byteBufferChannel, Continuation<? super ByteBufferChannel$readPacketSuspend$1> continuation) {
        super(continuation);
        this.this$0 = byteBufferChannel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object readPacketSuspend;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        readPacketSuspend = this.this$0.readPacketSuspend(0, null, null, this);
        return readPacketSuspend;
    }
}
