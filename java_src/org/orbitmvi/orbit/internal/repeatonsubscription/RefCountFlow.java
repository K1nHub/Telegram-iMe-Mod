package org.orbitmvi.orbit.internal.repeatonsubscription;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RefCountFlow.kt */
/* loaded from: classes4.dex */
public final class RefCountFlow<T> implements Flow<T> {
    private final SubscribedCounter subscribedCounter;
    private final Flow<T> upStream;

    /* JADX WARN: Multi-variable type inference failed */
    public RefCountFlow(SubscribedCounter subscribedCounter, Flow<? extends T> upStream) {
        Intrinsics.checkNotNullParameter(subscribedCounter, "subscribedCounter");
        Intrinsics.checkNotNullParameter(upStream, "upStream");
        this.subscribedCounter = subscribedCounter;
        this.upStream = upStream;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0082 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x008f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00a3 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:53:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r9v0, types: [java.lang.Object, kotlinx.coroutines.flow.FlowCollector<? super T>] */
    /* JADX WARN: Type inference failed for: r9v1 */
    @Override // kotlinx.coroutines.flow.Flow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object collect(kotlinx.coroutines.flow.FlowCollector<? super T> r9, kotlin.coroutines.Continuation<? super kotlin.Unit> r10) {
        /*
            r8 = this;
            boolean r0 = r10 instanceof org.orbitmvi.orbit.internal.repeatonsubscription.RefCountFlow$collect$1
            if (r0 == 0) goto L13
            r0 = r10
            org.orbitmvi.orbit.internal.repeatonsubscription.RefCountFlow$collect$1 r0 = (org.orbitmvi.orbit.internal.repeatonsubscription.RefCountFlow$collect$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.orbitmvi.orbit.internal.repeatonsubscription.RefCountFlow$collect$1 r0 = new org.orbitmvi.orbit.internal.repeatonsubscription.RefCountFlow$collect$1
            r0.<init>(r8, r10)
        L18:
            java.lang.Object r10 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 4
            r4 = 3
            r5 = 2
            r6 = 1
            r7 = 0
            if (r2 == 0) goto L60
            if (r2 == r6) goto L50
            if (r2 == r5) goto L44
            if (r2 == r4) goto L40
            if (r2 == r3) goto L37
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L37:
            java.lang.Object r9 = r0.L$0
            java.lang.Throwable r9 = (java.lang.Throwable) r9
            kotlin.ResultKt.throwOnFailure(r10)
            goto La4
        L40:
            kotlin.ResultKt.throwOnFailure(r10)
            goto L90
        L44:
            java.lang.Object r9 = r0.L$0
            org.orbitmvi.orbit.internal.repeatonsubscription.RefCountFlow r9 = (org.orbitmvi.orbit.internal.repeatonsubscription.RefCountFlow) r9
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L4c
            goto L83
        L4c:
            r10 = move-exception
            r2 = r9
            r9 = r10
            goto L95
        L50:
            java.lang.Object r9 = r0.L$1
            kotlinx.coroutines.flow.FlowCollector r9 = (kotlinx.coroutines.flow.FlowCollector) r9
            java.lang.Object r2 = r0.L$0
            org.orbitmvi.orbit.internal.repeatonsubscription.RefCountFlow r2 = (org.orbitmvi.orbit.internal.repeatonsubscription.RefCountFlow) r2
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L5e
            r10 = r9
            r9 = r2
            goto L74
        L5e:
            r9 = move-exception
            goto L95
        L60:
            kotlin.ResultKt.throwOnFailure(r10)
            org.orbitmvi.orbit.internal.repeatonsubscription.SubscribedCounter r10 = r8.subscribedCounter     // Catch: java.lang.Throwable -> L93
            r0.L$0 = r8     // Catch: java.lang.Throwable -> L93
            r0.L$1 = r9     // Catch: java.lang.Throwable -> L93
            r0.label = r6     // Catch: java.lang.Throwable -> L93
            java.lang.Object r10 = r10.increment(r0)     // Catch: java.lang.Throwable -> L93
            if (r10 != r1) goto L72
            return r1
        L72:
            r10 = r9
            r9 = r8
        L74:
            kotlinx.coroutines.flow.Flow<T> r2 = r9.upStream     // Catch: java.lang.Throwable -> L4c
            r0.L$0 = r9     // Catch: java.lang.Throwable -> L4c
            r0.L$1 = r7     // Catch: java.lang.Throwable -> L4c
            r0.label = r5     // Catch: java.lang.Throwable -> L4c
            java.lang.Object r10 = r2.collect(r10, r0)     // Catch: java.lang.Throwable -> L4c
            if (r10 != r1) goto L83
            return r1
        L83:
            org.orbitmvi.orbit.internal.repeatonsubscription.SubscribedCounter r9 = r9.subscribedCounter
            r0.L$0 = r7
            r0.label = r4
            java.lang.Object r9 = r9.decrement(r0)
            if (r9 != r1) goto L90
            return r1
        L90:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        L93:
            r9 = move-exception
            r2 = r8
        L95:
            org.orbitmvi.orbit.internal.repeatonsubscription.SubscribedCounter r10 = r2.subscribedCounter
            r0.L$0 = r9
            r0.L$1 = r7
            r0.label = r3
            java.lang.Object r10 = r10.decrement(r0)
            if (r10 != r1) goto La4
            return r1
        La4:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: org.orbitmvi.orbit.internal.repeatonsubscription.RefCountFlow.collect(kotlinx.coroutines.flow.FlowCollector, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
