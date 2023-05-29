package p034j$.util.stream;

import p034j$.util.InterfaceC2732s;
import p034j$.util.function.InterfaceC2706m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.p3 */
/* loaded from: classes2.dex */
public class C2977p3 extends AbstractC2899c3 {

    /* renamed from: l */
    final /* synthetic */ long f1018l;

    /* renamed from: m */
    final /* synthetic */ long f1019m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2977p3(AbstractC2895c abstractC2895c, EnumC2912e4 enumC2912e4, int i, long j, long j2) {
        super(abstractC2895c, enumC2912e4, i);
        this.f1018l = j;
        this.f1019m = j2;
    }

    @Override // p034j$.util.stream.AbstractC2895c
    /* renamed from: E0 */
    InterfaceC2738A1 mo285E0(AbstractC3030y2 abstractC3030y2, InterfaceC2732s interfaceC2732s, InterfaceC2706m interfaceC2706m) {
        long mo292q0 = abstractC3030y2.mo292q0(interfaceC2732s);
        if (mo292q0 > 0 && interfaceC2732s.hasCharacteristics(16384)) {
            return AbstractC3024x2.m310e(abstractC3030y2, AbstractC2746B3.m519b(abstractC3030y2.mo291r0(), interfaceC2732s, this.f1018l, this.f1019m), true, interfaceC2706m);
        }
        return !EnumC2906d4.ORDERED.m420d(abstractC3030y2.mo290s0()) ? AbstractC3024x2.m310e(this, m332L0(abstractC3030y2.mo286w0(interfaceC2732s), this.f1018l, this.f1019m, mo292q0), true, interfaceC2706m) : (InterfaceC2738A1) new C2740A3(this, abstractC3030y2, interfaceC2732s, interfaceC2706m, this.f1018l, this.f1019m).invoke();
    }

    @Override // p034j$.util.stream.AbstractC2895c
    /* renamed from: F0 */
    InterfaceC2732s mo284F0(AbstractC3030y2 abstractC3030y2, InterfaceC2732s interfaceC2732s) {
        long m517d;
        long mo292q0 = abstractC3030y2.mo292q0(interfaceC2732s);
        if (mo292q0 > 0 && interfaceC2732s.hasCharacteristics(16384)) {
            InterfaceC2732s mo286w0 = abstractC3030y2.mo286w0(interfaceC2732s);
            long j = this.f1018l;
            m517d = AbstractC2746B3.m517d(j, this.f1019m);
            return new C2753C4(mo286w0, j, m517d);
        }
        return !EnumC2906d4.ORDERED.m420d(abstractC3030y2.mo290s0()) ? m332L0(abstractC3030y2.mo286w0(interfaceC2732s), this.f1018l, this.f1019m, mo292q0) : ((InterfaceC2738A1) new C2740A3(this, abstractC3030y2, interfaceC2732s, C2965n3.f1004a, this.f1018l, this.f1019m).invoke()).spliterator();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2895c
    /* renamed from: H0 */
    public InterfaceC2959m3 mo283H0(int i, InterfaceC2959m3 interfaceC2959m3) {
        return new C2971o3(this, interfaceC2959m3);
    }

    /* renamed from: L0 */
    InterfaceC2732s m332L0(InterfaceC2732s interfaceC2732s, long j, long j2, long j3) {
        long j4;
        long j5 = 0;
        if (j <= j3) {
            j4 = j2 >= 0 ? Math.min(j2, j3 - j) : j3 - j;
        } else {
            j5 = j;
            j4 = j2;
        }
        return new C2789I4(interfaceC2732s, j5, j4);
    }
}
