package p033j$.util.stream;

import p033j$.util.InterfaceC2853s;
import p033j$.util.function.InterfaceC2827m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.y3 */
/* loaded from: classes2.dex */
public class C3152y3 extends AbstractC2953Q {

    /* renamed from: l */
    final /* synthetic */ long f1181l;

    /* renamed from: m */
    final /* synthetic */ long f1182m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3152y3(AbstractC3016c abstractC3016c, EnumC3033e4 enumC3033e4, int i, long j, long j2) {
        super(abstractC3016c, enumC3033e4, i);
        this.f1181l = j;
        this.f1182m = j2;
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: E0 */
    InterfaceC2859A1 mo303E0(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s, InterfaceC2827m interfaceC2827m) {
        long mo310q0 = abstractC3151y2.mo310q0(interfaceC2853s);
        if (mo310q0 > 0 && interfaceC2853s.hasCharacteristics(16384)) {
            return AbstractC3145x2.m327f(abstractC3151y2, AbstractC2867B3.m537b(abstractC3151y2.mo309r0(), interfaceC2853s, this.f1181l, this.f1182m), true);
        }
        return !EnumC3027d4.ORDERED.m438d(abstractC3151y2.mo308s0()) ? AbstractC3145x2.m327f(this, m300N0((InterfaceC2853s.InterfaceC2854a) abstractC3151y2.mo304w0(interfaceC2853s), this.f1181l, this.f1182m, mo310q0), true) : (InterfaceC2859A1) new C2861A3(this, abstractC3151y2, interfaceC2853s, interfaceC2827m, this.f1181l, this.f1182m).invoke();
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: F0 */
    InterfaceC2853s mo302F0(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s) {
        long m535d;
        long mo310q0 = abstractC3151y2.mo310q0(interfaceC2853s);
        if (mo310q0 > 0 && interfaceC2853s.hasCharacteristics(16384)) {
            InterfaceC2853s.InterfaceC2854a interfaceC2854a = (InterfaceC2853s.InterfaceC2854a) abstractC3151y2.mo304w0(interfaceC2853s);
            long j = this.f1181l;
            m535d = AbstractC2867B3.m535d(j, this.f1182m);
            return new C3129u4(interfaceC2854a, j, m535d);
        }
        return !EnumC3027d4.ORDERED.m438d(abstractC3151y2.mo308s0()) ? m300N0((InterfaceC2853s.InterfaceC2854a) abstractC3151y2.mo304w0(interfaceC2853s), this.f1181l, this.f1182m, mo310q0) : ((InterfaceC2859A1) new C2861A3(this, abstractC3151y2, interfaceC2853s, new InterfaceC2827m() { // from class: j$.util.stream.w3
            @Override // p033j$.util.function.InterfaceC2827m
            public final Object apply(int i) {
                return new Double[i];
            }
        }, this.f1181l, this.f1182m).invoke()).spliterator();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: H0 */
    public InterfaceC3080m3 mo301H0(int i, InterfaceC3080m3 interfaceC3080m3) {
        return new C3146x3(this, interfaceC3080m3);
    }

    /* renamed from: N0 */
    InterfaceC2853s.InterfaceC2854a m300N0(InterfaceC2853s.InterfaceC2854a interfaceC2854a, long j, long j2, long j3) {
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
