package kotlin.collections;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: _Maps.kt */
/* loaded from: classes4.dex */
public class MapsKt___MapsKt extends MapsKt___MapsJvmKt {
    public static <K, V> List<Pair<K, V>> toList(Map<? extends K, ? extends V> map) {
        List<Pair<K, V>> listOf;
        List<Pair<K, V>> emptyList;
        List<Pair<K, V>> emptyList2;
        Intrinsics.checkNotNullParameter(map, "<this>");
        if (map.size() == 0) {
            emptyList2 = CollectionsKt__CollectionsKt.emptyList();
            return emptyList2;
        }
        Iterator<Map.Entry<? extends K, ? extends V>> it = map.entrySet().iterator();
        if (!it.hasNext()) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        Map.Entry<? extends K, ? extends V> next = it.next();
        if (!it.hasNext()) {
            listOf = CollectionsKt__CollectionsJVMKt.listOf(new Pair(next.getKey(), next.getValue()));
            return listOf;
        }
        ArrayList arrayList = new ArrayList(map.size());
        arrayList.add(new Pair(next.getKey(), next.getValue()));
        do {
            Map.Entry<? extends K, ? extends V> next2 = it.next();
            arrayList.add(new Pair(next2.getKey(), next2.getValue()));
        } while (it.hasNext());
        return arrayList;
    }
}
