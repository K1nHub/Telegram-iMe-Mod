package p034j$.util;

import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.SortedSet;
import p034j$.util.function.Consumer;
import p034j$.util.function.Predicate;
/* renamed from: j$.util.Collection$-EL */
/* loaded from: classes2.dex */
public final /* synthetic */ class Collection$EL {
    /* renamed from: a */
    public static /* synthetic */ void m649a(Collection collection, Consumer consumer) {
        if (collection instanceof InterfaceC2553b) {
            ((InterfaceC2553b) collection).forEach(consumer);
        } else {
            AbstractC2552a.m625a(collection, consumer);
        }
    }

    /* renamed from: b */
    public static InterfaceC2625s m648b(Collection collection) {
        if (collection instanceof InterfaceC2553b) {
            return ((InterfaceC2553b) collection).spliterator();
        }
        if (collection instanceof LinkedHashSet) {
            LinkedHashSet linkedHashSet = (LinkedHashSet) collection;
            Objects.requireNonNull(linkedHashSet);
            return new C2547G(linkedHashSet, 17);
        } else if (collection instanceof SortedSet) {
            SortedSet sortedSet = (SortedSet) collection;
            return new C2624r(sortedSet, sortedSet, 21);
        } else if (collection instanceof Set) {
            Set set = (Set) collection;
            Objects.requireNonNull(set);
            return new C2547G(set, 1);
        } else if (collection instanceof List) {
            List list = (List) collection;
            Objects.requireNonNull(list);
            return new C2547G(list, 16);
        } else {
            Objects.requireNonNull(collection);
            return new C2547G(collection, 0);
        }
    }

    public static /* synthetic */ boolean removeIf(Collection collection, Predicate predicate) {
        return collection instanceof InterfaceC2553b ? ((InterfaceC2553b) collection).mo570k(predicate) : AbstractC2552a.m618h(collection, predicate);
    }
}
