package p034j$.util.stream;

import java.util.Collection;
import java.util.HashSet;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import p034j$.util.InterfaceC2688s;
import p034j$.util.concurrent.ConcurrentHashMap;
import p034j$.util.function.InterfaceC2662m;
/* renamed from: j$.util.stream.s */
/* loaded from: classes2.dex */
class C2947s extends AbstractC2855c3 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2947s(AbstractC2851c abstractC2851c, EnumC2868e4 enumC2868e4, int i) {
        super(abstractC2851c, enumC2868e4, i);
    }

    @Override // p034j$.util.stream.AbstractC2851c
    /* renamed from: E0 */
    InterfaceC2694A1 mo280E0(AbstractC2986y2 abstractC2986y2, InterfaceC2688s interfaceC2688s, InterfaceC2662m interfaceC2662m) {
        if (EnumC2862d4.DISTINCT.m415d(abstractC2986y2.mo285s0())) {
            return abstractC2986y2.mo288p0(interfaceC2688s, false, interfaceC2662m);
        }
        if (EnumC2862d4.ORDERED.m415d(abstractC2986y2.mo285s0())) {
            return m323L0(abstractC2986y2, interfaceC2688s);
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        new C2918n0(new C2923o(atomicBoolean, concurrentHashMap), false).mo356c(abstractC2986y2, interfaceC2688s);
        Collection keySet = concurrentHashMap.keySet();
        if (atomicBoolean.get()) {
            HashSet hashSet = new HashSet(keySet);
            hashSet.add(null);
            keySet = hashSet;
        }
        return new C2718E1(keySet);
    }

    @Override // p034j$.util.stream.AbstractC2851c
    /* renamed from: F0 */
    InterfaceC2688s mo279F0(AbstractC2986y2 abstractC2986y2, InterfaceC2688s interfaceC2688s) {
        return EnumC2862d4.DISTINCT.m415d(abstractC2986y2.mo285s0()) ? abstractC2986y2.mo281w0(interfaceC2688s) : EnumC2862d4.ORDERED.m415d(abstractC2986y2.mo285s0()) ? ((C2718E1) m323L0(abstractC2986y2, interfaceC2688s)).spliterator() : new C2916m4(abstractC2986y2.mo281w0(interfaceC2688s));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2851c
    /* renamed from: H0 */
    public InterfaceC2915m3 mo278H0(int i, InterfaceC2915m3 interfaceC2915m3) {
        Objects.requireNonNull(interfaceC2915m3);
        return EnumC2862d4.DISTINCT.m415d(i) ? interfaceC2915m3 : EnumC2862d4.SORTED.m415d(i) ? new C2935q(this, interfaceC2915m3) : new C2941r(this, interfaceC2915m3);
    }

    /* renamed from: L0 */
    InterfaceC2694A1 m323L0(AbstractC2986y2 abstractC2986y2, InterfaceC2688s interfaceC2688s) {
        C2929p c2929p = C2929p.f1012a;
        C2911m c2911m = C2911m.f991a;
        return new C2718E1((Collection) new C2992z2(EnumC2868e4.REFERENCE, C2917n.f998a, c2911m, c2929p).mo356c(abstractC2986y2, interfaceC2688s));
    }
}
