package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlinx.coroutines.DebugKt;
/* compiled from: Atomic.kt */
/* loaded from: classes4.dex */
public abstract class AtomicOp<T> extends OpDescriptor {
    private static final AtomicReferenceFieldUpdater _consensus$FU = AtomicReferenceFieldUpdater.newUpdater(AtomicOp.class, Object.class, "_consensus");
    private volatile Object _consensus = AtomicKt.NO_DECISION;

    public abstract void complete(T t, Object obj);

    public abstract Object prepare(T t);

    private final Object decide(Object obj) {
        if (DebugKt.getASSERTIONS_ENABLED()) {
            if (!(obj != AtomicKt.NO_DECISION)) {
                throw new AssertionError();
            }
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _consensus$FU;
        Object obj2 = atomicReferenceFieldUpdater.get(this);
        Object obj3 = AtomicKt.NO_DECISION;
        return obj2 != obj3 ? obj2 : atomicReferenceFieldUpdater.compareAndSet(this, obj3, obj) ? obj : atomicReferenceFieldUpdater.get(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.internal.OpDescriptor
    public final Object perform(Object obj) {
        Object obj2 = _consensus$FU.get(this);
        if (obj2 == AtomicKt.NO_DECISION) {
            obj2 = decide(prepare(obj));
        }
        complete(obj, obj2);
        return obj2;
    }
}
