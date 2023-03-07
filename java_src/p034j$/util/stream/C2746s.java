package p034j$.util.stream;

import java.util.Collection;
import java.util.HashSet;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import p034j$.util.InterfaceC2487s;
import p034j$.util.concurrent.ConcurrentHashMap;
import p034j$.util.function.InterfaceC2461m;
/* renamed from: j$.util.stream.s */
/* loaded from: classes2.dex */
class C2746s extends AbstractC2654c3 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2746s(AbstractC2650c abstractC2650c, EnumC2667e4 enumC2667e4, int i) {
        super(abstractC2650c, enumC2667e4, i);
    }

    @Override // p034j$.util.stream.AbstractC2650c
    /* renamed from: E0 */
    InterfaceC2493A1 mo300E0(AbstractC2785y2 abstractC2785y2, InterfaceC2487s interfaceC2487s, InterfaceC2461m interfaceC2461m) {
        if (EnumC2661d4.DISTINCT.m435d(abstractC2785y2.mo305s0())) {
            return abstractC2785y2.mo308p0(interfaceC2487s, false, interfaceC2461m);
        }
        if (EnumC2661d4.ORDERED.m435d(abstractC2785y2.mo305s0())) {
            return m343L0(abstractC2785y2, interfaceC2487s);
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        new C2717n0(new C2722o(atomicBoolean, concurrentHashMap), false).mo376c(abstractC2785y2, interfaceC2487s);
        Collection keySet = concurrentHashMap.keySet();
        if (atomicBoolean.get()) {
            HashSet hashSet = new HashSet(keySet);
            hashSet.add(null);
            keySet = hashSet;
        }
        return new C2517E1(keySet);
    }

    @Override // p034j$.util.stream.AbstractC2650c
    /* renamed from: F0 */
    InterfaceC2487s mo299F0(AbstractC2785y2 abstractC2785y2, InterfaceC2487s interfaceC2487s) {
        return EnumC2661d4.DISTINCT.m435d(abstractC2785y2.mo305s0()) ? abstractC2785y2.mo301w0(interfaceC2487s) : EnumC2661d4.ORDERED.m435d(abstractC2785y2.mo305s0()) ? ((C2517E1) m343L0(abstractC2785y2, interfaceC2487s)).spliterator() : new C2715m4(abstractC2785y2.mo301w0(interfaceC2487s));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2650c
    /* renamed from: H0 */
    public InterfaceC2714m3 mo298H0(int i, InterfaceC2714m3 interfaceC2714m3) {
        Objects.requireNonNull(interfaceC2714m3);
        return EnumC2661d4.DISTINCT.m435d(i) ? interfaceC2714m3 : EnumC2661d4.SORTED.m435d(i) ? new C2734q(this, interfaceC2714m3) : new C2740r(this, interfaceC2714m3);
    }

    /* renamed from: L0 */
    InterfaceC2493A1 m343L0(AbstractC2785y2 abstractC2785y2, InterfaceC2487s interfaceC2487s) {
        C2728p c2728p = C2728p.f1006a;
        C2710m c2710m = C2710m.f985a;
        return new C2517E1((Collection) new C2791z2(EnumC2667e4.REFERENCE, C2716n.f992a, c2710m, c2728p).mo376c(abstractC2785y2, interfaceC2487s));
    }
}
