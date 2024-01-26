package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
/* compiled from: LockFreeTaskQueue.kt */
/* loaded from: classes4.dex */
public class LockFreeTaskQueue<E> {
    private static final AtomicReferenceFieldUpdater _cur$FU = AtomicReferenceFieldUpdater.newUpdater(LockFreeTaskQueue.class, Object.class, "_cur");
    private volatile Object _cur;

    public LockFreeTaskQueue(boolean z) {
        this._cur = new LockFreeTaskQueueCore(8, z);
    }

    public final int getSize() {
        return ((LockFreeTaskQueueCore) _cur$FU.get(this)).getSize();
    }

    public final void close() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _cur$FU;
        while (true) {
            LockFreeTaskQueueCore lockFreeTaskQueueCore = (LockFreeTaskQueueCore) atomicReferenceFieldUpdater.get(this);
            if (lockFreeTaskQueueCore.close()) {
                return;
            }
            _cur$FU.compareAndSet(this, lockFreeTaskQueueCore, lockFreeTaskQueueCore.next());
        }
    }

    public final boolean addLast(E e) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _cur$FU;
        while (true) {
            LockFreeTaskQueueCore lockFreeTaskQueueCore = (LockFreeTaskQueueCore) atomicReferenceFieldUpdater.get(this);
            int addLast = lockFreeTaskQueueCore.addLast(e);
            if (addLast == 0) {
                return true;
            }
            if (addLast == 1) {
                _cur$FU.compareAndSet(this, lockFreeTaskQueueCore, lockFreeTaskQueueCore.next());
            } else if (addLast == 2) {
                return false;
            }
        }
    }

    public final E removeFirstOrNull() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _cur$FU;
        while (true) {
            LockFreeTaskQueueCore lockFreeTaskQueueCore = (LockFreeTaskQueueCore) atomicReferenceFieldUpdater.get(this);
            E e = (E) lockFreeTaskQueueCore.removeFirstOrNull();
            if (e != LockFreeTaskQueueCore.REMOVE_FROZEN) {
                return e;
            }
            _cur$FU.compareAndSet(this, lockFreeTaskQueueCore, lockFreeTaskQueueCore.next());
        }
    }
}
