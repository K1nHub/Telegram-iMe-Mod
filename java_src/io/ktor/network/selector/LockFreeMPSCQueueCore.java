package io.ktor.network.selector;

import com.iMe.common.IdFabric$RequestCode;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: LockFreeMPSCQueue.kt */
/* loaded from: classes4.dex */
final class LockFreeMPSCQueueCore<E> {
    public static final Companion Companion = new Companion(null);
    public static final Object REMOVE_FROZEN = new Object() { // from class: io.ktor.network.selector.LockFreeMPSCQueueCore$Companion$REMOVE_FROZEN$1
        public String toString() {
            return "REMOVE_FROZEN";
        }
    };
    private static final /* synthetic */ AtomicReferenceFieldUpdater _next$FU = AtomicReferenceFieldUpdater.newUpdater(LockFreeMPSCQueueCore.class, Object.class, "_next");
    private static final /* synthetic */ AtomicLongFieldUpdater _state$FU = AtomicLongFieldUpdater.newUpdater(LockFreeMPSCQueueCore.class, "_state");
    private volatile /* synthetic */ Object _next = null;
    private volatile /* synthetic */ long _state = 0;
    private final AtomicReferenceArray<Object> array;
    private final int capacity;
    private final int mask;

    public LockFreeMPSCQueueCore(int i) {
        this.capacity = i;
        int i2 = i - 1;
        this.mask = i2;
        this.array = new AtomicReferenceArray<>(i);
        if (!(i2 <= 1073741823)) {
            throw new IllegalStateException("Check failed.".toString());
        }
        if (!((i & i2) == 0)) {
            throw new IllegalStateException("Check failed.".toString());
        }
    }

    public final boolean isEmpty() {
        long j = this._state;
        return ((int) ((1073741823 & j) >> 0)) == ((int) ((j & 1152921503533105152L) >> 30));
    }

    private final LockFreeMPSCQueueCore<E> fillPlaceholder(int i, E e) {
        Object obj = this.array.get(this.mask & i);
        if ((obj instanceof Placeholder) && ((Placeholder) obj).index == i) {
            this.array.set(i & this.mask, e);
            return this;
        }
        return null;
    }

    private final LockFreeMPSCQueueCore<E> allocateOrGetNextCopy(long j) {
        while (true) {
            LockFreeMPSCQueueCore<E> lockFreeMPSCQueueCore = (LockFreeMPSCQueueCore) this._next;
            if (lockFreeMPSCQueueCore != null) {
                return lockFreeMPSCQueueCore;
            }
            _next$FU.compareAndSet(this, null, allocateNextCopy(j));
        }
    }

    public final LockFreeMPSCQueueCore<E> next() {
        return allocateOrGetNextCopy(markFrozen());
    }

