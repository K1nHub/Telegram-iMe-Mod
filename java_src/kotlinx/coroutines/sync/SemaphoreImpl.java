package kotlinx.coroutines.sync;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.selects.SelectInstance;
/* compiled from: Semaphore.kt */
/* loaded from: classes4.dex */
public class SemaphoreImpl {
    private volatile int _availablePermits;
    private volatile long deqIdx;
    private volatile long enqIdx;
    private volatile Object head;
    private final Function1<Throwable, Unit> onCancellationRelease;
    private final int permits;
    private volatile Object tail;
    private static final AtomicReferenceFieldUpdater head$FU = AtomicReferenceFieldUpdater.newUpdater(SemaphoreImpl.class, Object.class, TtmlNode.TAG_HEAD);
    private static final AtomicLongFieldUpdater deqIdx$FU = AtomicLongFieldUpdater.newUpdater(SemaphoreImpl.class, "deqIdx");
    private static final AtomicReferenceFieldUpdater tail$FU = AtomicReferenceFieldUpdater.newUpdater(SemaphoreImpl.class, Object.class, "tail");
    private static final AtomicLongFieldUpdater enqIdx$FU = AtomicLongFieldUpdater.newUpdater(SemaphoreImpl.class, "enqIdx");
    private static final AtomicIntegerFieldUpdater _availablePermits$FU = AtomicIntegerFieldUpdater.newUpdater(SemaphoreImpl.class, "_availablePermits");

