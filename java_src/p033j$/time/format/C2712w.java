package p033j$.time.format;

import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.w */
/* loaded from: classes2.dex */
public final class C2712w {

    /* renamed from: a */
    private final Map f577a;

    /* renamed from: b */
    private final Map f578b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2712w(Map map) {
        Comparator comparator;
        Comparator comparator2;
        this.f577a = map;
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : map.entrySet()) {
            HashMap hashMap2 = new HashMap();
            for (Map.Entry entry2 : ((Map) entry.getValue()).entrySet()) {
                int i = C2692c.f526c;
                hashMap2.put((String) entry2.getValue(), new AbstractMap.SimpleImmutableEntry((String) entry2.getValue(), (Long) entry2.getKey()));
            }
            ArrayList arrayList2 = new ArrayList(hashMap2.values());
            comparator2 = C2692c.f525b;
            Collections.sort(arrayList2, comparator2);
            hashMap.put((EnumC2689B) entry.getKey(), arrayList2);
            arrayList.addAll(arrayList2);
            hashMap.put(null, arrayList);
        }
        comparator = C2692c.f525b;
        Collections.sort(arrayList, comparator);
        this.f578b = hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public String m836a(long j, EnumC2689B enumC2689B) {
        Map map = (Map) this.f577a.get(enumC2689B);
        if (map != null) {
            return (String) map.get(Long.valueOf(j));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public Iterator m835b(EnumC2689B enumC2689B) {
        List list = (List) this.f578b.get(enumC2689B);
        if (list != null) {
            return list.iterator();
        }
        return null;
    }
}
