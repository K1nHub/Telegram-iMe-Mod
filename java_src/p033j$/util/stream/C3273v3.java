package p033j$.util.stream;

import p033j$.util.InterfaceC2992s;
import p033j$.util.function.InterfaceC2966m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.v3 */
/* loaded from: classes2.dex */
public class C3273v3 extends AbstractC3151b1 {

    /* renamed from: l */
    final /* synthetic */ long f1167l;

    /* renamed from: m */
    final /* synthetic */ long f1168m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3273v3(AbstractC3155c abstractC3155c, EnumC3172e4 enumC3172e4, int i, long j, long j2) {
        super(abstractC3155c, enumC3172e4, i);
        this.f1167l = j;
        this.f1168m = j2;
    }

    @Override // p033j$.util.stream.AbstractC3155c
    /* renamed from: E0 */
    InterfaceC2998A1 mo303E0(AbstractC3290y2 abstractC3290y2, InterfaceC2992s interfaceC2992s, InterfaceC2966m interfaceC2966m) {
        long mo310q0 = abstractC3290y2.mo310q0(interfaceC2992s);
        if (mo310q0 > 0 && interfaceC2992s.hasCharacteristics(16384)) {
            return AbstractC3284x2.m325h(abstractC3290y2, AbstractC3006B3.m537b(abstractC3290y2.mo309r0(), interfaceC2992s, this.f1167l, this.f1168m), true);
        }
        return !EnumC3166d4.ORDERED.m438d(abstractC3290y2.mo308s0()) ? AbstractC3284x2.m325h(this, m335N0((InterfaceC2992s.InterfaceC2995c) abstractC3290y2.mo304w0(interfaceC2992s), this.f1167l, this.f1168m, mo310q0), true) : (InterfaceC2998A1) new C3000A3(this, abstractC3290y2, interfaceC2992s, interfaceC2966m, this.f1167l, this.f1168m).invoke();
    }

    @Override // p033j$.util.stream.AbstractC3155c
    /* renamed from: F0 */
    InterfaceC2992s mo302F0(AbstractC3290y2 abstractC3290y2, InterfaceC2992s interfaceC2992s) {
        long m535d;
        long mo310q0 = abstractC3290y2.mo310q0(interfaceC2992s);
        if (mo310q0 > 0 && interfaceC2992s.hasCharacteristics(16384)) {
            InterfaceC2992s.InterfaceC2995c interfaceC2995c = (InterfaceC2992s.InterfaceC2995c) abstractC3290y2.mo304w0(interfaceC2992s);
            long j = this.f1167l;
            m535d = AbstractC3006B3.m535d(j, this.f1168m);
            return new C3292y4(interfaceC2995c, j, m535d);
        }
        return !EnumC3166d4.ORDERED.m438d(abstractC3290y2.mo308s0()) ? m335N0((InterfaceC2992s.InterfaceC2995c) abstractC3290y2.mo304w0(interfaceC2992s), this.f1167l, this.f1168m, mo310q0) : ((InterfaceC2998A1) new C3000A3(this, abstractC3290y2, interfaceC2992s, new InterfaceC2966m() { // from class: j$.util.stream.t3
            @Override // p033j$.util.function.InterfaceC2966m
            public final Object apply(int i) {
                return new Long[i];
            }
        }, this.f1167l, this.f1168m).invoke()).spliterator();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3155c
    /* renamed from: H0 */
    public InterfaceC3219m3 mo301H0(int i, InterfaceC3219m3 interfaceC3219m3) {
        return new C3267u3(this, interfaceC3219m3);
    }

    /* renamed from: N0 */
    InterfaceC2992s.InterfaceC2995c m335N0(InterfaceC2992s.InterfaceC2995c interfaceC2995c, long j, long j2, long j3) {
        long j4;
        long j5 = 0;
        if (j <= j3) {
            j4 = j2 >= 0 ? Math.min(j2, j3 - j) : j3 - j;
        } else {
            j5 = j;
            j4 = j2;
        }
        return new C3037G4(interfaceC2995c, j5, j4);
    }
}
