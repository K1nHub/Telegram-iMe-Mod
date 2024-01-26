package com.iMe.storage.data.manager.ton;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.send.TonTransactionPayload;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
/* compiled from: TonControllerImpl.kt */
@DebugMetadata(m148c = "com.iMe.storage.data.manager.ton.TonControllerImpl$sendTransaction$1", m147f = "TonControllerImpl.kt", m146l = {115}, m145m = "invokeSuspend")
/* loaded from: classes3.dex */
final class TonControllerImpl$sendTransaction$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends String>>, Object> {
    final /* synthetic */ long $amount;
    final /* synthetic */ TonTransactionPayload $payload;
    final /* synthetic */ int $seqno;
    final /* synthetic */ String $to;
    int label;
    final /* synthetic */ TonControllerImpl this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TonControllerImpl$sendTransaction$1(TonControllerImpl tonControllerImpl, String str, long j, int i, TonTransactionPayload tonTransactionPayload, Continuation<? super TonControllerImpl$sendTransaction$1> continuation) {
        super(2, continuation);
        this.this$0 = tonControllerImpl;
        this.$to = str;
        this.$amount = j;
        this.$seqno = i;
        this.$payload = tonTransactionPayload;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new TonControllerImpl$sendTransaction$1(this.this$0, this.$to, this.$amount, this.$seqno, this.$payload, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super Result<? extends String>> continuation) {
        return invoke2(coroutineScope, (Continuation<? super Result<String>>) continuation);
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object invoke2(CoroutineScope coroutineScope, Continuation<? super Result<String>> continuation) {
        return ((TonControllerImpl$sendTransaction$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            TonControllerImpl tonControllerImpl = this.this$0;
            String str = this.$to;
            long j = this.$amount;
            int i2 = this.$seqno;
            TonTransactionPayload tonTransactionPayload = this.$payload;
            this.label = 1;
            obj = tonControllerImpl.sendInternal(str, j, i2, tonTransactionPayload, this);
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
