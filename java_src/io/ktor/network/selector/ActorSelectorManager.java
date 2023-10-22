package io.ktor.network.selector;

import java.io.Closeable;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.ClosedSelectorException;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
/* compiled from: ActorSelectorManager.kt */
/* loaded from: classes4.dex */
public final class ActorSelectorManager extends SelectorManagerSupport implements Closeable, CoroutineScope {
    private volatile boolean closed;
    private final ContinuationHolder<Unit, Continuation<Unit>> continuation;
    private final CoroutineContext coroutineContext;
    private volatile boolean inSelect;
    private final LockFreeMPSCQueue<Selectable> selectionQueue;
    private volatile Selector selectorRef;
    private final AtomicLong wakeup;

    public ActorSelectorManager(CoroutineContext context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.wakeup = new AtomicLong();
        this.continuation = new ContinuationHolder<>();
        this.selectionQueue = new LockFreeMPSCQueue<>();
        this.coroutineContext = context.plus(new CoroutineName("selector"));
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new C26591(null), 3, null);
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public CoroutineContext getCoroutineContext() {
        return this.coroutineContext;
    }

    /* compiled from: ActorSelectorManager.kt */
    @DebugMetadata(m143c = "io.ktor.network.selector.ActorSelectorManager$1", m142f = "ActorSelectorManager.kt", m141l = {43}, m140m = "invokeSuspend")
    /* renamed from: io.ktor.network.selector.ActorSelectorManager$1 */
    /* loaded from: classes4.dex */
    static final class C26591 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;

