package kotlinx.coroutines.selects;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancelHandler;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.internal.Symbol;
/* compiled from: Select.kt */
/* loaded from: classes4.dex */
public class SelectImplementation<R> extends CancelHandler implements SelectInstance, Waiter {
    private static final AtomicReferenceFieldUpdater state$FU = AtomicReferenceFieldUpdater.newUpdater(SelectImplementation.class, Object.class, "state");
    private List<SelectImplementation<R>.ClauseData> clauses;
    private final CoroutineContext context;
    private Object internalResult;
    private volatile Object state;

    @Override // kotlinx.coroutines.Waiter
    public void invokeOnCancellation(Segment<?> segment, int i) {
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        invoke2(th);
        return Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.selects.SelectInstance
    public CoroutineContext getContext() {
        return this.context;
    }

    @Override // kotlinx.coroutines.selects.SelectInstance
    public void selectInRegistrationPhase(Object obj) {
        this.internalResult = obj;
    }

    @Override // kotlinx.coroutines.selects.SelectInstance
    public boolean trySelect(Object obj, Object obj2) {
        return trySelectInternal(obj, obj2) == 0;
    }

    public final TrySelectDetailedResult trySelectDetailed(Object obj, Object obj2) {
        TrySelectDetailedResult TrySelectDetailedResult;
        TrySelectDetailedResult = SelectKt.TrySelectDetailedResult(trySelectInternal(obj, obj2));
        return TrySelectDetailedResult;
    }

    private final int trySelectInternal(Object obj, Object obj2) {
        boolean tryResume;
        Symbol symbol;
        Symbol symbol2;
        Symbol symbol3;
        List listOf;
        List plus;
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = state$FU;
            Object obj3 = atomicReferenceFieldUpdater.get(this);
            if (!(obj3 instanceof CancellableContinuation)) {
                symbol = SelectKt.STATE_COMPLETED;
                if (Intrinsics.areEqual(obj3, symbol) ? true : obj3 instanceof ClauseData) {
                    return 3;
                }
                symbol2 = SelectKt.STATE_CANCELLED;
                if (Intrinsics.areEqual(obj3, symbol2)) {
                    return 2;
                }
                symbol3 = SelectKt.STATE_REG;
                if (Intrinsics.areEqual(obj3, symbol3)) {
                    listOf = CollectionsKt__CollectionsJVMKt.listOf(obj);
                    if (atomicReferenceFieldUpdater.compareAndSet(this, obj3, listOf)) {
                        return 1;
                    }
                } else if (!(obj3 instanceof List)) {
                    throw new IllegalStateException(("Unexpected state: " + obj3).toString());
                } else {
                    plus = CollectionsKt___CollectionsKt.plus((Collection<? extends Object>) ((Collection) ((Collection) obj3)), (Object) obj);
                    if (atomicReferenceFieldUpdater.compareAndSet(this, obj3, plus)) {
                        return 1;
                    }
                }
            } else {
                SelectImplementation<R>.ClauseData findClause = findClause(obj);
                if (findClause == null) {
                    continue;
                } else {
                    Function1<Throwable, Unit> createOnCancellationAction = findClause.createOnCancellationAction(this, obj2);
                    if (atomicReferenceFieldUpdater.compareAndSet(this, obj3, findClause)) {
                        this.internalResult = obj2;
                        tryResume = SelectKt.tryResume((CancellableContinuation) obj3, createOnCancellationAction);
                        return tryResume ? 0 : 2;
                    }
                }
            }
        }
    }

    private final SelectImplementation<R>.ClauseData findClause(Object obj) {
        boolean z;
        List<SelectImplementation<R>.ClauseData> list = this.clauses;
        Object obj2 = null;
        if (list == null) {
            return null;
        }
        Iterator<T> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            if (((ClauseData) next).clauseObject == obj) {
                z = true;
                continue;
            } else {
                z = false;
                continue;
            }
            if (z) {
                obj2 = next;
                break;
            }
        }
        SelectImplementation<R>.ClauseData clauseData = (ClauseData) obj2;
        if (clauseData != null) {
            return clauseData;
        }
        throw new IllegalStateException(("Clause with object " + obj + " is not found").toString());
    }

    @Override // kotlinx.coroutines.CancelHandlerBase
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public void invoke2(Throwable th) {
        Object obj;
        Symbol symbol;
        Symbol symbol2;
        Symbol unused;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = state$FU;
        do {
            obj = atomicReferenceFieldUpdater.get(this);
            symbol = SelectKt.STATE_COMPLETED;
            if (obj == symbol) {
                return;
            }
            symbol2 = SelectKt.STATE_CANCELLED;
        } while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, symbol2));
        List<SelectImplementation<R>.ClauseData> list = this.clauses;
        if (list == null) {
            return;
        }
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            ((ClauseData) it.next()).dispose();
        }
        unused = SelectKt.NO_RESULT;
        this.clauses = null;
    }

    /* compiled from: Select.kt */
    /* loaded from: classes4.dex */
    public final class ClauseData {
        public final Object clauseObject;
        public Object disposableHandleOrSegment;
        public int indexInSegment;
        public final Function3<SelectInstance<?>, Object, Object, Function1<Throwable, Unit>> onCancellationConstructor;
        private final Object param;
        final /* synthetic */ SelectImplementation<R> this$0;

        public final void dispose() {
            Object obj = this.disposableHandleOrSegment;
            SelectImplementation<R> selectImplementation = this.this$0;
            if (obj instanceof Segment) {
                ((Segment) obj).onCancellation(this.indexInSegment, null, selectImplementation.getContext());
                return;
            }
            DisposableHandle disposableHandle = obj instanceof DisposableHandle ? (DisposableHandle) obj : null;
            if (disposableHandle != null) {
                disposableHandle.dispose();
            }
        }

        public final Function1<Throwable, Unit> createOnCancellationAction(SelectInstance<?> selectInstance, Object obj) {
            Function3<SelectInstance<?>, Object, Object, Function1<Throwable, Unit>> function3 = this.onCancellationConstructor;
            if (function3 != null) {
                return function3.invoke(selectInstance, this.param, obj);
            }
            return null;
        }
    }
}
