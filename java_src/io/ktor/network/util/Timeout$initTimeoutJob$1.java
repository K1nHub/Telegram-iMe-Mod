package io.ktor.network.util;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Utils.kt */
@DebugMetadata(m143c = "io.ktor.network.util.Timeout$initTimeoutJob$1", m142f = "Utils.kt", m141l = {57, 59, 60}, m140m = "invokeSuspend")
/* loaded from: classes4.dex */
public final class Timeout$initTimeoutJob$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ Timeout this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Timeout$initTimeoutJob$1(Timeout timeout, Continuation<? super Timeout$initTimeoutJob$1> continuation) {
        super(2, continuation);
        this.this$0 = timeout;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new Timeout$initTimeoutJob$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((Timeout$initTimeoutJob$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0082 A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            r9 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r9.label
            r2 = 3
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L27
            if (r1 == r4) goto L23
            if (r1 == r3) goto L1e
            if (r1 != r2) goto L16
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L8c
            goto L8c
        L16:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r0)
            throw r10
        L1e:
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L8c
            r10 = r9
            goto L74
        L23:
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L8c
            goto L2a
        L27:
            kotlin.ResultKt.throwOnFailure(r10)
        L2a:
            r10 = r9
        L2b:
            io.ktor.network.util.Timeout r1 = r10.this$0     // Catch: java.lang.Throwable -> L8c
            int r1 = r1.isStarted     // Catch: java.lang.Throwable -> L8c
            if (r1 != 0) goto L43
            io.ktor.network.util.Timeout r1 = r10.this$0     // Catch: java.lang.Throwable -> L8c
            kotlin.jvm.functions.Function0 r5 = io.ktor.network.util.Timeout.access$getClock$p(r1)     // Catch: java.lang.Throwable -> L8c
            java.lang.Object r5 = r5.invoke()     // Catch: java.lang.Throwable -> L8c
            java.lang.Number r5 = (java.lang.Number) r5     // Catch: java.lang.Throwable -> L8c
            long r5 = r5.longValue()     // Catch: java.lang.Throwable -> L8c
            r1.lastActivityTime = r5     // Catch: java.lang.Throwable -> L8c
        L43:
            io.ktor.network.util.Timeout r1 = r10.this$0     // Catch: java.lang.Throwable -> L8c
            long r5 = r1.lastActivityTime     // Catch: java.lang.Throwable -> L8c
            io.ktor.network.util.Timeout r1 = r10.this$0     // Catch: java.lang.Throwable -> L8c
            long r7 = io.ktor.network.util.Timeout.access$getTimeoutMs$p(r1)     // Catch: java.lang.Throwable -> L8c
            long r5 = r5 + r7
            io.ktor.network.util.Timeout r1 = r10.this$0     // Catch: java.lang.Throwable -> L8c
            kotlin.jvm.functions.Function0 r1 = io.ktor.network.util.Timeout.access$getClock$p(r1)     // Catch: java.lang.Throwable -> L8c
            java.lang.Object r1 = r1.invoke()     // Catch: java.lang.Throwable -> L8c
            java.lang.Number r1 = (java.lang.Number) r1     // Catch: java.lang.Throwable -> L8c
            long r7 = r1.longValue()     // Catch: java.lang.Throwable -> L8c
            long r5 = r5 - r7
            r7 = 0
            int r1 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r1 > 0) goto L83
            io.ktor.network.util.Timeout r1 = r10.this$0     // Catch: java.lang.Throwable -> L8c
            int r1 = r1.isStarted     // Catch: java.lang.Throwable -> L8c
            if (r1 == 0) goto L83
            r10.label = r3     // Catch: java.lang.Throwable -> L8c
            java.lang.Object r1 = kotlinx.coroutines.YieldKt.yield(r10)     // Catch: java.lang.Throwable -> L8c
            if (r1 != r0) goto L74
            return r0
        L74:
            io.ktor.network.util.Timeout r1 = r10.this$0     // Catch: java.lang.Throwable -> L8c
            kotlin.jvm.functions.Function1 r1 = io.ktor.network.util.Timeout.access$getOnTimeout$p(r1)     // Catch: java.lang.Throwable -> L8c
            r10.label = r2     // Catch: java.lang.Throwable -> L8c
            java.lang.Object r10 = r1.invoke(r10)     // Catch: java.lang.Throwable -> L8c
            if (r10 != r0) goto L8c
            return r0
        L83:
            r10.label = r4     // Catch: java.lang.Throwable -> L8c
            java.lang.Object r1 = kotlinx.coroutines.DelayKt.delay(r5, r10)     // Catch: java.lang.Throwable -> L8c
            if (r1 != r0) goto L2b
            return r0
        L8c:
            kotlin.Unit r10 = kotlin.Unit.INSTANCE
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.network.util.Timeout$initTimeoutJob$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
