package org.ton.adnl.connection;

import io.ktor.utils.p032io.ByteReadChannel;
import io.ktor.utils.p032io.core.ByteReadPacket;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.datetime.Instant;
import org.ton.crypto.AesCtr;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AdnlConnection.kt */
@DebugMetadata(m148c = "org.ton.adnl.connection.AdnlConnection$readResponse$2", m147f = "AdnlConnection.kt", m146l = {141}, m145m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class AdnlConnection$readResponse$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super AdnlResponseData>, Object> {
    final /* synthetic */ CoroutineContext $callContext;
    final /* synthetic */ AesCtr $cipher;
    final /* synthetic */ ByteReadChannel $input;
    final /* synthetic */ Instant $requestTime;
    int label;
    final /* synthetic */ AdnlConnection this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdnlConnection$readResponse$2(AdnlConnection adnlConnection, ByteReadChannel byteReadChannel, AesCtr aesCtr, Instant instant, CoroutineContext coroutineContext, Continuation<? super AdnlConnection$readResponse$2> continuation) {
        super(2, continuation);
        this.this$0 = adnlConnection;
        this.$input = byteReadChannel;
        this.$cipher = aesCtr;
        this.$requestTime = instant;
        this.$callContext = coroutineContext;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new AdnlConnection$readResponse$2(this.this$0, this.$input, this.$cipher, this.$requestTime, this.$callContext, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super AdnlResponseData> continuation) {
        return ((AdnlConnection$readResponse$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            AdnlConnection adnlConnection = this.this$0;
            ByteReadChannel byteReadChannel = this.$input;
            AesCtr aesCtr = this.$cipher;
            this.label = 1;
            obj = adnlConnection.readRaw(byteReadChannel, aesCtr, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        return new AdnlResponseData(this.$requestTime, (ByteReadPacket) obj, this.$callContext);
    }
}
