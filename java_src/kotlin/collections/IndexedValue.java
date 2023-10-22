package kotlin.collections;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: IndexedValue.kt */
/* loaded from: classes4.dex */
public final class IndexedValue<T> {
    private final int index;
    private final T value;

    public final int component1() {
        return this.index;
    }

    public final T component2() {
        return this.value;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof IndexedValue) {
            IndexedValue indexedValue = (IndexedValue) obj;
            return this.index == indexedValue.index && Intrinsics.areEqual(this.value, indexedValue.value);
        }
        return false;
    }

    public int hashCode() {
        int i = this.index * 31;
        T t = this.value;
        return i + (t == null ? 0 : t.hashCode());
    }

    public String toString() {
        return "IndexedValue(index=" + this.index + ", value=" + this.value + ')';
    }

    public IndexedValue(int i, T t) {
        this.index = i;
        this.value = t;
    }

    public final int getIndex() {
        return this.index;
    }

    public final T getValue() {
        return this.value;
    }
}
