package p033j$.util;

import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.SortedSet;
import p033j$.util.function.Consumer;
import p033j$.util.function.Predicate;
/* renamed from: j$.util.Collection$-EL */
/* loaded from: classes2.dex */
public final /* synthetic */ class Collection$EL {
    /* renamed from: a */
    public static /* synthetic */ void m653a(Collection collection, Consumer consumer) {
        if (collection instanceof InterfaceC2781b) {
            ((InterfaceC2781b) collection).forEach(consumer);
        } else {
            AbstractC2780a.m628a(collection, consumer);
        }
    }

    /* renamed from: b */
    public static InterfaceC2853s m652b(Collection collection) {
        if (collection instanceof InterfaceC2781b) {
            return ((InterfaceC2781b) collection).spliterator();
        }
        if (collection instanceof LinkedHashSet) {
            LinkedHashSet linkedHashSet = (LinkedHashSet) collection;
            Objects.requireNonNull(linkedHashSet);
            return new C2775G(linkedHashSet, 17);
        } else if (collection instanceof SortedSet) {
            SortedSet sortedSet = (SortedSet) collection;
            return new C2852r(sortedSet, sortedSet, 21);
        } else if (collection instanceof Set) {
            Set set = (Set) collection;
            Objects.requireNonNull(set);
            return new C2775G(set, 1);
        } else if (collection instanceof List) {
            List list = (List) collection;
            Objects.requireNonNull(list);
            return new C2775G(list, 16);
        } else {
            Objects.requireNonNull(collection);
            return new C2775G(collection, 0);
        }
    }

    public static /* synthetic */ boolean removeIf(Collection collection, Predicate predicate) {
        return collection instanceof InterfaceC2781b ? ((InterfaceC2781b) collection).mo574k(predicate) : AbstractC2780a.m621h(collection, predicate);
    }
}
