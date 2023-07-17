package p033j$.util.stream;

import java.util.Collection;
import java.util.HashSet;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import p033j$.util.InterfaceC2853s;
import p033j$.util.concurrent.ConcurrentHashMap;
import p033j$.util.function.InterfaceC2827m;
/* renamed from: j$.util.stream.s */
/* loaded from: classes2.dex */
class C3112s extends AbstractC3020c3 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3112s(AbstractC3016c abstractC3016c, EnumC3033e4 enumC3033e4, int i) {
        super(abstractC3016c, enumC3033e4, i);
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: E0 */
    InterfaceC2859A1 mo285E0(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s, InterfaceC2827m interfaceC2827m) {
        if (EnumC3027d4.DISTINCT.m420d(abstractC3151y2.mo290s0())) {
            return abstractC3151y2.mo293p0(interfaceC2853s, false, interfaceC2827m);
        }
        if (EnumC3027d4.ORDERED.m420d(abstractC3151y2.mo290s0())) {
            return m328L0(abstractC3151y2, interfaceC2853s);
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        new C3083n0(new C3088o(atomicBoolean, concurrentHashMap), false).mo361c(abstractC3151y2, interfaceC2853s);
        Collection keySet = concurrentHashMap.keySet();
        if (atomicBoolean.get()) {
            HashSet hashSet = new HashSet(keySet);
            hashSet.add(null);
            keySet = hashSet;
        }
        return new C2883E1(keySet);
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: F0 */
    InterfaceC2853s mo284F0(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s) {
        return EnumC3027d4.DISTINCT.m420d(abstractC3151y2.mo290s0()) ? abstractC3151y2.mo286w0(interfaceC2853s) : EnumC3027d4.ORDERED.m420d(abstractC3151y2.mo290s0()) ? ((C2883E1) m328L0(abstractC3151y2, interfaceC2853s)).spliterator() : new C3081m4(abstractC3151y2.mo286w0(interfaceC2853s));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: H0 */
    public InterfaceC3080m3 mo283H0(int i, InterfaceC3080m3 interfaceC3080m3) {
        Objects.requireNonNull(interfaceC3080m3);
        return EnumC3027d4.DISTINCT.m420d(i) ? interfaceC3080m3 : EnumC3027d4.SORTED.m420d(i) ? new C3100q(this, interfaceC3080m3) : new C3106r(this, interfaceC3080m3);
    }

    /* renamed from: L0 */
    InterfaceC2859A1 m328L0(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s) {
        C3094p c3094p = C3094p.f1097a;
        C3076m c3076m = C3076m.f1076a;
        return new C2883E1((Collection) new C3157z2(EnumC3033e4.REFERENCE, C3082n.f1083a, c3076m, c3094p).mo361c(abstractC3151y2, interfaceC2853s));
    }
}
