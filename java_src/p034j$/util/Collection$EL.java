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
        if (collection instanceof InterfaceC2660b) {
            ((InterfaceC2660b) collection).forEach(consumer);
        } else {
            AbstractC2659a.m610a(collection, consumer);
        }
    }

    /* renamed from: b */
    public static InterfaceC2732s m634b(Collection collection) {
        if (collection instanceof InterfaceC2660b) {
            return ((InterfaceC2660b) collection).spliterator();
        }
        if (collection instanceof LinkedHashSet) {
            LinkedHashSet linkedHashSet = (LinkedHashSet) collection;
            Objects.requireNonNull(linkedHashSet);
            return new C2654G(linkedHashSet, 17);
        } else if (collection instanceof SortedSet) {
            SortedSet sortedSet = (SortedSet) collection;
            return new C2731r(sortedSet, sortedSet, 21);
        } else if (collection instanceof Set) {
            Set set = (Set) collection;
            Objects.requireNonNull(set);
            return new C2654G(set, 1);
        } else if (collection instanceof List) {
            List list = (List) collection;
            Objects.requireNonNull(list);
            return new C2654G(list, 16);
        } else {
            Objects.requireNonNull(collection);
            return new C2654G(collection, 0);
        }
    }

    public static /* synthetic */ boolean removeIf(Collection collection, Predicate predicate) {
        return collection instanceof InterfaceC2660b ? ((InterfaceC2660b) collection).mo556k(predicate) : AbstractC2659a.m603h(collection, predicate);
    }
}