    public SemaphoreImpl(int i, int i2) {
        this.permits = i;
        boolean z = true;
        if (!(i > 0)) {
            throw new IllegalArgumentException(("Semaphore should have at least 1 permit, but had " + i).toString());
        }
        if (!((i2 < 0 || i2 > i) ? false : z)) {
            throw new IllegalArgumentException(("The number of acquired permits should be in 0.." + i).toString());
        }
        SemaphoreSegment semaphoreSegment = new SemaphoreSegment(0L, null, 2);
        this.head = semaphoreSegment;
        this.tail = semaphoreSegment;
        this._availablePermits = i - i2;
        this.onCancellationRelease = new Function1<Throwable, Unit>() { // from class: kotlinx.coroutines.sync.SemaphoreImpl$onCancellationRelease$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
                SemaphoreImpl.this.release();
            }
        };
    }

    public int getAvailablePermits() {
        return Math.max(_availablePermits$FU.get(this), 0);
    }

    public boolean tryAcquire() {
        while (true) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = _availablePermits$FU;
            int i = atomicIntegerFieldUpdater.get(this);
            if (i > this.permits) {
                coerceAvailablePermitsAtMaximum();
            } else if (i <= 0) {
                return false;
            } else {
                if (atomicIntegerFieldUpdater.compareAndSet(this, i, i - 1)) {
                    return true;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void acquire(CancellableContinuation<? super Unit> cancellableContinuation) {
        while (decPermits() <= 0) {
            Intrinsics.checkNotNull(cancellableContinuation, "null cannot be cast to non-null type kotlinx.coroutines.Waiter");
            if (addAcquireToQueue((Waiter) cancellableContinuation)) {
                return;
            }
        }
        cancellableContinuation.resume(Unit.INSTANCE, this.onCancellationRelease);
    }

    private final int decPermits() {
        int andDecrement;
        do {
            andDecrement = _availablePermits$FU.getAndDecrement(this);
        } while (andDecrement > this.permits);
        return andDecrement;
    }

    public void release() {
        do {
            int andIncrement = _availablePermits$FU.getAndIncrement(this);
            if (andIncrement >= this.permits) {
                coerceAvailablePermitsAtMaximum();
                throw new IllegalStateException(("The number of released permits cannot be greater than " + this.permits).toString());
            } else if (andIncrement >= 0) {
                return;
            }
        } while (!tryResumeNextFromQueue());
    }

    private final void coerceAvailablePermitsAtMaximum() {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i;
        int i2;
        do {
            atomicIntegerFieldUpdater = _availablePermits$FU;
            i = atomicIntegerFieldUpdater.get(this);
            i2 = this.permits;
            if (i <= i2) {
                return;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i, i2));
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x0051, code lost:
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0037, code lost:
        r10 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean addAcquireToQueue(kotlinx.coroutines.Waiter r17) {
        /*
            Method dump skipped, instructions count: 238
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.sync.SemaphoreImpl.addAcquireToQueue(kotlinx.coroutines.Waiter):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x004e, code lost:
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0034, code lost:
        r9 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean tryResumeNextFromQueue() {
        /*
            r15 = this;
            r0 = r15
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r1 = kotlinx.coroutines.sync.SemaphoreImpl.head$FU
            java.lang.Object r2 = r1.get(r15)
            kotlinx.coroutines.sync.SemaphoreSegment r2 = (kotlinx.coroutines.sync.SemaphoreSegment) r2
            java.util.concurrent.atomic.AtomicLongFieldUpdater r3 = kotlinx.coroutines.sync.SemaphoreImpl.deqIdx$FU
            long r3 = r3.getAndIncrement(r15)
            int r5 = kotlinx.coroutines.sync.SemaphoreKt.access$getSEGMENT_SIZE$p()
            long r5 = (long) r5
            long r5 = r3 / r5
            kotlinx.coroutines.sync.SemaphoreImpl$tryResumeNextFromQueue$createNewSegment$1 r7 = kotlinx.coroutines.sync.SemaphoreImpl$tryResumeNextFromQueue$createNewSegment$1.INSTANCE
        L18:
            java.lang.Object r8 = kotlinx.coroutines.internal.ConcurrentLinkedListKt.findSegmentInternal(r2, r5, r7)
            boolean r9 = kotlinx.coroutines.internal.SegmentOrClosed.m2118isClosedimpl(r8)
            if (r9 != 0) goto L5b
            kotlinx.coroutines.internal.Segment r9 = kotlinx.coroutines.internal.SegmentOrClosed.m2117getSegmentimpl(r8)
        L26:
            java.lang.Object r12 = r1.get(r15)
            kotlinx.coroutines.internal.Segment r12 = (kotlinx.coroutines.internal.Segment) r12
            long r13 = r12.f1399id
            long r10 = r9.f1399id
            int r10 = (r13 > r10 ? 1 : (r13 == r10 ? 0 : -1))
            if (r10 < 0) goto L36
        L34:
            r9 = 1
            goto L4e
        L36:
            boolean r10 = r9.tryIncPointers$kotlinx_coroutines_core()
            if (r10 != 0) goto L3e
            r9 = 0
            goto L4e
        L3e:
            boolean r10 = r1.compareAndSet(r15, r12, r9)
            if (r10 == 0) goto L51
            boolean r9 = r12.decPointers$kotlinx_coroutines_core()
            if (r9 == 0) goto L34
            r12.remove()
            goto L34
        L4e:
            if (r9 == 0) goto L18
            goto L5b
        L51:
            boolean r10 = r9.decPointers$kotlinx_coroutines_core()
            if (r10 == 0) goto L26
            r9.remove()
            goto L26
        L5b:
            kotlinx.coroutines.internal.Segment r1 = kotlinx.coroutines.internal.SegmentOrClosed.m2117getSegmentimpl(r8)
            kotlinx.coroutines.sync.SemaphoreSegment r1 = (kotlinx.coroutines.sync.SemaphoreSegment) r1
            r1.cleanPrev()
            long r7 = r1.f1399id
            int r2 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r2 <= 0) goto L6c
            r2 = 0
            return r2
        L6c:
            int r2 = kotlinx.coroutines.sync.SemaphoreKt.access$getSEGMENT_SIZE$p()
            long r5 = (long) r2
            long r3 = r3 % r5
            int r2 = (int) r3
            kotlinx.coroutines.internal.Symbol r3 = kotlinx.coroutines.sync.SemaphoreKt.access$getPERMIT$p()
            java.util.concurrent.atomic.AtomicReferenceArray r4 = r1.getAcquirers()
            java.lang.Object r3 = r4.getAndSet(r2, r3)
            if (r3 != 0) goto Laf
            int r3 = kotlinx.coroutines.sync.SemaphoreKt.access$getMAX_SPIN_CYCLES$p()
            r10 = 0
        L86:
            if (r10 >= r3) goto L9c
            java.util.concurrent.atomic.AtomicReferenceArray r4 = r1.getAcquirers()
            java.lang.Object r4 = r4.get(r2)
            kotlinx.coroutines.internal.Symbol r5 = kotlinx.coroutines.sync.SemaphoreKt.access$getTAKEN$p()
            if (r4 != r5) goto L98
            r4 = 1
            return r4
        L98:
            r4 = 1
            int r10 = r10 + 1
            goto L86
        L9c:
            r4 = 1
            kotlinx.coroutines.internal.Symbol r3 = kotlinx.coroutines.sync.SemaphoreKt.access$getPERMIT$p()
            kotlinx.coroutines.internal.Symbol r5 = kotlinx.coroutines.sync.SemaphoreKt.access$getBROKEN$p()
            java.util.concurrent.atomic.AtomicReferenceArray r1 = r1.getAcquirers()
            boolean r1 = r1.compareAndSet(r2, r3, r5)
            r1 = r1 ^ r4
            return r1
        Laf:
            kotlinx.coroutines.internal.Symbol r1 = kotlinx.coroutines.sync.SemaphoreKt.access$getCANCELLED$p()
            if (r3 != r1) goto Lb7
            r1 = 0
            return r1
        Lb7:
            boolean r1 = r15.tryResumeAcquire(r3)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.sync.SemaphoreImpl.tryResumeNextFromQueue():boolean");
    }

    private final boolean tryResumeAcquire(Object obj) {
        if (obj instanceof CancellableContinuation) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
            CancellableContinuation cancellableContinuation = (CancellableContinuation) obj;
            Object tryResume = cancellableContinuation.tryResume(Unit.INSTANCE, null, this.onCancellationRelease);
            if (tryResume != null) {
                cancellableContinuation.completeResume(tryResume);
                return true;
            }
            return false;
        } else if (obj instanceof SelectInstance) {
            return ((SelectInstance) obj).trySelect(this, Unit.INSTANCE);
        } else {
            throw new IllegalStateException(("unexpected: " + obj).toString());
        }
    }
}
