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
public abstract class AbstractC2763g {

    /* renamed from: a */
    private static final CopyOnWriteArrayList f665a;

    /* renamed from: b */
    private static final ConcurrentMap f666b;

    static {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        f665a = copyOnWriteArrayList;
        f666b = new ConcurrentHashMap(512, 0.75f, 2);
        ArrayList arrayList = new ArrayList();
        AccessController.doPrivileged(new C2761e(arrayList));
        copyOnWriteArrayList.addAll(arrayList);
    }

    /* renamed from: a */
    public static Set m702a() {
        return new HashSet(f666b.keySet());
    }

    /* renamed from: b */
    public static C2759c m701b(String str, boolean z) {
        Objects.requireNonNull(str, "zoneId");
        ConcurrentMap concurrentMap = f666b;
        AbstractC2763g abstractC2763g = (AbstractC2763g) concurrentMap.get(str);
        if (abstractC2763g == null) {
            if (concurrentMap.isEmpty()) {
                throw new C2760d("No time-zone data files registered");
            }
            throw new C2760d("Unknown time-zone ID: " + str);
        }
        return abstractC2763g.mo700c(str, z);
    }

    /* renamed from: e */
    public static void m698e(AbstractC2763g abstractC2763g) {
        Objects.requireNonNull(abstractC2763g, "provider");
        for (String str : abstractC2763g.mo699d()) {
            Objects.requireNonNull(str, "zoneId");
            if (((AbstractC2763g) f666b.putIfAbsent(str, abstractC2763g)) != null) {
                throw new C2760d("Unable to register zone as one already registered with that ID: " + str + ", currently loading from provider: " + abstractC2763g);
            }
        }
        f665a.add(abstractC2763g);
    }

    /* renamed from: c */
    protected abstract C2759c mo700c(String str, boolean z);

    /* renamed from: d */
    protected abstract Set mo699d();
}
