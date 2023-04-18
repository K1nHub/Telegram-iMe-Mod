package p034j$.time.format;

import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.q */
/* loaded from: classes2.dex */
public final class C2585q {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2585q(Map map) {
        Comparator comparator;
        Comparator comparator2;
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : map.entrySet()) {
            HashMap hashMap2 = new HashMap();
            for (Map.Entry entry2 : ((Map) entry.getValue()).entrySet()) {
                int i = C2571c.f490b;
                hashMap2.put((String) entry2.getValue(), new AbstractMap.SimpleImmutableEntry((String) entry2.getValue(), (Long) entry2.getKey()));
            }
            ArrayList arrayList2 = new ArrayList(hashMap2.values());
            comparator2 = C2571c.f489a;
            Collections.sort(arrayList2, comparator2);
            hashMap.put((EnumC2589u) entry.getKey(), arrayList2);
            arrayList.addAll(arrayList2);
            hashMap.put(null, arrayList);
        }
        comparator = C2571c.f489a;
        Collections.sort(arrayList, comparator);
    }
}