    private final LockFreeMPSCQueueCore<E> allocateNextCopy(long j) {
        LockFreeMPSCQueueCore<E> lockFreeMPSCQueueCore = new LockFreeMPSCQueueCore<>(this.capacity * 2);
        int i = (int) ((1073741823 & j) >> 0);
        int i2 = (int) ((1152921503533105152L & j) >> 30);
        while (true) {
            int i3 = this.mask;
            if ((i & i3) != (i2 & i3)) {
                AtomicReferenceArray<Object> atomicReferenceArray = lockFreeMPSCQueueCore.array;
                int i4 = lockFreeMPSCQueueCore.mask & i;
                Object obj = this.array.get(i3 & i);
                if (obj == null) {
                    obj = new Placeholder(i);
                }
                atomicReferenceArray.set(i4, obj);
                i++;
            } else {
                lockFreeMPSCQueueCore._state = Companion.m995wo(j, 1152921504606846976L);
                return lockFreeMPSCQueueCore;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: LockFreeMPSCQueue.kt */
    /* loaded from: classes4.dex */
    public static final class Placeholder {
        public final int index;

        public Placeholder(int i) {
            this.index = i;
        }
    }

    /* compiled from: LockFreeMPSCQueue.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int addFailReason(long j) {
            return (j & 2305843009213693952L) != 0 ? 2 : 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: wo */
        public final long m995wo(long j, long j2) {
            return j & (~j2);
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final long updateHead(long j, int i) {
            return m995wo(j, 1073741823L) | (i << 0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final long updateTail(long j, int i) {
            return m995wo(j, 1152921503533105152L) | (i << 30);
        }
    }

    private final LockFreeMPSCQueueCore<E> removeSlowPath(int i, int i2) {
        long j;
        Companion companion;
        int i3;
        do {
            j = this._state;
            companion = Companion;
            i3 = (int) ((1073741823 & j) >> 0);
            if (!(i3 == i)) {
                throw new IllegalStateException("This queue can have only one consumer".toString());
            }
            if ((1152921504606846976L & j) != 0) {
                return next();
            }
        } while (!_state$FU.compareAndSet(this, j, companion.updateHead(j, i2)));
        this.array.set(this.mask & i3, null);
        return null;
    }

    public final int addLast(E element) {
        long j;
        Companion companion;
        int i;
        Intrinsics.checkNotNullParameter(element, "element");
        do {
            j = this._state;
            if ((3458764513820540928L & j) == 0) {
                companion = Companion;
                i = (int) ((1152921503533105152L & j) >> 30);
                int i2 = this.mask;
                if (((i + 2) & i2) == (((int) ((1073741823 & j) >> 0)) & i2)) {
                    return 1;
                }
            } else {
                return Companion.addFailReason(j);
            }
        } while (!_state$FU.compareAndSet(this, j, companion.updateTail(j, (i + 1) & IdFabric$RequestCode.FILE_SAVING_DIRECTORY)));
        this.array.set(this.mask & i, element);
        LockFreeMPSCQueueCore<E> lockFreeMPSCQueueCore = this;
        while ((lockFreeMPSCQueueCore._state & 1152921504606846976L) != 0 && (lockFreeMPSCQueueCore = lockFreeMPSCQueueCore.next().fillPlaceholder(i, element)) != null) {
        }
        return 0;
    }

    public final Object removeFirstOrNull() {
        Object obj;
        long j = this._state;
        if ((1152921504606846976L & j) != 0) {
            return REMOVE_FROZEN;
        }
        Companion companion = Companion;
        int i = (int) ((1073741823 & j) >> 0);
        int i2 = (int) ((1152921503533105152L & j) >> 30);
        int i3 = this.mask;
        if ((i2 & i3) == (i & i3) || (obj = this.array.get(i3 & i)) == null || (obj instanceof Placeholder)) {
            return null;
        }
        int i4 = (i + 1) & IdFabric$RequestCode.FILE_SAVING_DIRECTORY;
        if (_state$FU.compareAndSet(this, j, companion.updateHead(j, i4))) {
            this.array.set(this.mask & i, null);
            return obj;
        }
        LockFreeMPSCQueueCore<E> lockFreeMPSCQueueCore = this;
        do {
            lockFreeMPSCQueueCore = lockFreeMPSCQueueCore.removeSlowPath(i, i4);
        } while (lockFreeMPSCQueueCore != null);
        return obj;
    }

    public final boolean close() {
        long j;
        do {
            j = this._state;
            if ((j & 2305843009213693952L) != 0) {
                return true;
            }
            if ((1152921504606846976L & j) != 0) {
                return false;
            }
        } while (!_state$FU.compareAndSet(this, j, j | 2305843009213693952L));
        return true;
    }

    private final long markFrozen() {
        long j;
        long j2;
        do {
            j = this._state;
            if ((j & 1152921504606846976L) != 0) {
                return j;
            }
            j2 = j | 1152921504606846976L;
        } while (!_state$FU.compareAndSet(this, j, j2));
        return j2;
    }
}
