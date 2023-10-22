package kotlin.collections;

import java.util.AbstractSet;
import java.util.Set;
/* compiled from: AbstractMutableSet.kt */
/* loaded from: classes4.dex */
public abstract class AbstractMutableSet<E> extends AbstractSet<E> implements Set<E> {
    public abstract int getSize();

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ int size() {
        return getSize();
    }
}
