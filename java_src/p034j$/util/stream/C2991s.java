package p034j$.util.stream;

import java.util.Collection;
import java.util.HashSet;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import p034j$.util.InterfaceC2732s;
import p034j$.util.concurrent.ConcurrentHashMap;
import p034j$.util.function.InterfaceC2706m;
/* renamed from: j$.util.stream.s */
/* loaded from: classes2.dex */
class C2991s extends AbstractC2899c3 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2991s(AbstractC2895c abstractC2895c, EnumC2912e4 enumC2912e4, int i) {
        super(abstractC2895c, enumC2912e4, i);
    }

    @Override // p034j$.util.stream.AbstractC2895c
    /* renamed from: E0 */
    InterfaceC2738A1 mo285E0(AbstractC3030y2 abstractC3030y2, InterfaceC2732s interfaceC2732s, InterfaceC2706m interfaceC2706m) {
        if (EnumC2906d4.DISTINCT.m420d(abstractC3030y2.mo290s0())) {
            return abstractC3030y2.mo293p0(interfaceC2732s, false, interfaceC2706m);
        }
        if (EnumC2906d4.ORDERED.m420d(abstractC3030y2.mo290s0())) {
            return m328L0(abstractC3030y2, interfaceC2732s);
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        new C2962n0(new C2967o(atomicBoolean, concurrentHashMap), false).mo361c(abstractC3030y2, interfaceC2732s);
        Collection keySet = concurrentHashMap.keySet();
        if (atomicBoolean.get()) {
            HashSet hashSet = new HashSet(keySet);
            hashSet.add(null);
            keySet = hashSet;
        }
        return new C2762E1(keySet);
    }

    @Override // p034j$.util.stream.AbstractC2895c
    /* renamed from: F0 */
    InterfaceC2732s mo284F0(AbstractC3030y2 abstractC3030y2, InterfaceC2732s interfaceC2732s) {
        return EnumC2906d4.DISTINCT.m420d(abstractC3030y2.mo290s0()) ? abstractC3030y2.mo286w0(interfaceC2732s) : EnumC2906d4.ORDERED.m420d(abstractC3030y2.mo290s0()) ? ((C2762E1) m328L0(abstractC3030y2, interfaceC2732s)).spliterator() : new C2960m4(abstractC3030y2.mo286w0(interfaceC2732s));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2895c
    /* renamed from: H0 */
    public InterfaceC2959m3 mo283H0(int i, InterfaceC2959m3 interfaceC2959m3) {
        Objects.requireNonNull(interfaceC2959m3);
        return EnumC2906d4.DISTINCT.m420d(i) ? interfaceC2959m3 : EnumC2906d4.SORTED.m420d(i) ? new C2979q(this, interfaceC2959m3) : new C2985r(this, interfaceC2959m3);
    }

    /* renamed from: L0 */
    InterfaceC2738A1 m328L0(AbstractC3030y2 abstractC3030y2, InterfaceC2732s interfaceC2732s) {
        C2973p c2973p = C2973p.f1015a;
        C2955m c2955m = C2955m.f994a;
        return new C2762E1((Collection) new C3036z2(EnumC2912e4.REFERENCE, C2961n.f1001a, c2955m, c2973p).mo361c(abstractC3030y2, interfaceC2732s));
    }
}
