package p033j$.util.stream;

import p033j$.util.InterfaceC2853s;
import p033j$.util.function.InterfaceC2827m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.s3 */
/* loaded from: classes2.dex */
public class C3116s3 extends AbstractC2912J0 {

    /* renamed from: l */
    final /* synthetic */ long f1140l;

    /* renamed from: m */
    final /* synthetic */ long f1141m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3116s3(AbstractC3016c abstractC3016c, EnumC3033e4 enumC3033e4, int i, long j, long j2) {
        super(abstractC3016c, enumC3033e4, i);
        this.f1140l = j;
        this.f1141m = j2;
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: E0 */
    InterfaceC2859A1 mo303E0(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s, InterfaceC2827m interfaceC2827m) {
        long mo310q0 = abstractC3151y2.mo310q0(interfaceC2853s);
        if (mo310q0 > 0 && interfaceC2853s.hasCharacteristics(16384)) {
            return AbstractC3145x2.m326g(abstractC3151y2, AbstractC2867B3.m537b(abstractC3151y2.mo309r0(), interfaceC2853s, this.f1140l, this.f1141m), true);
        }
        return !EnumC3027d4.ORDERED.m438d(abstractC3151y2.mo308s0()) ? AbstractC3145x2.m326g(this, m344N0((InterfaceC2853s.InterfaceC2855b) abstractC3151y2.mo304w0(interfaceC2853s), this.f1140l, this.f1141m, mo310q0), true) : (InterfaceC2859A1) new C2861A3(this, abstractC3151y2, interfaceC2853s, interfaceC2827m, this.f1140l, this.f1141m).invoke();
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: F0 */
    InterfaceC2853s mo302F0(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s) {
        long m535d;
        long mo310q0 = abstractC3151y2.mo310q0(interfaceC2853s);
        if (mo310q0 > 0 && interfaceC2853s.hasCharacteristics(16384)) {
            InterfaceC2853s.InterfaceC2855b interfaceC2855b = (InterfaceC2853s.InterfaceC2855b) abstractC3151y2.mo304w0(interfaceC2853s);
            long j = this.f1140l;
            m535d = AbstractC2867B3.m535d(j, this.f1141m);
            return new C3141w4(interfaceC2855b, j, m535d);
        }
        return !EnumC3027d4.ORDERED.m438d(abstractC3151y2.mo308s0()) ? m344N0((InterfaceC2853s.InterfaceC2855b) abstractC3151y2.mo304w0(interfaceC2853s), this.f1140l, this.f1141m, mo310q0) : ((InterfaceC2859A1) new C2861A3(this, abstractC3151y2, interfaceC2853s, new InterfaceC2827m() { // from class: j$.util.stream.q3
            @Override // p033j$.util.function.InterfaceC2827m
            public final Object apply(int i) {
                return new Integer[i];
            }
        }, this.f1140l, this.f1141m).invoke()).spliterator();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: H0 */
    public InterfaceC3080m3 mo301H0(int i, InterfaceC3080m3 interfaceC3080m3) {
        return new C3110r3(this, interfaceC3080m3);
    }

    /* renamed from: N0 */
    InterfaceC2853s.InterfaceC2855b m344N0(InterfaceC2853s.InterfaceC2855b interfaceC2855b, long j, long j2, long j3) {
        long j4;
        long j5 = 0;
        if (j <= j3) {
            j4 = j2 >= 0 ? Math.min(j2, j3 - j) : j3 - j;
        } else {
            j5 = j;
            j4 = j2;
        }
        return new C2892F4(interfaceC2855b, j5, j4);
    }
}
