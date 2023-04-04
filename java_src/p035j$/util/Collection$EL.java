package p035j$.util;

import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.SortedSet;
import p035j$.util.function.Consumer;
import p035j$.util.function.Predicate;
/* renamed from: j$.util.Collection$-EL */
/* loaded from: classes2.dex */
public final /* synthetic */ class Collection$EL {
    /* renamed from: a */
    public static /* synthetic */ void m644a(Collection collection, Consumer consumer) {
        if (collection instanceof InterfaceC2629b) {
            ((InterfaceC2629b) collection).forEach(consumer);
        } else {
            AbstractC2628a.m620a(collection, consumer);
        }
    }

    /* renamed from: b */
    public static InterfaceC2701s m643b(Collection collection) {
        if (collection instanceof InterfaceC2629b) {
            return ((InterfaceC2629b) collection).spliterator();
        }
        if (collection instanceof LinkedHashSet) {
            LinkedHashSet linkedHashSet = (LinkedHashSet) collection;
            Objects.requireNonNull(linkedHashSet);
            return new C2623G(linkedHashSet, 17);
        } else if (collection instanceof SortedSet) {
            SortedSet sortedSet = (SortedSet) collection;
            return new C2700r(sortedSet, sortedSet, 21);
        } else if (collection instanceof Set) {
            Set set = (Set) collection;
            Objects.requireNonNull(set);
            return new C2623G(set, 1);
        } else if (collection instanceof List) {
            List list = (List) collection;
            Objects.requireNonNull(list);
            return new C2623G(list, 16);
        } else {
            Objects.requireNonNull(collection);
            return new C2623G(collection, 0);
        }
    }

    public static /* synthetic */ boolean removeIf(Collection collection, Predicate predicate) {
        return collection instanceof InterfaceC2629b ? ((InterfaceC2629b) collection).mo565k(predicate) : AbstractC2628a.m613h(collection, predicate);
    }
}
