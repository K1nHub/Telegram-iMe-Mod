package p033j$.util.stream;

import p033j$.util.InterfaceC2908s;
import p033j$.util.function.InterfaceC2882m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.s3 */
/* loaded from: classes2.dex */
public class C3171s3 extends AbstractC2967J0 {

    /* renamed from: l */
    final /* synthetic */ long f1141l;

    /* renamed from: m */
    final /* synthetic */ long f1142m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3171s3(AbstractC3071c abstractC3071c, EnumC3088e4 enumC3088e4, int i, long j, long j2) {
        super(abstractC3071c, enumC3088e4, i);
        this.f1141l = j;
        this.f1142m = j2;
    }

    @Override // p033j$.util.stream.AbstractC3071c
    /* renamed from: E0 */
    InterfaceC2914A1 mo303E0(AbstractC3206y2 abstractC3206y2, InterfaceC2908s interfaceC2908s, InterfaceC2882m interfaceC2882m) {
        long mo310q0 = abstractC3206y2.mo310q0(interfaceC2908s);
        if (mo310q0 > 0 && interfaceC2908s.hasCharacteristics(16384)) {
            return AbstractC3200x2.m326g(abstractC3206y2, AbstractC2922B3.m537b(abstractC3206y2.mo309r0(), interfaceC2908s, this.f1141l, this.f1142m), true);
        }
        return !EnumC3082d4.ORDERED.m438d(abstractC3206y2.mo308s0()) ? AbstractC3200x2.m326g(this, m344N0((InterfaceC2908s.InterfaceC2910b) abstractC3206y2.mo304w0(interfaceC2908s), this.f1141l, this.f1142m, mo310q0), true) : (InterfaceC2914A1) new C2916A3(this, abstractC3206y2, interfaceC2908s, interfaceC2882m, this.f1141l, this.f1142m).invoke();
    }

    @Override // p033j$.util.stream.AbstractC3071c
    /* renamed from: F0 */
    InterfaceC2908s mo302F0(AbstractC3206y2 abstractC3206y2, InterfaceC2908s interfaceC2908s) {
        long m535d;
        long mo310q0 = abstractC3206y2.mo310q0(interfaceC2908s);
        if (mo310q0 > 0 && interfaceC2908s.hasCharacteristics(16384)) {
            InterfaceC2908s.InterfaceC2910b interfaceC2910b = (InterfaceC2908s.InterfaceC2910b) abstractC3206y2.mo304w0(interfaceC2908s);
            long j = this.f1141l;
            m535d = AbstractC2922B3.m535d(j, this.f1142m);
            return new C3196w4(interfaceC2910b, j, m535d);
        }
        return !EnumC3082d4.ORDERED.m438d(abstractC3206y2.mo308s0()) ? m344N0((InterfaceC2908s.InterfaceC2910b) abstractC3206y2.mo304w0(interfaceC2908s), this.f1141l, this.f1142m, mo310q0) : ((InterfaceC2914A1) new C2916A3(this, abstractC3206y2, interfaceC2908s, new InterfaceC2882m() { // from class: j$.util.stream.q3
            @Override // p033j$.util.function.InterfaceC2882m
            public final Object apply(int i) {
                return new Integer[i];
            }
        }, this.f1141l, this.f1142m).invoke()).spliterator();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3071c
    /* renamed from: H0 */
    public InterfaceC3135m3 mo301H0(int i, InterfaceC3135m3 interfaceC3135m3) {
        return new C3165r3(this, interfaceC3135m3);
    }

    /* renamed from: N0 */
    InterfaceC2908s.InterfaceC2910b m344N0(InterfaceC2908s.InterfaceC2910b interfaceC2910b, long j, long j2, long j3) {
        long j4;
        long j5 = 0;
        if (j <= j3) {
            j4 = j2 >= 0 ? Math.min(j2, j3 - j) : j3 - j;
        } else {
            j5 = j;
            j4 = j2;
        }
        return new C2947F4(interfaceC2910b, j5, j4);
    }
}
