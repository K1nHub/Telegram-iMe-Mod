package p034j$.util.stream;

import p034j$.util.InterfaceC2625s;
import p034j$.util.function.InterfaceC2599m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.s3 */
/* loaded from: classes2.dex */
public class C2888s3 extends AbstractC2684J0 {

    /* renamed from: l */
    final /* synthetic */ long f1052l;

    /* renamed from: m */
    final /* synthetic */ long f1053m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2888s3(AbstractC2788c abstractC2788c, EnumC2805e4 enumC2805e4, int i, long j, long j2) {
        super(abstractC2788c, enumC2805e4, i);
        this.f1052l = j;
        this.f1053m = j2;
    }

    @Override // p034j$.util.stream.AbstractC2788c
    /* renamed from: E0 */
    InterfaceC2631A1 mo299E0(AbstractC2923y2 abstractC2923y2, InterfaceC2625s interfaceC2625s, InterfaceC2599m interfaceC2599m) {
        long mo306q0 = abstractC2923y2.mo306q0(interfaceC2625s);
        if (mo306q0 > 0 && interfaceC2625s.hasCharacteristics(16384)) {
            return AbstractC2917x2.m322g(abstractC2923y2, AbstractC2639B3.m533b(abstractC2923y2.mo305r0(), interfaceC2625s, this.f1052l, this.f1053m), true);
        }
        return !EnumC2799d4.ORDERED.m434d(abstractC2923y2.mo304s0()) ? AbstractC2917x2.m322g(this, m340N0((InterfaceC2625s.InterfaceC2627b) abstractC2923y2.mo300w0(interfaceC2625s), this.f1052l, this.f1053m, mo306q0), true) : (InterfaceC2631A1) new C2633A3(this, abstractC2923y2, interfaceC2625s, interfaceC2599m, this.f1052l, this.f1053m).invoke();
    }

    @Override // p034j$.util.stream.AbstractC2788c
    /* renamed from: F0 */
    InterfaceC2625s mo298F0(AbstractC2923y2 abstractC2923y2, InterfaceC2625s interfaceC2625s) {
        long m531d;
        long mo306q0 = abstractC2923y2.mo306q0(interfaceC2625s);
        if (mo306q0 > 0 && interfaceC2625s.hasCharacteristics(16384)) {
            InterfaceC2625s.InterfaceC2627b interfaceC2627b = (InterfaceC2625s.InterfaceC2627b) abstractC2923y2.mo300w0(interfaceC2625s);
            long j = this.f1052l;
            m531d = AbstractC2639B3.m531d(j, this.f1053m);
            return new C2913w4(interfaceC2627b, j, m531d);
        }
        return !EnumC2799d4.ORDERED.m434d(abstractC2923y2.mo304s0()) ? m340N0((InterfaceC2625s.InterfaceC2627b) abstractC2923y2.mo300w0(interfaceC2625s), this.f1052l, this.f1053m, mo306q0) : ((InterfaceC2631A1) new C2633A3(this, abstractC2923y2, interfaceC2625s, C2876q3.f1030a, this.f1052l, this.f1053m).invoke()).spliterator();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2788c
    /* renamed from: H0 */
    public InterfaceC2852m3 mo297H0(int i, InterfaceC2852m3 interfaceC2852m3) {
        return new C2882r3(this, interfaceC2852m3);
    }

    /* renamed from: N0 */
    InterfaceC2625s.InterfaceC2627b m340N0(InterfaceC2625s.InterfaceC2627b interfaceC2627b, long j, long j2, long j3) {
        long j4;
        long j5 = 0;
        if (j <= j3) {
            j4 = j2 >= 0 ? Math.min(j2, j3 - j) : j3 - j;
        } else {
            j5 = j;
            j4 = j2;
        }
        return new C2664F4(interfaceC2627b, j5, j4);
    }
}
