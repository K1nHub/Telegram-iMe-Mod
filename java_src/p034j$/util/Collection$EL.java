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
    public static /* synthetic */ void m635a(Collection collection, Consumer consumer) {
        if (collection instanceof InterfaceC2655b) {
            ((InterfaceC2655b) collection).forEach(consumer);
        } else {
            AbstractC2654a.m610a(collection, consumer);
        }
    }

    /* renamed from: b */
    public static InterfaceC2727s m634b(Collection collection) {
        if (collection instanceof InterfaceC2655b) {
            return ((InterfaceC2655b) collection).spliterator();
        }
        if (collection instanceof LinkedHashSet) {
            LinkedHashSet linkedHashSet = (LinkedHashSet) collection;
            Objects.requireNonNull(linkedHashSet);
            return new C2649G(linkedHashSet, 17);
        } else if (collection instanceof SortedSet) {
            SortedSet sortedSet = (SortedSet) collection;
            return new C2726r(sortedSet, sortedSet, 21);
        } else if (collection instanceof Set) {
            Set set = (Set) collection;
            Objects.requireNonNull(set);
            return new C2649G(set, 1);
        } else if (collection instanceof List) {
            List list = (List) collection;
            Objects.requireNonNull(list);
            return new C2649G(list, 16);
        } else {
            Objects.requireNonNull(collection);
            return new C2649G(collection, 0);
        }
    }

    public static /* synthetic */ boolean removeIf(Collection collection, Predicate predicate) {
        return collection instanceof InterfaceC2655b ? ((InterfaceC2655b) collection).mo556k(predicate) : AbstractC2654a.m603h(collection, predicate);
    }
}
