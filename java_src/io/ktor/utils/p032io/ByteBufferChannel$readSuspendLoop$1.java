package io.ktor.utils.p032io;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ByteBufferChannel.kt */
@DebugMetadata(m148c = "io.ktor.utils.io.ByteBufferChannel", m147f = "ByteBufferChannel.kt", m146l = {2185}, m145m = "readSuspendLoop")
/* renamed from: io.ktor.utils.io.ByteBufferChannel$readSuspendLoop$1 */
/* loaded from: classes4.dex */
public final class ByteBufferChannel$readSuspendLoop$1 extends ContinuationImpl {
    int I$0;
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ ByteBufferChannel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ByteBufferChannel$readSuspendLoop$1(ByteBufferChannel byteBufferChannel, Continuation<? super ByteBufferChannel$readSuspendLoop$1> continuation) {
        super(continuation);
        this.this$0 = byteBufferChannel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object readSuspendLoop;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        readSuspendLoop = this.this$0.readSuspendLoop(0, this);
        return readSuspendLoop;
    }
}
