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
public abstract class AbstractC2761g {

    /* renamed from: a */
    private static final CopyOnWriteArrayList f665a;

    /* renamed from: b */
    private static final ConcurrentMap f666b;

    static {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        f665a = copyOnWriteArrayList;
        f666b = new ConcurrentHashMap(512, 0.75f, 2);
        ArrayList arrayList = new ArrayList();
        AccessController.doPrivileged(new C2759e(arrayList));
        copyOnWriteArrayList.addAll(arrayList);
    }

    /* renamed from: a */
    public static Set m705a() {
        return new HashSet(f666b.keySet());
    }

    /* renamed from: b */
    public static C2757c m704b(String str, boolean z) {
        Objects.requireNonNull(str, "zoneId");
        ConcurrentMap concurrentMap = f666b;
        AbstractC2761g abstractC2761g = (AbstractC2761g) concurrentMap.get(str);
        if (abstractC2761g == null) {
            if (concurrentMap.isEmpty()) {
                throw new C2758d("No time-zone data files registered");
            }
            throw new C2758d("Unknown time-zone ID: " + str);
        }
        return abstractC2761g.mo703c(str, z);
    }

    /* renamed from: e */
    public static void m701e(AbstractC2761g abstractC2761g) {
        Objects.requireNonNull(abstractC2761g, "provider");
        for (String str : abstractC2761g.mo702d()) {
            Objects.requireNonNull(str, "zoneId");
            if (((AbstractC2761g) f666b.putIfAbsent(str, abstractC2761g)) != null) {
                throw new C2758d("Unable to register zone as one already registered with that ID: " + str + ", currently loading from provider: " + abstractC2761g);
            }
        }
        f665a.add(abstractC2761g);
    }

    /* renamed from: c */
    protected abstract C2757c mo703c(String str, boolean z);

    /* renamed from: d */
    protected abstract Set mo702d();
}
