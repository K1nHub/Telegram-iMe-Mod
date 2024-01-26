package kotlin.collections;

import java.util.Collection;
/* compiled from: AbstractMutableCollection.kt */
/* loaded from: classes4.dex */
public abstract class AbstractMutableCollection<E> extends java.util.AbstractCollection<E> implements Collection<E> {
    public abstract int getSize();

    @Override // java.util.AbstractCollection, java.util.Collection
    public final /* bridge */ int size() {
        return getSize();
    }
}
