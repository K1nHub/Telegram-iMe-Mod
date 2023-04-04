package p035j$.util.stream;

import java.util.Collection;
import java.util.HashSet;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import p035j$.util.InterfaceC2701s;
import p035j$.util.concurrent.ConcurrentHashMap;
import p035j$.util.function.InterfaceC2675m;
/* renamed from: j$.util.stream.s */
/* loaded from: classes2.dex */
class C2960s extends AbstractC2868c3 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2960s(AbstractC2864c abstractC2864c, EnumC2881e4 enumC2881e4, int i) {
        super(abstractC2864c, enumC2881e4, i);
    }

    @Override // p035j$.util.stream.AbstractC2864c
    /* renamed from: E0 */
    InterfaceC2707A1 mo294E0(AbstractC2999y2 abstractC2999y2, InterfaceC2701s interfaceC2701s, InterfaceC2675m interfaceC2675m) {
        if (EnumC2875d4.DISTINCT.m429d(abstractC2999y2.mo299s0())) {
            return abstractC2999y2.mo302p0(interfaceC2701s, false, interfaceC2675m);
        }
        if (EnumC2875d4.ORDERED.m429d(abstractC2999y2.mo299s0())) {
            return m337L0(abstractC2999y2, interfaceC2701s);
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        new C2931n0(new C2936o(atomicBoolean, concurrentHashMap), false).mo370c(abstractC2999y2, interfaceC2701s);
        Collection keySet = concurrentHashMap.keySet();
        if (atomicBoolean.get()) {
            HashSet hashSet = new HashSet(keySet);
            hashSet.add(null);
            keySet = hashSet;
        }
        return new C2731E1(keySet);
    }

    @Override // p035j$.util.stream.AbstractC2864c
    /* renamed from: F0 */
    InterfaceC2701s mo293F0(AbstractC2999y2 abstractC2999y2, InterfaceC2701s interfaceC2701s) {
        return EnumC2875d4.DISTINCT.m429d(abstractC2999y2.mo299s0()) ? abstractC2999y2.mo295w0(interfaceC2701s) : EnumC2875d4.ORDERED.m429d(abstractC2999y2.mo299s0()) ? ((C2731E1) m337L0(abstractC2999y2, interfaceC2701s)).spliterator() : new C2929m4(abstractC2999y2.mo295w0(interfaceC2701s));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p035j$.util.stream.AbstractC2864c
    /* renamed from: H0 */
    public InterfaceC2928m3 mo292H0(int i, InterfaceC2928m3 interfaceC2928m3) {
        Objects.requireNonNull(interfaceC2928m3);
        return EnumC2875d4.DISTINCT.m429d(i) ? interfaceC2928m3 : EnumC2875d4.SORTED.m429d(i) ? new C2948q(this, interfaceC2928m3) : new C2954r(this, interfaceC2928m3);
    }

    /* renamed from: L0 */
    InterfaceC2707A1 m337L0(AbstractC2999y2 abstractC2999y2, InterfaceC2701s interfaceC2701s) {
        C2942p c2942p = C2942p.f1017a;
        C2924m c2924m = C2924m.f996a;
        return new C2731E1((Collection) new C3005z2(EnumC2881e4.REFERENCE, C2930n.f1003a, c2924m, c2942p).mo370c(abstractC2999y2, interfaceC2701s));
    }
}
