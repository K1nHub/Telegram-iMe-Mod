package kotlin.collections.builders;

import java.util.Map;
import java.util.Map.Entry;
import kotlin.collections.AbstractMutableSet;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: MapBuilder.kt */
/* loaded from: classes4.dex */
public abstract class AbstractMapBuilderEntrySet<E extends Map.Entry<? extends K, ? extends V>, K, V> extends AbstractMutableSet<E> {
    public abstract boolean containsEntry(Map.Entry<? extends K, ? extends V> entry);

    public abstract /* bridge */ boolean remove(Map.Entry<?, ?> entry);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            return contains((AbstractMapBuilderEntrySet<E, K, V>) ((Map.Entry) obj));
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ boolean remove(Object obj) {
        if (obj instanceof Map.Entry) {
            return remove((Map.Entry) obj);
        }
        return false;
    }

    public final boolean contains(E element) {
        Intrinsics.checkNotNullParameter(element, "element");
        return containsEntry(element);
    }
}
