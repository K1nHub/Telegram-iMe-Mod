package io.ktor.utils.p032io;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ByteBufferChannel.kt */
@DebugMetadata(m143c = "io.ktor.utils.io.ByteBufferChannel", m142f = "ByteBufferChannel.kt", m141l = {579}, m140m = "readFullySuspend")
/* renamed from: io.ktor.utils.io.ByteBufferChannel$readFullySuspend$1 */
/* loaded from: classes4.dex */
public final class ByteBufferChannel$readFullySuspend$1 extends ContinuationImpl {
    int I$0;
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ ByteBufferChannel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ByteBufferChannel$readFullySuspend$1(ByteBufferChannel byteBufferChannel, Continuation<? super ByteBufferChannel$readFullySuspend$1> continuation) {
        super(continuation);
        this.this$0 = byteBufferChannel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object readFullySuspend;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        readFullySuspend = this.this$0.readFullySuspend(null, 0, this);
        return readFullySuspend;
    }
}
