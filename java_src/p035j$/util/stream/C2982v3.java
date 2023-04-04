package p035j$.util.stream;

import p035j$.util.InterfaceC2701s;
import p035j$.util.function.InterfaceC2675m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.v3 */
/* loaded from: classes2.dex */
public class C2982v3 extends AbstractC2860b1 {

    /* renamed from: l */
    final /* synthetic */ long f1074l;

    /* renamed from: m */
    final /* synthetic */ long f1075m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2982v3(AbstractC2864c abstractC2864c, EnumC2881e4 enumC2881e4, int i, long j, long j2) {
        super(abstractC2864c, enumC2881e4, i);
        this.f1074l = j;
        this.f1075m = j2;
    }

    @Override // p035j$.util.stream.AbstractC2864c
    /* renamed from: E0 */
    InterfaceC2707A1 mo294E0(AbstractC2999y2 abstractC2999y2, InterfaceC2701s interfaceC2701s, InterfaceC2675m interfaceC2675m) {
        long mo301q0 = abstractC2999y2.mo301q0(interfaceC2701s);
        if (mo301q0 > 0 && interfaceC2701s.hasCharacteristics(16384)) {
            return AbstractC2993x2.m316h(abstractC2999y2, AbstractC2715B3.m528b(abstractC2999y2.mo300r0(), interfaceC2701s, this.f1074l, this.f1075m), true);
        }
        return !EnumC2875d4.ORDERED.m429d(abstractC2999y2.mo299s0()) ? AbstractC2993x2.m316h(this, m326N0((InterfaceC2701s.InterfaceC2704c) abstractC2999y2.mo295w0(interfaceC2701s), this.f1074l, this.f1075m, mo301q0), true) : (InterfaceC2707A1) new C2709A3(this, abstractC2999y2, interfaceC2701s, interfaceC2675m, this.f1074l, this.f1075m).invoke();
    }

    @Override // p035j$.util.stream.AbstractC2864c
    /* renamed from: F0 */
    InterfaceC2701s mo293F0(AbstractC2999y2 abstractC2999y2, InterfaceC2701s interfaceC2701s) {
        long m526d;
        long mo301q0 = abstractC2999y2.mo301q0(interfaceC2701s);
        if (mo301q0 > 0 && interfaceC2701s.hasCharacteristics(16384)) {
            InterfaceC2701s.InterfaceC2704c interfaceC2704c = (InterfaceC2701s.InterfaceC2704c) abstractC2999y2.mo295w0(interfaceC2701s);
            long j = this.f1074l;
            m526d = AbstractC2715B3.m526d(j, this.f1075m);
            return new C3001y4(interfaceC2704c, j, m526d);
        }
        return !EnumC2875d4.ORDERED.m429d(abstractC2999y2.mo299s0()) ? m326N0((InterfaceC2701s.InterfaceC2704c) abstractC2999y2.mo295w0(interfaceC2701s), this.f1074l, this.f1075m, mo301q0) : ((InterfaceC2707A1) new C2709A3(this, abstractC2999y2, interfaceC2701s, C2970t3.f1062a, this.f1074l, this.f1075m).invoke()).spliterator();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p035j$.util.stream.AbstractC2864c
    /* renamed from: H0 */
    public InterfaceC2928m3 mo292H0(int i, InterfaceC2928m3 interfaceC2928m3) {
        return new C2976u3(this, interfaceC2928m3);
    }

    /* renamed from: N0 */
    InterfaceC2701s.InterfaceC2704c m326N0(InterfaceC2701s.InterfaceC2704c interfaceC2704c, long j, long j2, long j3) {
        long j4;
        long j5 = 0;
        if (j <= j3) {
            j4 = j2 >= 0 ? Math.min(j2, j3 - j) : j3 - j;
        } else {
            j5 = j;
            j4 = j2;
        }
        return new C2746G4(interfaceC2704c, j5, j4);
    }
}