        C26591(Continuation<? super C26591> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C26591(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C26591) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:33:0x0095 A[Catch: all -> 0x0062, LOOP:0: B:28:0x0083->B:33:0x0095, LOOP_END, TRY_ENTER, TryCatch #1 {all -> 0x0062, blocks: (B:19:0x0051, B:20:0x005e, B:28:0x0083, B:30:0x008f, B:33:0x0095, B:27:0x0075, B:26:0x0068), top: B:43:0x0008 }] */
        /* JADX WARN: Removed duplicated region for block: B:51:0x008f A[SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r4v1 */
        /* JADX WARN: Type inference failed for: r4v5 */
        /* JADX WARN: Type inference failed for: r4v9, types: [java.io.Closeable] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r7) {
            /*
                r6 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r6.label
                r2 = 1
                r3 = 0
                if (r1 == 0) goto L26
                if (r1 != r2) goto L1e
                java.lang.Object r0 = r6.L$2
                java.nio.channels.spi.AbstractSelector r0 = (java.nio.channels.spi.AbstractSelector) r0
                java.lang.Object r1 = r6.L$1
                io.ktor.network.selector.ActorSelectorManager r1 = (io.ktor.network.selector.ActorSelectorManager) r1
                java.lang.Object r4 = r6.L$0
                java.io.Closeable r4 = (java.io.Closeable) r4
                kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Throwable -> L1c
                goto L51
            L1c:
                r7 = move-exception
                goto L68
            L1e:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r7.<init>(r0)
                throw r7
            L26:
                kotlin.ResultKt.throwOnFailure(r7)
                io.ktor.network.selector.ActorSelectorManager r7 = io.ktor.network.selector.ActorSelectorManager.this
                java.nio.channels.spi.SelectorProvider r7 = r7.getProvider()
                java.nio.channels.spi.AbstractSelector r7 = r7.openSelector()
                if (r7 == 0) goto Lb8
                io.ktor.network.selector.ActorSelectorManager r1 = io.ktor.network.selector.ActorSelectorManager.this
                io.ktor.network.selector.ActorSelectorManager.access$setSelectorRef$p(r1, r7)
                io.ktor.network.selector.ActorSelectorManager r1 = io.ktor.network.selector.ActorSelectorManager.this
                io.ktor.network.selector.LockFreeMPSCQueue r4 = io.ktor.network.selector.ActorSelectorManager.access$getSelectionQueue$p(r1)     // Catch: java.lang.Throwable -> L64
                r6.L$0 = r7     // Catch: java.lang.Throwable -> L64
                r6.L$1 = r1     // Catch: java.lang.Throwable -> L64
                r6.L$2 = r7     // Catch: java.lang.Throwable -> L64
                r6.label = r2     // Catch: java.lang.Throwable -> L64
                java.lang.Object r4 = io.ktor.network.selector.ActorSelectorManager.access$process(r1, r4, r7, r6)     // Catch: java.lang.Throwable -> L64
                if (r4 != r0) goto L4f
                return r0
            L4f:
                r0 = r7
                r4 = r0
            L51:
                io.ktor.network.selector.ActorSelectorManager.access$setClosed$p(r1, r2)     // Catch: java.lang.Throwable -> L62
                io.ktor.network.selector.LockFreeMPSCQueue r7 = io.ktor.network.selector.ActorSelectorManager.access$getSelectionQueue$p(r1)     // Catch: java.lang.Throwable -> L62
                r7.close()     // Catch: java.lang.Throwable -> L62
                io.ktor.network.selector.ActorSelectorManager.access$setSelectorRef$p(r1, r3)     // Catch: java.lang.Throwable -> L62
            L5e:
                r1.cancelAllSuspensions(r0, r3)     // Catch: java.lang.Throwable -> L62
                goto L83
            L62:
                r7 = move-exception
                goto Lb2
            L64:
                r0 = move-exception
                r4 = r7
                r7 = r0
                r0 = r4
            L68:
                io.ktor.network.selector.ActorSelectorManager.access$setClosed$p(r1, r2)     // Catch: java.lang.Throwable -> La0
                io.ktor.network.selector.LockFreeMPSCQueue r5 = io.ktor.network.selector.ActorSelectorManager.access$getSelectionQueue$p(r1)     // Catch: java.lang.Throwable -> La0
                r5.close()     // Catch: java.lang.Throwable -> La0
                r1.cancelAllSuspensions(r0, r7)     // Catch: java.lang.Throwable -> La0
                io.ktor.network.selector.ActorSelectorManager.access$setClosed$p(r1, r2)     // Catch: java.lang.Throwable -> L62
                io.ktor.network.selector.LockFreeMPSCQueue r7 = io.ktor.network.selector.ActorSelectorManager.access$getSelectionQueue$p(r1)     // Catch: java.lang.Throwable -> L62
                r7.close()     // Catch: java.lang.Throwable -> L62
                io.ktor.network.selector.ActorSelectorManager.access$setSelectorRef$p(r1, r3)     // Catch: java.lang.Throwable -> L62
                goto L5e
            L83:
                io.ktor.network.selector.LockFreeMPSCQueue r7 = io.ktor.network.selector.ActorSelectorManager.access$getSelectionQueue$p(r1)     // Catch: java.lang.Throwable -> L62
                java.lang.Object r7 = r7.removeFirstOrNull()     // Catch: java.lang.Throwable -> L62
                io.ktor.network.selector.Selectable r7 = (io.ktor.network.selector.Selectable) r7     // Catch: java.lang.Throwable -> L62
                if (r7 != 0) goto L95
                kotlin.Unit r7 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L62
                kotlin.p034io.CloseableKt.closeFinally(r4, r3)
                return r7
            L95:
                kotlinx.coroutines.channels.ClosedSendChannelException r0 = new kotlinx.coroutines.channels.ClosedSendChannelException     // Catch: java.lang.Throwable -> L62
                java.lang.String r2 = "Failed to apply interest: selector closed"
                r0.<init>(r2)     // Catch: java.lang.Throwable -> L62
                r1.cancelAllSuspensions(r7, r0)     // Catch: java.lang.Throwable -> L62
                goto L83
            La0:
                r7 = move-exception
                io.ktor.network.selector.ActorSelectorManager.access$setClosed$p(r1, r2)     // Catch: java.lang.Throwable -> L62
                io.ktor.network.selector.LockFreeMPSCQueue r2 = io.ktor.network.selector.ActorSelectorManager.access$getSelectionQueue$p(r1)     // Catch: java.lang.Throwable -> L62
                r2.close()     // Catch: java.lang.Throwable -> L62
                io.ktor.network.selector.ActorSelectorManager.access$setSelectorRef$p(r1, r3)     // Catch: java.lang.Throwable -> L62
                r1.cancelAllSuspensions(r0, r3)     // Catch: java.lang.Throwable -> L62
                throw r7     // Catch: java.lang.Throwable -> L62
            Lb2:
                throw r7     // Catch: java.lang.Throwable -> Lb3
            Lb3:
                r0 = move-exception
                kotlin.p034io.CloseableKt.closeFinally(r4, r7)
                throw r0
            Lb8:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r0 = "openSelector() = null"
                java.lang.String r0 = r0.toString()
                r7.<init>(r0)
                throw r7
            */
            throw new UnsupportedOperationException("Method not decompiled: io.ktor.network.selector.ActorSelectorManager.C26591.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0102  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x009b -> B:19:0x0077). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00b5 -> B:19:0x0077). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00c5 -> B:19:0x0077). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00fa -> B:44:0x00fd). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object process(io.ktor.network.selector.LockFreeMPSCQueue<io.ktor.network.selector.Selectable> r11, java.nio.channels.Selector r12, kotlin.coroutines.Continuation<? super kotlin.Unit> r13) {
        /*
            Method dump skipped, instructions count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.network.selector.ActorSelectorManager.process(io.ktor.network.selector.LockFreeMPSCQueue, java.nio.channels.Selector, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0062  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object select(java.nio.channels.Selector r6, kotlin.coroutines.Continuation<? super java.lang.Integer> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof io.ktor.network.selector.ActorSelectorManager$select$1
            if (r0 == 0) goto L13
            r0 = r7
            io.ktor.network.selector.ActorSelectorManager$select$1 r0 = (io.ktor.network.selector.ActorSelectorManager$select$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.ktor.network.selector.ActorSelectorManager$select$1 r0 = new io.ktor.network.selector.ActorSelectorManager$select$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L39
            if (r2 != r3) goto L31
            java.lang.Object r6 = r0.L$1
            java.nio.channels.Selector r6 = (java.nio.channels.Selector) r6
            java.lang.Object r0 = r0.L$0
            io.ktor.network.selector.ActorSelectorManager r0 = (io.ktor.network.selector.ActorSelectorManager) r0
            kotlin.ResultKt.throwOnFailure(r7)
            goto L4c
        L31:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L39:
            kotlin.ResultKt.throwOnFailure(r7)
            r5.inSelect = r3
            r0.L$0 = r5
            r0.L$1 = r6
            r0.label = r3
            java.lang.Object r7 = kotlinx.coroutines.YieldKt.yield(r0)
            if (r7 != r1) goto L4b
            return r1
        L4b:
            r0 = r5
        L4c:
            java.util.concurrent.atomic.AtomicLong r7 = r0.wakeup
            long r1 = r7.get()
            r3 = 0
            int r7 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            r1 = 0
            if (r7 != 0) goto L62
            r2 = 500(0x1f4, double:2.47E-321)
            int r6 = r6.select(r2)
            r0.inSelect = r1
            goto L6d
        L62:
            r0.inSelect = r1
            java.util.concurrent.atomic.AtomicLong r7 = r0.wakeup
            r7.set(r3)
            int r6 = r6.selectNow()
        L6d:
            java.lang.Integer r6 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r6)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.network.selector.ActorSelectorManager.select(java.nio.channels.Selector, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final void selectWakeup() {
        Selector selector;
        if (this.wakeup.incrementAndGet() == 1 && this.inSelect && (selector = this.selectorRef) != null) {
            selector.wakeup();
        }
    }

    private final void processInterests(LockFreeMPSCQueue<Selectable> lockFreeMPSCQueue, Selector selector) {
        while (true) {
            Selectable removeFirstOrNull = lockFreeMPSCQueue.removeFirstOrNull();
            if (removeFirstOrNull == null) {
                return;
            }
            applyInterest(selector, removeFirstOrNull);
        }
    }

    @Override // io.ktor.network.selector.SelectorManager
    public void notifyClosed(Selectable selectable) {
        SelectionKey keyFor;
        Intrinsics.checkNotNullParameter(selectable, "selectable");
        cancelAllSuspensions(selectable, new ClosedChannelException());
        Selector selector = this.selectorRef;
        if (selector == null || (keyFor = selectable.getChannel().keyFor(selector)) == null) {
            return;
        }
        Intrinsics.checkNotNullExpressionValue(keyFor, "keyFor(selector)");
        keyFor.cancel();
        selectWakeup();
    }

    @Override // io.ktor.network.selector.SelectorManagerSupport
    protected void publishInterest(Selectable selectable) {
        Intrinsics.checkNotNullParameter(selectable, "selectable");
        try {
            if (this.selectionQueue.addLast(selectable)) {
                this.continuation.resume(Unit.INSTANCE);
                selectWakeup();
            } else if (!selectable.getChannel().isOpen()) {
                throw new ClosedChannelException();
            } else {
                throw new ClosedSelectorException();
            }
        } catch (Throwable th) {
            cancelAllSuspensions(selectable, th);
        }
    }

    private final Object receiveOrNull(LockFreeMPSCQueue<Selectable> lockFreeMPSCQueue, Continuation<? super Selectable> continuation) {
        Selectable removeFirstOrNull = lockFreeMPSCQueue.removeFirstOrNull();
        return removeFirstOrNull == null ? receiveOrNullSuspend(lockFreeMPSCQueue, continuation) : removeFirstOrNull;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0045 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object receiveOrNullSuspend(io.ktor.network.selector.LockFreeMPSCQueue<io.ktor.network.selector.Selectable> r8, kotlin.coroutines.Continuation<? super io.ktor.network.selector.Selectable> r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof io.ktor.network.selector.ActorSelectorManager$receiveOrNullSuspend$1
            if (r0 == 0) goto L13
            r0 = r9
            io.ktor.network.selector.ActorSelectorManager$receiveOrNullSuspend$1 r0 = (io.ktor.network.selector.ActorSelectorManager$receiveOrNullSuspend$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.ktor.network.selector.ActorSelectorManager$receiveOrNullSuspend$1 r0 = new io.ktor.network.selector.ActorSelectorManager$receiveOrNullSuspend$1
            r0.<init>(r7, r9)
        L18:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L39
            if (r2 != r3) goto L31
            java.lang.Object r8 = r0.L$1
            io.ktor.network.selector.LockFreeMPSCQueue r8 = (io.ktor.network.selector.LockFreeMPSCQueue) r8
            java.lang.Object r2 = r0.L$0
            io.ktor.network.selector.ActorSelectorManager r2 = (io.ktor.network.selector.ActorSelectorManager) r2
            kotlin.ResultKt.throwOnFailure(r9)
            goto L3d
        L31:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L39:
            kotlin.ResultKt.throwOnFailure(r9)
            r2 = r7
        L3d:
            java.lang.Object r9 = r8.removeFirstOrNull()
            io.ktor.network.selector.Selectable r9 = (io.ktor.network.selector.Selectable) r9
            if (r9 == 0) goto L46
            return r9
        L46:
            boolean r9 = r2.closed
            r4 = 0
            if (r9 == 0) goto L4c
            return r4
        L4c:
            r0.L$0 = r2
            r0.L$1 = r8
            r0.label = r3
            io.ktor.network.selector.ActorSelectorManager$ContinuationHolder<kotlin.Unit, kotlin.coroutines.Continuation<kotlin.Unit>> r9 = r2.continuation
            boolean r5 = r8.isEmpty()
            r6 = 0
            if (r5 == 0) goto L61
            boolean r5 = r2.closed
            if (r5 != 0) goto L61
            r5 = r3
            goto L62
        L61:
            r5 = r6
        L62:
            if (r5 != 0) goto L65
            goto L8b
        L65:
            java.util.concurrent.atomic.AtomicReference r5 = io.ktor.network.selector.ActorSelectorManager.ContinuationHolder.access$getRef$p(r9)
            boolean r5 = r5.compareAndSet(r4, r0)
            if (r5 == 0) goto L9b
            boolean r5 = r8.isEmpty()
            if (r5 == 0) goto L7a
            boolean r5 = r2.closed
            if (r5 != 0) goto L7a
            r6 = r3
        L7a:
            if (r6 != 0) goto L87
            java.util.concurrent.atomic.AtomicReference r9 = io.ktor.network.selector.ActorSelectorManager.ContinuationHolder.access$getRef$p(r9)
            boolean r9 = r9.compareAndSet(r0, r4)
            if (r9 == 0) goto L87
            goto L8b
        L87:
            java.lang.Object r4 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
        L8b:
            if (r4 != 0) goto L8f
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
        L8f:
            java.lang.Object r9 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r4 != r9) goto L98
            kotlin.coroutines.jvm.internal.DebugProbesKt.probeCoroutineSuspended(r0)
        L98:
            if (r4 != r1) goto L3d
            return r1
        L9b:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "Continuation is already set"
            r8.<init>(r9)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.network.selector.ActorSelectorManager.receiveOrNullSuspend(io.ktor.network.selector.LockFreeMPSCQueue, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.closed = true;
        this.selectionQueue.close();
        if (this.continuation.resume(Unit.INSTANCE)) {
            return;
        }
        selectWakeup();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ActorSelectorManager.kt */
    /* loaded from: classes4.dex */
    public static final class ContinuationHolder<R, C extends Continuation<? super R>> {
        private final AtomicReference<C> ref = new AtomicReference<>(null);

        public final boolean resume(R r) {
            C andSet = this.ref.getAndSet(null);
            if (andSet == null) {
                return false;
            }
            Result.Companion companion = Result.Companion;
            andSet.resumeWith(Result.m1935constructorimpl(r));
            return true;
        }
    }
}
