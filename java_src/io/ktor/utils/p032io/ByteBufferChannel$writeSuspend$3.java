package io.ktor.utils.p032io;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ByteBufferChannel.kt */
@DebugMetadata(m145c = "io.ktor.utils.io.ByteBufferChannel", m144f = "ByteBufferChannel.kt", m143l = {2408}, m142m = "writeSuspend")
/* renamed from: io.ktor.utils.io.ByteBufferChannel$writeSuspend$3 */
/* loaded from: classes4.dex */
public final class ByteBufferChannel$writeSuspend$3 extends ContinuationImpl {
    int I$0;
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ ByteBufferChannel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ByteBufferChannel$writeSuspend$3(ByteBufferChannel byteBufferChannel, Continuation<? super ByteBufferChannel$writeSuspend$3> continuation) {
        super(continuation);
        this.this$0 = byteBufferChannel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object writeSuspend;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        writeSuspend = this.this$0.writeSuspend(0, this);
        return writeSuspend;
    }
}
