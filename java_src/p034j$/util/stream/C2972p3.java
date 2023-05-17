package p034j$.util.stream;

import p034j$.util.InterfaceC2727s;
import p034j$.util.function.InterfaceC2701m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.p3 */
/* loaded from: classes2.dex */
public class C2972p3 extends AbstractC2894c3 {

    /* renamed from: l */
    final /* synthetic */ long f1018l;

    /* renamed from: m */
    final /* synthetic */ long f1019m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2972p3(AbstractC2890c abstractC2890c, EnumC2907e4 enumC2907e4, int i, long j, long j2) {
        super(abstractC2890c, enumC2907e4, i);
        this.f1018l = j;
        this.f1019m = j2;
    }

    @Override // p034j$.util.stream.AbstractC2890c
    /* renamed from: E0 */
    InterfaceC2733A1 mo285E0(AbstractC3025y2 abstractC3025y2, InterfaceC2727s interfaceC2727s, InterfaceC2701m interfaceC2701m) {
        long mo292q0 = abstractC3025y2.mo292q0(interfaceC2727s);
        if (mo292q0 > 0 && interfaceC2727s.hasCharacteristics(16384)) {
            return AbstractC3019x2.m310e(abstractC3025y2, AbstractC2741B3.m519b(abstractC3025y2.mo291r0(), interfaceC2727s, this.f1018l, this.f1019m), true, interfaceC2701m);
        }
        return !EnumC2901d4.ORDERED.m420d(abstractC3025y2.mo290s0()) ? AbstractC3019x2.m310e(this, m332L0(abstractC3025y2.mo286w0(interfaceC2727s), this.f1018l, this.f1019m, mo292q0), true, interfaceC2701m) : (InterfaceC2733A1) new C2735A3(this, abstractC3025y2, interfaceC2727s, interfaceC2701m, this.f1018l, this.f1019m).invoke();
    }

    @Override // p034j$.util.stream.AbstractC2890c
    /* renamed from: F0 */
    InterfaceC2727s mo284F0(AbstractC3025y2 abstractC3025y2, InterfaceC2727s interfaceC2727s) {
        long m517d;
        long mo292q0 = abstractC3025y2.mo292q0(interfaceC2727s);
        if (mo292q0 > 0 && interfaceC2727s.hasCharacteristics(16384)) {
            InterfaceC2727s mo286w0 = abstractC3025y2.mo286w0(interfaceC2727s);
            long j = this.f1018l;
            m517d = AbstractC2741B3.m517d(j, this.f1019m);
            return new C2748C4(mo286w0, j, m517d);
        }
        return !EnumC2901d4.ORDERED.m420d(abstractC3025y2.mo290s0()) ? m332L0(abstractC3025y2.mo286w0(interfaceC2727s), this.f1018l, this.f1019m, mo292q0) : ((InterfaceC2733A1) new C2735A3(this, abstractC3025y2, interfaceC2727s, C2960n3.f1004a, this.f1018l, this.f1019m).invoke()).spliterator();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2890c
    /* renamed from: H0 */
    public InterfaceC2954m3 mo283H0(int i, InterfaceC2954m3 interfaceC2954m3) {
        return new C2966o3(this, interfaceC2954m3);
    }

    /* renamed from: L0 */
    InterfaceC2727s m332L0(InterfaceC2727s interfaceC2727s, long j, long j2, long j3) {
        long j4;
        long j5 = 0;
        if (j <= j3) {
            j4 = j2 >= 0 ? Math.min(j2, j3 - j) : j3 - j;
        } else {
            j5 = j;
            j4 = j2;
        }
        return new C2784I4(interfaceC2727s, j5, j4);
    }
}
