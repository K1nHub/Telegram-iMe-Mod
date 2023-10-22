package p033j$.time.zone;

import java.security.AccessController;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.CopyOnWriteArrayList;
import p033j$.util.concurrent.ConcurrentHashMap;
/* renamed from: j$.time.zone.g */
/* loaded from: classes2.dex */
public abstract class AbstractC2762g {

    /* renamed from: a */
    private static final CopyOnWriteArrayList f665a;

    /* renamed from: b */
    private static final ConcurrentMap f666b;

    static {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        f665a = copyOnWriteArrayList;
        f666b = new ConcurrentHashMap(512, 0.75f, 2);
        ArrayList arrayList = new ArrayList();
        AccessController.doPrivileged(new C2760e(arrayList));
        copyOnWriteArrayList.addAll(arrayList);
    }

    /* renamed from: a */
    public static Set m701a() {
        return new HashSet(f666b.keySet());
    }

    /* renamed from: b */
    public static C2758c m700b(String str, boolean z) {
        Objects.requireNonNull(str, "zoneId");
        ConcurrentMap concurrentMap = f666b;
        AbstractC2762g abstractC2762g = (AbstractC2762g) concurrentMap.get(str);
        if (abstractC2762g == null) {
            if (concurrentMap.isEmpty()) {
                throw new C2759d("No time-zone data files registered");
            }
            throw new C2759d("Unknown time-zone ID: " + str);
        }
        return abstractC2762g.mo699c(str, z);
    }

    /* renamed from: e */
    public static void m697e(AbstractC2762g abstractC2762g) {
        Objects.requireNonNull(abstractC2762g, "provider");
        for (String str : abstractC2762g.mo698d()) {
            Objects.requireNonNull(str, "zoneId");
            if (((AbstractC2762g) f666b.putIfAbsent(str, abstractC2762g)) != null) {
                throw new C2759d("Unable to register zone as one already registered with that ID: " + str + ", currently loading from provider: " + abstractC2762g);
            }
        }
        f665a.add(abstractC2762g);
    }

    /* renamed from: c */
    protected abstract C2758c mo699c(String str, boolean z);

    /* renamed from: d */
    protected abstract Set mo698d();
}
