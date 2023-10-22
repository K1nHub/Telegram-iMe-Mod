package org.ton.logger;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PrintLnLogger.kt */
@DebugMetadata(m143c = "org.ton.logger.PrintLnLogger$job$1", m142f = "PrintLnLogger.kt", m141l = {16}, m140m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class PrintLnLogger$job$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ PrintLnLogger this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PrintLnLogger$job$1(PrintLnLogger printLnLogger, Continuation<? super PrintLnLogger$job$1> continuation) {
        super(2, continuation);
        this.this$0 = printLnLogger;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PrintLnLogger$job$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((PrintLnLogger$job$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002c  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x002c -> B:13:0x0030). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r6) {
        /*
            r5 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r5.label
            r2 = 1
            if (r1 == 0) goto L19
            if (r1 != r2) goto L11
            kotlin.ResultKt.throwOnFailure(r6)
            r1 = r0
            r0 = r5
            goto L30
        L11:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L19:
            kotlin.ResultKt.throwOnFailure(r6)
            r6 = r5
        L1d:
            org.ton.logger.PrintLnLogger r1 = r6.this$0
            kotlinx.coroutines.channels.Channel r1 = org.ton.logger.PrintLnLogger.access$getChannel$p(r1)
            r6.label = r2
            java.lang.Object r1 = r1.receive(r6)
            if (r1 != r0) goto L2c
            return r0
        L2c:
            r4 = r0
            r0 = r6
            r6 = r1
            r1 = r4
        L30:
            kotlin.jvm.functions.Function0 r6 = (kotlin.jvm.functions.Function0) r6
            java.lang.Object r6 = r6.invoke()
            java.io.PrintStream r3 = java.lang.System.out
            r3.println(r6)
            r6 = r0
            r0 = r1
            goto L1d
        */
        throw new UnsupportedOperationException("Method not decompiled: org.ton.logger.PrintLnLogger$job$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
