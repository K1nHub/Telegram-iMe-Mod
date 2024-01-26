package io.ktor.utils.p032io;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ByteBufferChannel.kt */
@DebugMetadata(m148c = "io.ktor.utils.io.ByteBufferChannel", m147f = "ByteBufferChannel.kt", m146l = {1786, 1788, 1793, 1798, 1800, 1804}, m145m = "lookAheadSuspend$suspendImpl")
/* renamed from: io.ktor.utils.io.ByteBufferChannel$lookAheadSuspend$1 */
/* loaded from: classes4.dex */
public final class ByteBufferChannel$lookAheadSuspend$1<R> extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ ByteBufferChannel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ByteBufferChannel$lookAheadSuspend$1(ByteBufferChannel byteBufferChannel, Continuation<? super ByteBufferChannel$lookAheadSuspend$1> continuation) {
        super(continuation);
        this.this$0 = byteBufferChannel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return ByteBufferChannel.lookAheadSuspend$suspendImpl(this.this$0, null, this);
    }
}
