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
    public static /* synthetic */ void m630a(Collection collection, Consumer consumer) {
        if (collection instanceof InterfaceC2616b) {
            ((InterfaceC2616b) collection).forEach(consumer);
        } else {
            AbstractC2615a.m606a(collection, consumer);
        }
    }

    /* renamed from: b */
    public static InterfaceC2688s m629b(Collection collection) {
        if (collection instanceof InterfaceC2616b) {
            return ((InterfaceC2616b) collection).spliterator();
        }
        if (collection instanceof LinkedHashSet) {
            LinkedHashSet linkedHashSet = (LinkedHashSet) collection;
            Objects.requireNonNull(linkedHashSet);
            return new C2610G(linkedHashSet, 17);
        } else if (collection instanceof SortedSet) {
            SortedSet sortedSet = (SortedSet) collection;
            return new C2687r(sortedSet, sortedSet, 21);
        } else if (collection instanceof Set) {
            Set set = (Set) collection;
            Objects.requireNonNull(set);
            return new C2610G(set, 1);
        } else if (collection instanceof List) {
            List list = (List) collection;
            Objects.requireNonNull(list);
            return new C2610G(list, 16);
        } else {
            Objects.requireNonNull(collection);
            return new C2610G(collection, 0);
        }
    }

    public static /* synthetic */ boolean removeIf(Collection collection, Predicate predicate) {
        return collection instanceof InterfaceC2616b ? ((InterfaceC2616b) collection).mo551k(predicate) : AbstractC2615a.m599h(collection, predicate);
    }
}
