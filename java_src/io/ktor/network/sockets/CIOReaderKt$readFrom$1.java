package io.ktor.network.sockets;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CIOReader.kt */
@DebugMetadata(m145c = "io.ktor.network.sockets.CIOReaderKt", m144f = "CIOReader.kt", m143l = {133}, m142m = "readFrom")
/* loaded from: classes4.dex */
public final class CIOReaderKt$readFrom$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CIOReaderKt$readFrom$1(Continuation<? super CIOReaderKt$readFrom$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object readFrom;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        readFrom = CIOReaderKt.readFrom(null, null, this);
        return readFrom;
    }
}
