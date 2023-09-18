package kotlin.collections;

import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: _Sets.kt */
/* loaded from: classes6.dex */
public class SetsKt___SetsKt extends SetsKt__SetsKt {
    public static <T> Set<T> minus(Set<? extends T> set, T t) {
        int mapCapacity;
        Intrinsics.checkNotNullParameter(set, "<this>");
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(set.size());
        LinkedHashSet linkedHashSet = new LinkedHashSet(mapCapacity);
        boolean z = false;
        for (T t2 : set) {
            boolean z2 = true;
            if (!z && Intrinsics.areEqual(t2, t)) {
                z = true;
                z2 = false;
            }
            if (z2) {
                linkedHashSet.add(t2);
            }
        }
        return linkedHashSet;
    }

    public static <T> Set<T> plus(Set<? extends T> set, T t) {
        int mapCapacity;
        Intrinsics.checkNotNullParameter(set, "<this>");
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(set.size() + 1);
        LinkedHashSet linkedHashSet = new LinkedHashSet(mapCapacity);
        linkedHashSet.addAll(set);
        linkedHashSet.add(t);
        return linkedHashSet;
    }

    public static <T> Set<T> plus(Set<? extends T> set, Iterable<? extends T> elements) {
        int size;
        int mapCapacity;
        Intrinsics.checkNotNullParameter(set, "<this>");
        Intrinsics.checkNotNullParameter(elements, "elements");
        Integer collectionSizeOrNull = CollectionsKt__IterablesKt.collectionSizeOrNull(elements);
        if (collectionSizeOrNull != null) {
            size = set.size() + collectionSizeOrNull.intValue();
        } else {
            size = set.size() * 2;
        }
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(size);
        LinkedHashSet linkedHashSet = new LinkedHashSet(mapCapacity);
        linkedHashSet.addAll(set);
        CollectionsKt__MutableCollectionsKt.addAll(linkedHashSet, elements);
        return linkedHashSet;
    }
}
