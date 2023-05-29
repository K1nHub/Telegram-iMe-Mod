package p034j$.util.stream;

import java.util.Collection;
import java.util.HashSet;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import p034j$.util.InterfaceC2727s;
import p034j$.util.concurrent.ConcurrentHashMap;
import p034j$.util.function.InterfaceC2701m;
/* renamed from: j$.util.stream.s */
/* loaded from: classes2.dex */
class C2986s extends AbstractC2894c3 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2986s(AbstractC2890c abstractC2890c, EnumC2907e4 enumC2907e4, int i) {
        super(abstractC2890c, enumC2907e4, i);
    }

    @Override // p034j$.util.stream.AbstractC2890c
    /* renamed from: E0 */
    InterfaceC2733A1 mo285E0(AbstractC3025y2 abstractC3025y2, InterfaceC2727s interfaceC2727s, InterfaceC2701m interfaceC2701m) {
        if (EnumC2901d4.DISTINCT.m420d(abstractC3025y2.mo290s0())) {
            return abstractC3025y2.mo293p0(interfaceC2727s, false, interfaceC2701m);
        }
        if (EnumC2901d4.ORDERED.m420d(abstractC3025y2.mo290s0())) {
            return m328L0(abstractC3025y2, interfaceC2727s);
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        new C2957n0(new C2962o(atomicBoolean, concurrentHashMap), false).mo361c(abstractC3025y2, interfaceC2727s);
        Collection keySet = concurrentHashMap.keySet();
        if (atomicBoolean.get()) {
            HashSet hashSet = new HashSet(keySet);
            hashSet.add(null);
            keySet = hashSet;
        }
        return new C2757E1(keySet);
    }

    @Override // p034j$.util.stream.AbstractC2890c
    /* renamed from: F0 */
    InterfaceC2727s mo284F0(AbstractC3025y2 abstractC3025y2, InterfaceC2727s interfaceC2727s) {
        return EnumC2901d4.DISTINCT.m420d(abstractC3025y2.mo290s0()) ? abstractC3025y2.mo286w0(interfaceC2727s) : EnumC2901d4.ORDERED.m420d(abstractC3025y2.mo290s0()) ? ((C2757E1) m328L0(abstractC3025y2, interfaceC2727s)).spliterator() : new C2955m4(abstractC3025y2.mo286w0(interfaceC2727s));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2890c
    /* renamed from: H0 */
    public InterfaceC2954m3 mo283H0(int i, InterfaceC2954m3 interfaceC2954m3) {
        Objects.requireNonNull(interfaceC2954m3);
        return EnumC2901d4.DISTINCT.m420d(i) ? interfaceC2954m3 : EnumC2901d4.SORTED.m420d(i) ? new C2974q(this, interfaceC2954m3) : new C2980r(this, interfaceC2954m3);
    }

    /* renamed from: L0 */
    InterfaceC2733A1 m328L0(AbstractC3025y2 abstractC3025y2, InterfaceC2727s interfaceC2727s) {
        C2968p c2968p = C2968p.f1015a;
        C2950m c2950m = C2950m.f994a;
        return new C2757E1((Collection) new C3031z2(EnumC2907e4.REFERENCE, C2956n.f1001a, c2950m, c2968p).mo361c(abstractC3025y2, interfaceC2727s));
    }
}
