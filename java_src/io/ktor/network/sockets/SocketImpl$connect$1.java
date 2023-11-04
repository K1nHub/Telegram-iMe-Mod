package io.ktor.network.sockets;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SocketImpl.kt */
@DebugMetadata(m145c = "io.ktor.network.sockets.SocketImpl", m144f = "SocketImpl.kt", m143l = {47, 65}, m142m = "connect$ktor_network")
/* loaded from: classes4.dex */
public final class SocketImpl$connect$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ SocketImpl<S> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SocketImpl$connect$1(SocketImpl<? extends S> socketImpl, Continuation<? super SocketImpl$connect$1> continuation) {
        super(continuation);
        this.this$0 = socketImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.connect$ktor_network(null, this);
    }
}
