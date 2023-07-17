package p033j$.util.stream;

import p033j$.util.InterfaceC2853s;
import p033j$.util.function.InterfaceC2827m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.p3 */
/* loaded from: classes2.dex */
public class C3098p3 extends AbstractC3020c3 {

    /* renamed from: l */
    final /* synthetic */ long f1100l;

    /* renamed from: m */
    final /* synthetic */ long f1101m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3098p3(AbstractC3016c abstractC3016c, EnumC3033e4 enumC3033e4, int i, long j, long j2) {
        super(abstractC3016c, enumC3033e4, i);
        this.f1100l = j;
        this.f1101m = j2;
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: E0 */
    InterfaceC2859A1 mo285E0(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s, InterfaceC2827m interfaceC2827m) {
        long mo292q0 = abstractC3151y2.mo292q0(interfaceC2853s);
        if (mo292q0 > 0 && interfaceC2853s.hasCharacteristics(16384)) {
            return AbstractC3145x2.m310e(abstractC3151y2, AbstractC2867B3.m519b(abstractC3151y2.mo291r0(), interfaceC2853s, this.f1100l, this.f1101m), true, interfaceC2827m);
        }
        return !EnumC3027d4.ORDERED.m420d(abstractC3151y2.mo290s0()) ? AbstractC3145x2.m310e(this, m332L0(abstractC3151y2.mo286w0(interfaceC2853s), this.f1100l, this.f1101m, mo292q0), true, interfaceC2827m) : (InterfaceC2859A1) new C2861A3(this, abstractC3151y2, interfaceC2853s, interfaceC2827m, this.f1100l, this.f1101m).invoke();
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: F0 */
    InterfaceC2853s mo284F0(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s) {
        long m517d;
        long mo292q0 = abstractC3151y2.mo292q0(interfaceC2853s);
        if (mo292q0 > 0 && interfaceC2853s.hasCharacteristics(16384)) {
            InterfaceC2853s mo286w0 = abstractC3151y2.mo286w0(interfaceC2853s);
            long j = this.f1100l;
            m517d = AbstractC2867B3.m517d(j, this.f1101m);
            return new C2874C4(mo286w0, j, m517d);
        }
        return !EnumC3027d4.ORDERED.m420d(abstractC3151y2.mo290s0()) ? m332L0(abstractC3151y2.mo286w0(interfaceC2853s), this.f1100l, this.f1101m, mo292q0) : ((InterfaceC2859A1) new C2861A3(this, abstractC3151y2, interfaceC2853s, C3086n3.f1086a, this.f1100l, this.f1101m).invoke()).spliterator();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: H0 */
    public InterfaceC3080m3 mo283H0(int i, InterfaceC3080m3 interfaceC3080m3) {
        return new C3092o3(this, interfaceC3080m3);
    }

    /* renamed from: L0 */
    InterfaceC2853s m332L0(InterfaceC2853s interfaceC2853s, long j, long j2, long j3) {
        long j4;
        long j5 = 0;
        if (j <= j3) {
            j4 = j2 >= 0 ? Math.min(j2, j3 - j) : j3 - j;
        } else {
            j5 = j;
            j4 = j2;
        }
        return new C2910I4(interfaceC2853s, j5, j4);
    }
}
