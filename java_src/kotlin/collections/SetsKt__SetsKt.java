package kotlin.collections;

import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Sets.kt */
/* loaded from: classes4.dex */
public class SetsKt__SetsKt extends SetsKt__SetsJVMKt {
    public static <T> Set<T> emptySet() {
        return EmptySet.INSTANCE;
    }

    public static <T> Set<T> setOf(T... elements) {
        Set<T> emptySet;
        Set<T> set;
        Intrinsics.checkNotNullParameter(elements, "elements");
        if (elements.length > 0) {
            set = ArraysKt___ArraysKt.toSet(elements);
            return set;
        }
        emptySet = emptySet();
        return emptySet;
    }

    public static <T> Set<T> mutableSetOf(T... elements) {
        int mapCapacity;
        Intrinsics.checkNotNullParameter(elements, "elements");
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(elements.length);
        return (Set) ArraysKt___ArraysKt.toCollection(elements, new LinkedHashSet(mapCapacity));
    }

    public static <T> LinkedHashSet<T> linkedSetOf(T... elements) {
        int mapCapacity;
        Intrinsics.checkNotNullParameter(elements, "elements");
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(elements.length);
        return (LinkedHashSet) ArraysKt___ArraysKt.toCollection(elements, new LinkedHashSet(mapCapacity));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> Set<T> optimizeReadOnlySet(Set<? extends T> set) {
        Set<T> emptySet;
        Set<T> of;
        Intrinsics.checkNotNullParameter(set, "<this>");
        int size = set.size();
        if (size == 0) {
            emptySet = emptySet();
            return emptySet;
        } else if (size != 1) {
            return set;
        } else {
            of = SetsKt__SetsJVMKt.setOf(set.iterator().next());
            return of;
        }
    }
}
