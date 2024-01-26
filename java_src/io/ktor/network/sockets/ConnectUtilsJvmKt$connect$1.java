package io.ktor.network.sockets;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ConnectUtilsJvm.kt */
@DebugMetadata(m148c = "io.ktor.network.sockets.ConnectUtilsJvmKt", m147f = "ConnectUtilsJvm.kt", m146l = {21}, m145m = "connect")
/* loaded from: classes4.dex */
public final class ConnectUtilsJvmKt$connect$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ConnectUtilsJvmKt$connect$1(Continuation<? super ConnectUtilsJvmKt$connect$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return ConnectUtilsJvmKt.connect(null, null, null, this);
    }
}
