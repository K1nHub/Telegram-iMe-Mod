package p033j$.util.stream;

import p033j$.util.InterfaceC2853s;
import p033j$.util.function.InterfaceC2827m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.y3 */
/* loaded from: classes2.dex */
public class C3152y3 extends AbstractC2953Q {

    /* renamed from: l */
    final /* synthetic */ long f1178l;

    /* renamed from: m */
    final /* synthetic */ long f1179m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3152y3(AbstractC3016c abstractC3016c, EnumC3033e4 enumC3033e4, int i, long j, long j2) {
        super(abstractC3016c, enumC3033e4, i);
        this.f1178l = j;
        this.f1179m = j2;
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: E0 */
    InterfaceC2859A1 mo285E0(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s, InterfaceC2827m interfaceC2827m) {
        long mo292q0 = abstractC3151y2.mo292q0(interfaceC2853s);
        if (mo292q0 > 0 && interfaceC2853s.hasCharacteristics(16384)) {
            return AbstractC3145x2.m309f(abstractC3151y2, AbstractC2867B3.m519b(abstractC3151y2.mo291r0(), interfaceC2853s, this.f1178l, this.f1179m), true);
        }
        return !EnumC3027d4.ORDERED.m420d(abstractC3151y2.mo290s0()) ? AbstractC3145x2.m309f(this, m282N0((InterfaceC2853s.InterfaceC2854a) abstractC3151y2.mo286w0(interfaceC2853s), this.f1178l, this.f1179m, mo292q0), true) : (InterfaceC2859A1) new C2861A3(this, abstractC3151y2, interfaceC2853s, interfaceC2827m, this.f1178l, this.f1179m).invoke();
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: F0 */
    InterfaceC2853s mo284F0(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s) {
        long m517d;
        long mo292q0 = abstractC3151y2.mo292q0(interfaceC2853s);
        if (mo292q0 > 0 && interfaceC2853s.hasCharacteristics(16384)) {
            InterfaceC2853s.InterfaceC2854a interfaceC2854a = (InterfaceC2853s.InterfaceC2854a) abstractC3151y2.mo286w0(interfaceC2853s);
            long j = this.f1178l;
            m517d = AbstractC2867B3.m517d(j, this.f1179m);
            return new C3129u4(interfaceC2854a, j, m517d);
        }
        return !EnumC3027d4.ORDERED.m420d(abstractC3151y2.mo290s0()) ? m282N0((InterfaceC2853s.InterfaceC2854a) abstractC3151y2.mo286w0(interfaceC2853s), this.f1178l, this.f1179m, mo292q0) : ((InterfaceC2859A1) new C2861A3(this, abstractC3151y2, interfaceC2853s, C3140w3.f1161a, this.f1178l, this.f1179m).invoke()).spliterator();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: H0 */
    public InterfaceC3080m3 mo283H0(int i, InterfaceC3080m3 interfaceC3080m3) {
        return new C3146x3(this, interfaceC3080m3);
    }

    /* renamed from: N0 */
    InterfaceC2853s.InterfaceC2854a m282N0(InterfaceC2853s.InterfaceC2854a interfaceC2854a, long j, long j2, long j3) {
        long j4;
        long j5 = 0;
        if (j <= j3) {
            j4 = j2 >= 0 ? Math.min(j2, j3 - j) : j3 - j;
        } else {
            j5 = j;
            j4 = j2;
        }
        return new C2886E4(interfaceC2854a, j5, j4);
    }
}
