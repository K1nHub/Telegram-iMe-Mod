package kotlinx.coroutines.flow.internal;

import java.util.Arrays;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot;
/* compiled from: AbstractSharedFlow.kt */
/* loaded from: classes4.dex */
public abstract class AbstractSharedFlow<S extends AbstractSharedFlowSlot<?>> {
    private int nCollectors;
    private int nextIndex;
    private S[] slots;

    protected abstract S createSlot();

    protected abstract S[] createSlotArray(int i);

    /* JADX INFO: Access modifiers changed from: protected */
    public final S allocateSlot() {
        S s;
        synchronized (this) {
            S[] sArr = this.slots;
            if (sArr == null) {
                sArr = createSlotArray(2);
                this.slots = sArr;
            } else if (this.nCollectors >= sArr.length) {
                Object[] copyOf = Arrays.copyOf(sArr, sArr.length * 2);
                Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
                this.slots = (S[]) ((AbstractSharedFlowSlot[]) copyOf);
                sArr = (S[]) ((AbstractSharedFlowSlot[]) copyOf);
            }
            int i = this.nextIndex;
            do {
                s = sArr[i];
                if (s == null) {
                    s = createSlot();
                    sArr[i] = s;
                }
                i++;
                if (i >= sArr.length) {
                    i = 0;
                }
                Intrinsics.checkNotNull(s, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>");
            } while (!s.allocateLocked(this));
            this.nextIndex = i;
            this.nCollectors++;
        }
        return s;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void freeSlot(S s) {
        int i;
        Continuation<Unit>[] freeLocked;
        synchronized (this) {
            int i2 = this.nCollectors - 1;
            this.nCollectors = i2;
            if (i2 == 0) {
                this.nextIndex = 0;
            }
            Intrinsics.checkNotNull(s, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>");
            freeLocked = s.freeLocked(this);
        }
        for (Continuation<Unit> continuation : freeLocked) {
            if (continuation != null) {
                Result.Companion companion = Result.Companion;
                continuation.resumeWith(Result.m1935constructorimpl(Unit.INSTANCE));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final S[] getSlots() {
        return this.slots;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int getNCollectors() {
        return this.nCollectors;
    }
}
