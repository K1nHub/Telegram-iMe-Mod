package p033j$.util.stream;

import p033j$.util.InterfaceC2992s;
import p033j$.util.function.InterfaceC2966m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.p3 */
/* loaded from: classes2.dex */
public class C3237p3 extends AbstractC3159c3 {

    /* renamed from: l */
    final /* synthetic */ long f1113l;

    /* renamed from: m */
    final /* synthetic */ long f1114m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3237p3(AbstractC3155c abstractC3155c, EnumC3172e4 enumC3172e4, int i, long j, long j2) {
        super(abstractC3155c, enumC3172e4, i);
        this.f1113l = j;
        this.f1114m = j2;
    }

    @Override // p033j$.util.stream.AbstractC3155c
    /* renamed from: E0 */
    InterfaceC2998A1 mo303E0(AbstractC3290y2 abstractC3290y2, InterfaceC2992s interfaceC2992s, InterfaceC2966m interfaceC2966m) {
        long mo310q0 = abstractC3290y2.mo310q0(interfaceC2992s);
        if (mo310q0 > 0 && interfaceC2992s.hasCharacteristics(16384)) {
            return AbstractC3284x2.m328e(abstractC3290y2, AbstractC3006B3.m537b(abstractC3290y2.mo309r0(), interfaceC2992s, this.f1113l, this.f1114m), true, interfaceC2966m);
        }
        return !EnumC3166d4.ORDERED.m438d(abstractC3290y2.mo308s0()) ? AbstractC3284x2.m328e(this, m350L0(abstractC3290y2.mo304w0(interfaceC2992s), this.f1113l, this.f1114m, mo310q0), true, interfaceC2966m) : (InterfaceC2998A1) new C3000A3(this, abstractC3290y2, interfaceC2992s, interfaceC2966m, this.f1113l, this.f1114m).invoke();
    }

    @Override // p033j$.util.stream.AbstractC3155c
    /* renamed from: F0 */
    InterfaceC2992s mo302F0(AbstractC3290y2 abstractC3290y2, InterfaceC2992s interfaceC2992s) {
        long m535d;
        long mo310q0 = abstractC3290y2.mo310q0(interfaceC2992s);
        if (mo310q0 > 0 && interfaceC2992s.hasCharacteristics(16384)) {
            InterfaceC2992s mo304w0 = abstractC3290y2.mo304w0(interfaceC2992s);
            long j = this.f1113l;
            m535d = AbstractC3006B3.m535d(j, this.f1114m);
            return new C3013C4(mo304w0, j, m535d);
        }
        return !EnumC3166d4.ORDERED.m438d(abstractC3290y2.mo308s0()) ? m350L0(abstractC3290y2.mo304w0(interfaceC2992s), this.f1113l, this.f1114m, mo310q0) : ((InterfaceC2998A1) new C3000A3(this, abstractC3290y2, interfaceC2992s, new InterfaceC2966m() { // from class: j$.util.stream.n3
            @Override // p033j$.util.function.InterfaceC2966m
            public final Object apply(int i) {
                return new Object[i];
            }
        }, this.f1113l, this.f1114m).invoke()).spliterator();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3155c
    /* renamed from: H0 */
    public InterfaceC3219m3 mo301H0(int i, InterfaceC3219m3 interfaceC3219m3) {
        return new C3231o3(this, interfaceC3219m3);
    }

    /* renamed from: L0 */
    InterfaceC2992s m350L0(InterfaceC2992s interfaceC2992s, long j, long j2, long j3) {
        long j4;
        long j5 = 0;
        if (j <= j3) {
            j4 = j2 >= 0 ? Math.min(j2, j3 - j) : j3 - j;
        } else {
            j5 = j;
            j4 = j2;
        }
        return new C3049I4(interfaceC2992s, j5, j4);
    }
}
