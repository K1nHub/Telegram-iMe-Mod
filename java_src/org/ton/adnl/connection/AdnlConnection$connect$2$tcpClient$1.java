package org.ton.adnl.connection;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.ton.adnl.network.TcpClient;
import org.ton.api.liteserver.LiteServerDesc;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AdnlConnection.kt */
@DebugMetadata(m145c = "org.ton.adnl.connection.AdnlConnection$connect$2$tcpClient$1", m144f = "AdnlConnection.kt", m143l = {94}, m142m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class AdnlConnection$connect$2$tcpClient$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super TcpClient>, Object> {
    int label;
    final /* synthetic */ AdnlConnection this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdnlConnection$connect$2$tcpClient$1(AdnlConnection adnlConnection, Continuation<? super AdnlConnection$connect$2$tcpClient$1> continuation) {
        super(2, continuation);
        this.this$0 = adnlConnection;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new AdnlConnection$connect$2$tcpClient$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super TcpClient> continuation) {
        return ((AdnlConnection$connect$2$tcpClient$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended;
        AdnlConnectionFactory adnlConnectionFactory;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            adnlConnectionFactory = this.this$0.connectionFactory;
            LiteServerDesc liteServerDesc = this.this$0.getLiteServerDesc();
            this.label = 1;
            obj = adnlConnectionFactory.connect(liteServerDesc, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        return obj;
    }
}
