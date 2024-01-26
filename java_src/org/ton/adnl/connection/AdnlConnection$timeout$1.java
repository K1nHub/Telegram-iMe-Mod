package org.ton.adnl.connection;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.time.Duration;
import kotlinx.atomicfu.AtomicRef;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.datetime.Clock$System;
import kotlinx.datetime.Instant;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AdnlConnection.kt */
@DebugMetadata(m148c = "org.ton.adnl.connection.AdnlConnection$timeout$1", m147f = "AdnlConnection.kt", m146l = {37}, m145m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class AdnlConnection$timeout$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ AdnlConnection this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdnlConnection$timeout$1(AdnlConnection adnlConnection, Continuation<? super AdnlConnection$timeout$1> continuation) {
        super(2, continuation);
        this.this$0 = adnlConnection;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new AdnlConnection$timeout$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((AdnlConnection$timeout$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended;
        AdnlConnection$timeout$1 adnlConnection$timeout$1;
        Function0 function0;
        AtomicRef atomicRef;
        long m2127minus5sfh64U;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            try {
                ResultKt.throwOnFailure(obj);
            } catch (Throwable unused) {
                adnlConnection$timeout$1 = this;
            }
        }
        adnlConnection$timeout$1 = this;
        do {
            try {
                atomicRef = adnlConnection$timeout$1.this$0.lastActivity;
                m2127minus5sfh64U = ((Instant) atomicRef.getValue()).m2129plusLRDsOJo(AdnlConnection.Companion.m5238getMAX_IDLE_TIMEUwyO8pc()).m2127minus5sfh64U(Clock$System.INSTANCE.now());
            } catch (Throwable unused2) {
            }
            if (Duration.m2065compareToLRDsOJo(m2127minus5sfh64U, Duration.Companion.m2095getZEROUwyO8pc()) <= 0) {
                function0 = adnlConnection$timeout$1.this$0.onDone;
                function0.invoke();
                return Unit.INSTANCE;
            }
            adnlConnection$timeout$1.label = 1;
        } while (DelayKt.m2097delayVtjQ1oo(m2127minus5sfh64U, adnlConnection$timeout$1) != coroutine_suspended);
        return coroutine_suspended;
    }
}
