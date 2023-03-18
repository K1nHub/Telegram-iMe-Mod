package p034j$.util.stream;

import java.util.Collection;
import java.util.HashSet;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import p034j$.util.InterfaceC2611s;
import p034j$.util.concurrent.ConcurrentHashMap;
import p034j$.util.function.InterfaceC2585m;
/* renamed from: j$.util.stream.s */
/* loaded from: classes2.dex */
class C2870s extends AbstractC2778c3 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2870s(AbstractC2774c abstractC2774c, EnumC2791e4 enumC2791e4, int i) {
        super(abstractC2774c, enumC2791e4, i);
    }

    @Override // p034j$.util.stream.AbstractC2774c
    /* renamed from: E0 */
    InterfaceC2617A1 mo300E0(AbstractC2909y2 abstractC2909y2, InterfaceC2611s interfaceC2611s, InterfaceC2585m interfaceC2585m) {
        if (EnumC2785d4.DISTINCT.m435d(abstractC2909y2.mo305s0())) {
            return abstractC2909y2.mo308p0(interfaceC2611s, false, interfaceC2585m);
        }
        if (EnumC2785d4.ORDERED.m435d(abstractC2909y2.mo305s0())) {
            return m343L0(abstractC2909y2, interfaceC2611s);
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        new C2841n0(new C2846o(atomicBoolean, concurrentHashMap), false).mo376c(abstractC2909y2, interfaceC2611s);
        Collection keySet = concurrentHashMap.keySet();
        if (atomicBoolean.get()) {
            HashSet hashSet = new HashSet(keySet);
            hashSet.add(null);
            keySet = hashSet;
        }
        return new C2641E1(keySet);
    }

    @Override // p034j$.util.stream.AbstractC2774c
    /* renamed from: F0 */
    InterfaceC2611s mo299F0(AbstractC2909y2 abstractC2909y2, InterfaceC2611s interfaceC2611s) {
        return EnumC2785d4.DISTINCT.m435d(abstractC2909y2.mo305s0()) ? abstractC2909y2.mo301w0(interfaceC2611s) : EnumC2785d4.ORDERED.m435d(abstractC2909y2.mo305s0()) ? ((C2641E1) m343L0(abstractC2909y2, interfaceC2611s)).spliterator() : new C2839m4(abstractC2909y2.mo301w0(interfaceC2611s));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2774c
    /* renamed from: H0 */
    public InterfaceC2838m3 mo298H0(int i, InterfaceC2838m3 interfaceC2838m3) {
        Objects.requireNonNull(interfaceC2838m3);
        return EnumC2785d4.DISTINCT.m435d(i) ? interfaceC2838m3 : EnumC2785d4.SORTED.m435d(i) ? new C2858q(this, interfaceC2838m3) : new C2864r(this, interfaceC2838m3);
    }

    /* renamed from: L0 */
    InterfaceC2617A1 m343L0(AbstractC2909y2 abstractC2909y2, InterfaceC2611s interfaceC2611s) {
        C2852p c2852p = C2852p.f1011a;
        C2834m c2834m = C2834m.f990a;
        return new C2641E1((Collection) new C2915z2(EnumC2791e4.REFERENCE, C2840n.f997a, c2834m, c2852p).mo376c(abstractC2909y2, interfaceC2611s));
    }
}
