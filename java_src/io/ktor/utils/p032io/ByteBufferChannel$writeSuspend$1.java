package io.ktor.utils.p032io;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ByteBufferChannel.kt */
@DebugMetadata(m145c = "io.ktor.utils.io.ByteBufferChannel", m144f = "ByteBufferChannel.kt", m143l = {1435, 1437}, m142m = "writeSuspend")
/* renamed from: io.ktor.utils.io.ByteBufferChannel$writeSuspend$1 */
/* loaded from: classes4.dex */
public final class ByteBufferChannel$writeSuspend$1 extends ContinuationImpl {
    int I$0;
    int I$1;
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ ByteBufferChannel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ByteBufferChannel$writeSuspend$1(ByteBufferChannel byteBufferChannel, Continuation<? super ByteBufferChannel$writeSuspend$1> continuation) {
        super(continuation);
        this.this$0 = byteBufferChannel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object writeSuspend;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        writeSuspend = this.this$0.writeSuspend(null, 0, 0, this);
        return writeSuspend;
    }
}
