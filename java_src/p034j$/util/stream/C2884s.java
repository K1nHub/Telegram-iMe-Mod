package p034j$.util.stream;

import java.util.Collection;
import java.util.HashSet;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import p034j$.util.InterfaceC2625s;
import p034j$.util.concurrent.ConcurrentHashMap;
import p034j$.util.function.InterfaceC2599m;
/* renamed from: j$.util.stream.s */
/* loaded from: classes2.dex */
class C2884s extends AbstractC2792c3 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2884s(AbstractC2788c abstractC2788c, EnumC2805e4 enumC2805e4, int i) {
        super(abstractC2788c, enumC2805e4, i);
    }

    @Override // p034j$.util.stream.AbstractC2788c
    /* renamed from: E0 */
    InterfaceC2631A1 mo299E0(AbstractC2923y2 abstractC2923y2, InterfaceC2625s interfaceC2625s, InterfaceC2599m interfaceC2599m) {
        if (EnumC2799d4.DISTINCT.m434d(abstractC2923y2.mo304s0())) {
            return abstractC2923y2.mo307p0(interfaceC2625s, false, interfaceC2599m);
        }
        if (EnumC2799d4.ORDERED.m434d(abstractC2923y2.mo304s0())) {
            return m342L0(abstractC2923y2, interfaceC2625s);
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        new C2855n0(new C2860o(atomicBoolean, concurrentHashMap), false).mo375c(abstractC2923y2, interfaceC2625s);
        Collection keySet = concurrentHashMap.keySet();
        if (atomicBoolean.get()) {
            HashSet hashSet = new HashSet(keySet);
            hashSet.add(null);
            keySet = hashSet;
        }
        return new C2655E1(keySet);
    }

    @Override // p034j$.util.stream.AbstractC2788c
    /* renamed from: F0 */
    InterfaceC2625s mo298F0(AbstractC2923y2 abstractC2923y2, InterfaceC2625s interfaceC2625s) {
        return EnumC2799d4.DISTINCT.m434d(abstractC2923y2.mo304s0()) ? abstractC2923y2.mo300w0(interfaceC2625s) : EnumC2799d4.ORDERED.m434d(abstractC2923y2.mo304s0()) ? ((C2655E1) m342L0(abstractC2923y2, interfaceC2625s)).spliterator() : new C2853m4(abstractC2923y2.mo300w0(interfaceC2625s));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2788c
    /* renamed from: H0 */
    public InterfaceC2852m3 mo297H0(int i, InterfaceC2852m3 interfaceC2852m3) {
        Objects.requireNonNull(interfaceC2852m3);
        return EnumC2799d4.DISTINCT.m434d(i) ? interfaceC2852m3 : EnumC2799d4.SORTED.m434d(i) ? new C2872q(this, interfaceC2852m3) : new C2878r(this, interfaceC2852m3);
    }

    /* renamed from: L0 */
    InterfaceC2631A1 m342L0(AbstractC2923y2 abstractC2923y2, InterfaceC2625s interfaceC2625s) {
        C2866p c2866p = C2866p.f1012a;
        C2848m c2848m = C2848m.f991a;
        return new C2655E1((Collection) new C2929z2(EnumC2805e4.REFERENCE, C2854n.f998a, c2848m, c2866p).mo375c(abstractC2923y2, interfaceC2625s));
    }
}
