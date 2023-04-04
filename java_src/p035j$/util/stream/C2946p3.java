package p035j$.util.stream;

import p035j$.util.InterfaceC2701s;
import p035j$.util.function.InterfaceC2675m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.p3 */
/* loaded from: classes2.dex */
public class C2946p3 extends AbstractC2868c3 {

    /* renamed from: l */
    final /* synthetic */ long f1020l;

    /* renamed from: m */
    final /* synthetic */ long f1021m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2946p3(AbstractC2864c abstractC2864c, EnumC2881e4 enumC2881e4, int i, long j, long j2) {
        super(abstractC2864c, enumC2881e4, i);
        this.f1020l = j;
        this.f1021m = j2;
    }

    @Override // p035j$.util.stream.AbstractC2864c
    /* renamed from: E0 */
    InterfaceC2707A1 mo294E0(AbstractC2999y2 abstractC2999y2, InterfaceC2701s interfaceC2701s, InterfaceC2675m interfaceC2675m) {
        long mo301q0 = abstractC2999y2.mo301q0(interfaceC2701s);
        if (mo301q0 > 0 && interfaceC2701s.hasCharacteristics(16384)) {
            return AbstractC2993x2.m319e(abstractC2999y2, AbstractC2715B3.m528b(abstractC2999y2.mo300r0(), interfaceC2701s, this.f1020l, this.f1021m), true, interfaceC2675m);
        }
        return !EnumC2875d4.ORDERED.m429d(abstractC2999y2.mo299s0()) ? AbstractC2993x2.m319e(this, m341L0(abstractC2999y2.mo295w0(interfaceC2701s), this.f1020l, this.f1021m, mo301q0), true, interfaceC2675m) : (InterfaceC2707A1) new C2709A3(this, abstractC2999y2, interfaceC2701s, interfaceC2675m, this.f1020l, this.f1021m).invoke();
    }

    @Override // p035j$.util.stream.AbstractC2864c
    /* renamed from: F0 */
    InterfaceC2701s mo293F0(AbstractC2999y2 abstractC2999y2, InterfaceC2701s interfaceC2701s) {
        long m526d;
        long mo301q0 = abstractC2999y2.mo301q0(interfaceC2701s);
        if (mo301q0 > 0 && interfaceC2701s.hasCharacteristics(16384)) {
            InterfaceC2701s mo295w0 = abstractC2999y2.mo295w0(interfaceC2701s);
            long j = this.f1020l;
            m526d = AbstractC2715B3.m526d(j, this.f1021m);
            return new C2722C4(mo295w0, j, m526d);
        }
        return !EnumC2875d4.ORDERED.m429d(abstractC2999y2.mo299s0()) ? m341L0(abstractC2999y2.mo295w0(interfaceC2701s), this.f1020l, this.f1021m, mo301q0) : ((InterfaceC2707A1) new C2709A3(this, abstractC2999y2, interfaceC2701s, C2934n3.f1006a, this.f1020l, this.f1021m).invoke()).spliterator();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p035j$.util.stream.AbstractC2864c
    /* renamed from: H0 */
    public InterfaceC2928m3 mo292H0(int i, InterfaceC2928m3 interfaceC2928m3) {
        return new C2940o3(this, interfaceC2928m3);
    }

    /* renamed from: L0 */
    InterfaceC2701s m341L0(InterfaceC2701s interfaceC2701s, long j, long j2, long j3) {
        long j4;
        long j5 = 0;
        if (j <= j3) {
            j4 = j2 >= 0 ? Math.min(j2, j3 - j) : j3 - j;
        } else {
            j5 = j;
            j4 = j2;
        }
        return new C2758I4(interfaceC2701s, j5, j4);
    }
}
