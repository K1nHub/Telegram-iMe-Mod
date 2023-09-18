package p033j$.util.stream;

import p033j$.util.InterfaceC2908s;
import p033j$.util.function.InterfaceC2882m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.v3 */
/* loaded from: classes2.dex */
public class C3189v3 extends AbstractC3067b1 {

    /* renamed from: l */
    final /* synthetic */ long f1158l;

    /* renamed from: m */
    final /* synthetic */ long f1159m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3189v3(AbstractC3071c abstractC3071c, EnumC3088e4 enumC3088e4, int i, long j, long j2) {
        super(abstractC3071c, enumC3088e4, i);
        this.f1158l = j;
        this.f1159m = j2;
    }

    @Override // p033j$.util.stream.AbstractC3071c
    /* renamed from: E0 */
    InterfaceC2914A1 mo303E0(AbstractC3206y2 abstractC3206y2, InterfaceC2908s interfaceC2908s, InterfaceC2882m interfaceC2882m) {
        long mo310q0 = abstractC3206y2.mo310q0(interfaceC2908s);
        if (mo310q0 > 0 && interfaceC2908s.hasCharacteristics(16384)) {
            return AbstractC3200x2.m325h(abstractC3206y2, AbstractC2922B3.m537b(abstractC3206y2.mo309r0(), interfaceC2908s, this.f1158l, this.f1159m), true);
        }
        return !EnumC3082d4.ORDERED.m438d(abstractC3206y2.mo308s0()) ? AbstractC3200x2.m325h(this, m335N0((InterfaceC2908s.InterfaceC2911c) abstractC3206y2.mo304w0(interfaceC2908s), this.f1158l, this.f1159m, mo310q0), true) : (InterfaceC2914A1) new C2916A3(this, abstractC3206y2, interfaceC2908s, interfaceC2882m, this.f1158l, this.f1159m).invoke();
    }

    @Override // p033j$.util.stream.AbstractC3071c
    /* renamed from: F0 */
    InterfaceC2908s mo302F0(AbstractC3206y2 abstractC3206y2, InterfaceC2908s interfaceC2908s) {
        long m535d;
        long mo310q0 = abstractC3206y2.mo310q0(interfaceC2908s);
        if (mo310q0 > 0 && interfaceC2908s.hasCharacteristics(16384)) {
            InterfaceC2908s.InterfaceC2911c interfaceC2911c = (InterfaceC2908s.InterfaceC2911c) abstractC3206y2.mo304w0(interfaceC2908s);
            long j = this.f1158l;
            m535d = AbstractC2922B3.m535d(j, this.f1159m);
            return new C3208y4(interfaceC2911c, j, m535d);
        }
        return !EnumC3082d4.ORDERED.m438d(abstractC3206y2.mo308s0()) ? m335N0((InterfaceC2908s.InterfaceC2911c) abstractC3206y2.mo304w0(interfaceC2908s), this.f1158l, this.f1159m, mo310q0) : ((InterfaceC2914A1) new C2916A3(this, abstractC3206y2, interfaceC2908s, new InterfaceC2882m() { // from class: j$.util.stream.t3
            @Override // p033j$.util.function.InterfaceC2882m
            public final Object apply(int i) {
                return new Long[i];
            }
        }, this.f1158l, this.f1159m).invoke()).spliterator();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3071c
    /* renamed from: H0 */
    public InterfaceC3135m3 mo301H0(int i, InterfaceC3135m3 interfaceC3135m3) {
        return new C3183u3(this, interfaceC3135m3);
    }

    /* renamed from: N0 */
    InterfaceC2908s.InterfaceC2911c m335N0(InterfaceC2908s.InterfaceC2911c interfaceC2911c, long j, long j2, long j3) {
        long j4;
        long j5 = 0;
        if (j <= j3) {
            j4 = j2 >= 0 ? Math.min(j2, j3 - j) : j3 - j;
        } else {
            j5 = j;
            j4 = j2;
        }
        return new C2953G4(interfaceC2911c, j5, j4);
    }
}
