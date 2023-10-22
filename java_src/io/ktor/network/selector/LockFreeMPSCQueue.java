package io.ktor.network.selector;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: LockFreeMPSCQueue.kt */
/* loaded from: classes4.dex */
public final class LockFreeMPSCQueue<E> {
    private static final /* synthetic */ AtomicReferenceFieldUpdater _cur$FU = AtomicReferenceFieldUpdater.newUpdater(LockFreeMPSCQueue.class, Object.class, "_cur");
    private volatile /* synthetic */ Object _cur = new LockFreeMPSCQueueCore(8);

    public final boolean isEmpty() {
        return ((LockFreeMPSCQueueCore) this._cur).isEmpty();
    }

    public final boolean addLast(E element) {
        Intrinsics.checkNotNullParameter(element, "element");
        while (true) {
            LockFreeMPSCQueueCore lockFreeMPSCQueueCore = (LockFreeMPSCQueueCore) this._cur;
            int addLast = lockFreeMPSCQueueCore.addLast(element);
            if (addLast == 0) {
                return true;
            }
            if (addLast == 1) {
                _cur$FU.compareAndSet(this, lockFreeMPSCQueueCore, lockFreeMPSCQueueCore.next());
            } else if (addLast == 2) {
                return false;
            }
        }
    }

    public final void close() {
        while (true) {
            LockFreeMPSCQueueCore lockFreeMPSCQueueCore = (LockFreeMPSCQueueCore) this._cur;
            if (lockFreeMPSCQueueCore.close()) {
                return;
            }
            _cur$FU.compareAndSet(this, lockFreeMPSCQueueCore, lockFreeMPSCQueueCore.next());
        }
    }

    public final E removeFirstOrNull() {
        while (true) {
            LockFreeMPSCQueueCore lockFreeMPSCQueueCore = (LockFreeMPSCQueueCore) this._cur;
            E e = (E) lockFreeMPSCQueueCore.removeFirstOrNull();
            if (e != LockFreeMPSCQueueCore.REMOVE_FROZEN) {
                return e;
            }
            _cur$FU.compareAndSet(this, lockFreeMPSCQueueCore, lockFreeMPSCQueueCore.next());
        }
    }
}
