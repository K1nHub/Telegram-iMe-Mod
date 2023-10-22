package kotlin.collections;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Iterables.kt */
/* loaded from: classes4.dex */
public class CollectionsKt__IterablesKt extends CollectionsKt__CollectionsKt {
    public static final <T> Integer collectionSizeOrNull(Iterable<? extends T> iterable) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        if (iterable instanceof Collection) {
            return Integer.valueOf(((Collection) iterable).size());
        }
        return null;
    }

    public static <T> int collectionSizeOrDefault(Iterable<? extends T> iterable, int i) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        return iterable instanceof Collection ? ((Collection) iterable).size() : i;
    }

    public static <T> List<T> flatten(Iterable<? extends Iterable<? extends T>> iterable) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        ArrayList arrayList = new ArrayList();
        for (Iterable<? extends T> iterable2 : iterable) {
            CollectionsKt.addAll(arrayList, iterable2);
        }
        return arrayList;
    }
}
