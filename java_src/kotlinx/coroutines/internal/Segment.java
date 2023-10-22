package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.NotCompleted;
import kotlinx.coroutines.internal.Segment;
/* compiled from: ConcurrentLinkedList.kt */
/* loaded from: classes4.dex */
public abstract class Segment<S extends Segment<S>> extends ConcurrentLinkedListNode<S> implements NotCompleted {
    private static final AtomicIntegerFieldUpdater cleanedAndPointers$FU = AtomicIntegerFieldUpdater.newUpdater(Segment.class, "cleanedAndPointers");
    private volatile int cleanedAndPointers;

    /* renamed from: id */
    public final long f1399id;

    public abstract int getNumberOfSlots();

    public abstract void onCancellation(int i, Throwable th, CoroutineContext coroutineContext);

    public Segment(long j, S s, int i) {
        super(s);
        this.f1399id = j;
        this.cleanedAndPointers = i << 16;
    }

    @Override // kotlinx.coroutines.internal.ConcurrentLinkedListNode
    public boolean isRemoved() {
        return cleanedAndPointers$FU.get(this) == getNumberOfSlots() && !isTail();
    }

    public final boolean decPointers$kotlinx_coroutines_core() {
        return cleanedAndPointers$FU.addAndGet(this, -65536) == getNumberOfSlots() && !isTail();
    }

    public final void onSlotCleaned() {
        if (cleanedAndPointers$FU.incrementAndGet(this) == getNumberOfSlots()) {
            remove();
        }
    }

    public final boolean tryIncPointers$kotlinx_coroutines_core() {
        int i;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = cleanedAndPointers$FU;
        do {
            i = atomicIntegerFieldUpdater.get(this);
            if (!(i != getNumberOfSlots() || isTail())) {
                return false;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i, 65536 + i));
        return true;
    }
}
