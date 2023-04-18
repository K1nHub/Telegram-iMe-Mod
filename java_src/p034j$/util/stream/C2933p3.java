package p034j$.util.stream;

import p034j$.util.InterfaceC2688s;
import p034j$.util.function.InterfaceC2662m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.p3 */
/* loaded from: classes2.dex */
public class C2933p3 extends AbstractC2855c3 {

    /* renamed from: l */
    final /* synthetic */ long f1015l;

    /* renamed from: m */
    final /* synthetic */ long f1016m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2933p3(AbstractC2851c abstractC2851c, EnumC2868e4 enumC2868e4, int i, long j, long j2) {
        super(abstractC2851c, enumC2868e4, i);
        this.f1015l = j;
        this.f1016m = j2;
    }

    @Override // p034j$.util.stream.AbstractC2851c
    /* renamed from: E0 */
    InterfaceC2694A1 mo280E0(AbstractC2986y2 abstractC2986y2, InterfaceC2688s interfaceC2688s, InterfaceC2662m interfaceC2662m) {
        long mo287q0 = abstractC2986y2.mo287q0(interfaceC2688s);
        if (mo287q0 > 0 && interfaceC2688s.hasCharacteristics(16384)) {
            return AbstractC2980x2.m305e(abstractC2986y2, AbstractC2702B3.m514b(abstractC2986y2.mo286r0(), interfaceC2688s, this.f1015l, this.f1016m), true, interfaceC2662m);
        }
        return !EnumC2862d4.ORDERED.m415d(abstractC2986y2.mo285s0()) ? AbstractC2980x2.m305e(this, m327L0(abstractC2986y2.mo281w0(interfaceC2688s), this.f1015l, this.f1016m, mo287q0), true, interfaceC2662m) : (InterfaceC2694A1) new C2696A3(this, abstractC2986y2, interfaceC2688s, interfaceC2662m, this.f1015l, this.f1016m).invoke();
    }

    @Override // p034j$.util.stream.AbstractC2851c
    /* renamed from: F0 */
    InterfaceC2688s mo279F0(AbstractC2986y2 abstractC2986y2, InterfaceC2688s interfaceC2688s) {
        long m512d;
        long mo287q0 = abstractC2986y2.mo287q0(interfaceC2688s);
        if (mo287q0 > 0 && interfaceC2688s.hasCharacteristics(16384)) {
            InterfaceC2688s mo281w0 = abstractC2986y2.mo281w0(interfaceC2688s);
            long j = this.f1015l;
            m512d = AbstractC2702B3.m512d(j, this.f1016m);
            return new C2709C4(mo281w0, j, m512d);
        }
        return !EnumC2862d4.ORDERED.m415d(abstractC2986y2.mo285s0()) ? m327L0(abstractC2986y2.mo281w0(interfaceC2688s), this.f1015l, this.f1016m, mo287q0) : ((InterfaceC2694A1) new C2696A3(this, abstractC2986y2, interfaceC2688s, C2921n3.f1001a, this.f1015l, this.f1016m).invoke()).spliterator();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2851c
    /* renamed from: H0 */
    public InterfaceC2915m3 mo278H0(int i, InterfaceC2915m3 interfaceC2915m3) {
        return new C2927o3(this, interfaceC2915m3);
    }

    /* renamed from: L0 */
    InterfaceC2688s m327L0(InterfaceC2688s interfaceC2688s, long j, long j2, long j3) {
        long j4;
        long j5 = 0;
        if (j <= j3) {
            j4 = j2 >= 0 ? Math.min(j2, j3 - j) : j3 - j;
        } else {
            j5 = j;
            j4 = j2;
        }
        return new C2745I4(interfaceC2688s, j5, j4);
    }
}
