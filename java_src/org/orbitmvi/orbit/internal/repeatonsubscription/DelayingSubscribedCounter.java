package org.orbitmvi.orbit.internal.repeatonsubscription;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
/* compiled from: DelayingSubscribedCounter.kt */
/* loaded from: classes4.dex */
public final class DelayingSubscribedCounter implements SubscribedCounter {
    private static final /* synthetic */ AtomicIntegerFieldUpdater counter$FU = AtomicIntegerFieldUpdater.newUpdater(DelayingSubscribedCounter.class, "counter");
    private static final /* synthetic */ AtomicReferenceFieldUpdater job$FU = AtomicReferenceFieldUpdater.newUpdater(DelayingSubscribedCounter.class, Object.class, "job");
    private final MutableStateFlow<Subscription> _subscribed;
    private volatile /* synthetic */ int counter;
    private volatile /* synthetic */ Object job;
    private Mutex mutex;
    private final long repeatOnSubscribedStopTimeout;
    private final CoroutineScope scope;
    private final Flow<Subscription> subscribed;

    public DelayingSubscribedCounter(CoroutineScope scope, long j) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.scope = scope;
        this.repeatOnSubscribedStopTimeout = j;
        MutableStateFlow<Subscription> MutableStateFlow = StateFlowKt.MutableStateFlow(Subscription.Unsubscribed);
        this._subscribed = MutableStateFlow;
        this.subscribed = FlowKt.asStateFlow(MutableStateFlow);
        this.counter = 0;
        this.mutex = MutexKt.Mutex$default(false, 1, null);
        this.job = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005e A[Catch: all -> 0x006e, TryCatch #0 {all -> 0x006e, blocks: (B:18:0x004e, B:22:0x0061, B:21:0x005e), top: B:28:0x004e }] */
    @Override // org.orbitmvi.orbit.internal.repeatonsubscription.SubscribedCounter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object increment(kotlin.coroutines.Continuation<? super kotlin.Unit> r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof org.orbitmvi.orbit.internal.repeatonsubscription.DelayingSubscribedCounter$increment$1
            if (r0 == 0) goto L13
            r0 = r6
            org.orbitmvi.orbit.internal.repeatonsubscription.DelayingSubscribedCounter$increment$1 r0 = (org.orbitmvi.orbit.internal.repeatonsubscription.DelayingSubscribedCounter$increment$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.orbitmvi.orbit.internal.repeatonsubscription.DelayingSubscribedCounter$increment$1 r0 = new org.orbitmvi.orbit.internal.repeatonsubscription.DelayingSubscribedCounter$increment$1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L3a
            if (r2 != r3) goto L32
            java.lang.Object r1 = r0.L$1
            kotlinx.coroutines.sync.Mutex r1 = (kotlinx.coroutines.sync.Mutex) r1
            java.lang.Object r0 = r0.L$0
            org.orbitmvi.orbit.internal.repeatonsubscription.DelayingSubscribedCounter r0 = (org.orbitmvi.orbit.internal.repeatonsubscription.DelayingSubscribedCounter) r0
            kotlin.ResultKt.throwOnFailure(r6)
            goto L4e
        L32:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L3a:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlinx.coroutines.sync.Mutex r6 = r5.mutex
            r0.L$0 = r5
            r0.L$1 = r6
            r0.label = r3
            java.lang.Object r0 = r6.lock(r4, r0)
            if (r0 != r1) goto L4c
            return r1
        L4c:
            r0 = r5
            r1 = r6
        L4e:
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r6 = org.orbitmvi.orbit.internal.repeatonsubscription.DelayingSubscribedCounter.counter$FU     // Catch: java.lang.Throwable -> L6e
            r6.incrementAndGet(r0)     // Catch: java.lang.Throwable -> L6e
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r6 = org.orbitmvi.orbit.internal.repeatonsubscription.DelayingSubscribedCounter.job$FU     // Catch: java.lang.Throwable -> L6e
            java.lang.Object r6 = r6.getAndSet(r0, r4)     // Catch: java.lang.Throwable -> L6e
            kotlinx.coroutines.Job r6 = (kotlinx.coroutines.Job) r6     // Catch: java.lang.Throwable -> L6e
            if (r6 != 0) goto L5e
            goto L61
        L5e:
            kotlinx.coroutines.Job.DefaultImpls.cancel$default(r6, r4, r3, r4)     // Catch: java.lang.Throwable -> L6e
        L61:
            kotlinx.coroutines.flow.MutableStateFlow<org.orbitmvi.orbit.internal.repeatonsubscription.Subscription> r6 = r0._subscribed     // Catch: java.lang.Throwable -> L6e
            org.orbitmvi.orbit.internal.repeatonsubscription.Subscription r0 = org.orbitmvi.orbit.internal.repeatonsubscription.Subscription.Subscribed     // Catch: java.lang.Throwable -> L6e
            r6.setValue(r0)     // Catch: java.lang.Throwable -> L6e
            kotlin.Unit r6 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L6e
            r1.unlock(r4)
            return r6
        L6e:
            r6 = move-exception
            r1.unlock(r4)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.orbitmvi.orbit.internal.repeatonsubscription.DelayingSubscribedCounter.increment(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0052 A[Catch: all -> 0x0083, TryCatch #0 {all -> 0x0083, blocks: (B:18:0x004e, B:20:0x0052, B:22:0x0056, B:25:0x0060, B:28:0x007a, B:29:0x007d), top: B:35:0x004e }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0060 A[Catch: all -> 0x0083, TryCatch #0 {all -> 0x0083, blocks: (B:18:0x004e, B:20:0x0052, B:22:0x0056, B:25:0x0060, B:28:0x007a, B:29:0x007d), top: B:35:0x004e }] */
    @Override // org.orbitmvi.orbit.internal.repeatonsubscription.SubscribedCounter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object decrement(kotlin.coroutines.Continuation<? super kotlin.Unit> r12) {
        /*
            r11 = this;
            boolean r0 = r12 instanceof org.orbitmvi.orbit.internal.repeatonsubscription.DelayingSubscribedCounter$decrement$1
            if (r0 == 0) goto L13
            r0 = r12
            org.orbitmvi.orbit.internal.repeatonsubscription.DelayingSubscribedCounter$decrement$1 r0 = (org.orbitmvi.orbit.internal.repeatonsubscription.DelayingSubscribedCounter$decrement$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.orbitmvi.orbit.internal.repeatonsubscription.DelayingSubscribedCounter$decrement$1 r0 = new org.orbitmvi.orbit.internal.repeatonsubscription.DelayingSubscribedCounter$decrement$1
            r0.<init>(r11, r12)
        L18:
            java.lang.Object r12 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L3a
            if (r2 != r4) goto L32
            java.lang.Object r1 = r0.L$1
            kotlinx.coroutines.sync.Mutex r1 = (kotlinx.coroutines.sync.Mutex) r1
            java.lang.Object r0 = r0.L$0
            org.orbitmvi.orbit.internal.repeatonsubscription.DelayingSubscribedCounter r0 = (org.orbitmvi.orbit.internal.repeatonsubscription.DelayingSubscribedCounter) r0
            kotlin.ResultKt.throwOnFailure(r12)
            goto L4e
        L32:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r0)
            throw r12
        L3a:
            kotlin.ResultKt.throwOnFailure(r12)
            kotlinx.coroutines.sync.Mutex r12 = r11.mutex
            r0.L$0 = r11
            r0.L$1 = r12
            r0.label = r4
            java.lang.Object r0 = r12.lock(r3, r0)
            if (r0 != r1) goto L4c
            return r1
        L4c:
            r0 = r11
            r1 = r12
        L4e:
            int r12 = r0.counter     // Catch: java.lang.Throwable -> L83
            if (r12 <= 0) goto L55
            int r2 = r12 + (-1)
            goto L56
        L55:
            r2 = 0
        L56:
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r5 = org.orbitmvi.orbit.internal.repeatonsubscription.DelayingSubscribedCounter.counter$FU     // Catch: java.lang.Throwable -> L83
            boolean r2 = r5.compareAndSet(r0, r12, r2)     // Catch: java.lang.Throwable -> L83
            if (r2 == 0) goto L4e
            if (r12 != r4) goto L7d
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r12 = org.orbitmvi.orbit.internal.repeatonsubscription.DelayingSubscribedCounter.job$FU     // Catch: java.lang.Throwable -> L83
            kotlinx.coroutines.CoroutineScope r5 = r0.scope     // Catch: java.lang.Throwable -> L83
            r6 = 0
            r7 = 0
            org.orbitmvi.orbit.internal.repeatonsubscription.DelayingSubscribedCounter$decrement$2$2 r8 = new org.orbitmvi.orbit.internal.repeatonsubscription.DelayingSubscribedCounter$decrement$2$2     // Catch: java.lang.Throwable -> L83
            r8.<init>(r0, r3)     // Catch: java.lang.Throwable -> L83
            r9 = 3
            r10 = 0
            kotlinx.coroutines.Job r2 = kotlinx.coroutines.BuildersKt.launch$default(r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> L83
            java.lang.Object r12 = r12.getAndSet(r0, r2)     // Catch: java.lang.Throwable -> L83
            kotlinx.coroutines.Job r12 = (kotlinx.coroutines.Job) r12     // Catch: java.lang.Throwable -> L83
            if (r12 != 0) goto L7a
            goto L7d
        L7a:
            kotlinx.coroutines.Job.DefaultImpls.cancel$default(r12, r3, r4, r3)     // Catch: java.lang.Throwable -> L83
        L7d:
            kotlin.Unit r12 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L83
            r1.unlock(r3)
            return r12
        L83:
            r12 = move-exception
            r1.unlock(r3)
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: org.orbitmvi.orbit.internal.repeatonsubscription.DelayingSubscribedCounter.decrement(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
