package org.ton.tlb;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: TlbCodec.kt */
/* loaded from: classes6.dex */
public final class TlbNegatedResult<T> {
    private final int num;
    private final T value;

    public final int component1() {
        return this.num;
    }

    public final T component2() {
        return this.value;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TlbNegatedResult) {
            TlbNegatedResult tlbNegatedResult = (TlbNegatedResult) obj;
            return this.num == tlbNegatedResult.num && Intrinsics.areEqual(this.value, tlbNegatedResult.value);
        }
        return false;
    }

    public int hashCode() {
        int i = this.num * 31;
        T t = this.value;
        return i + (t == null ? 0 : t.hashCode());
    }

    public String toString() {
        return "TlbNegatedResult(num=" + this.num + ", value=" + this.value + ')';
    }

    public TlbNegatedResult(int i, T t) {
        this.num = i;
        this.value = t;
    }

    public final T getValue() {
        return this.value;
    }
}
