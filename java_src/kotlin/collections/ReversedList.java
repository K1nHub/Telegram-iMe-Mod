package kotlin.collections;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ReversedViews.kt */
/* loaded from: classes4.dex */
public final class ReversedList<T> extends AbstractMutableList<T> {
    private final List<T> delegate;

    public ReversedList(List<T> delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.delegate = delegate;
    }

    @Override // kotlin.collections.AbstractMutableList
    public int getSize() {
        return this.delegate.size();
    }

    @Override // java.util.AbstractList, java.util.List
    public T get(int i) {
        int reverseElementIndex$CollectionsKt__ReversedViewsKt;
        List<T> list = this.delegate;
        reverseElementIndex$CollectionsKt__ReversedViewsKt = CollectionsKt__ReversedViewsKt.reverseElementIndex$CollectionsKt__ReversedViewsKt(this, i);
        return list.get(reverseElementIndex$CollectionsKt__ReversedViewsKt);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        this.delegate.clear();
    }

    @Override // kotlin.collections.AbstractMutableList
    public T removeAt(int i) {
        int reverseElementIndex$CollectionsKt__ReversedViewsKt;
        List<T> list = this.delegate;
        reverseElementIndex$CollectionsKt__ReversedViewsKt = CollectionsKt__ReversedViewsKt.reverseElementIndex$CollectionsKt__ReversedViewsKt(this, i);
        return list.remove(reverseElementIndex$CollectionsKt__ReversedViewsKt);
    }

    @Override // java.util.AbstractList, java.util.List
    public T set(int i, T t) {
        int reverseElementIndex$CollectionsKt__ReversedViewsKt;
        List<T> list = this.delegate;
        reverseElementIndex$CollectionsKt__ReversedViewsKt = CollectionsKt__ReversedViewsKt.reverseElementIndex$CollectionsKt__ReversedViewsKt(this, i);
        return list.set(reverseElementIndex$CollectionsKt__ReversedViewsKt, t);
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i, T t) {
        int reversePositionIndex$CollectionsKt__ReversedViewsKt;
        List<T> list = this.delegate;
        reversePositionIndex$CollectionsKt__ReversedViewsKt = CollectionsKt__ReversedViewsKt.reversePositionIndex$CollectionsKt__ReversedViewsKt(this, i);
        list.add(reversePositionIndex$CollectionsKt__ReversedViewsKt, t);
    }
}
