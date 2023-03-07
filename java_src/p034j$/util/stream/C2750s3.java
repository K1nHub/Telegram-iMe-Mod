package p034j$.util.stream;

import p034j$.util.InterfaceC2487s;
import p034j$.util.function.InterfaceC2461m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.s3 */
/* loaded from: classes2.dex */
public class C2750s3 extends AbstractC2546J0 {

    /* renamed from: l */
    final /* synthetic */ long f1046l;

    /* renamed from: m */
    final /* synthetic */ long f1047m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2750s3(AbstractC2650c abstractC2650c, EnumC2667e4 enumC2667e4, int i, long j, long j2) {
        super(abstractC2650c, enumC2667e4, i);
        this.f1046l = j;
        this.f1047m = j2;
    }

    @Override // p034j$.util.stream.AbstractC2650c
    /* renamed from: E0 */
    InterfaceC2493A1 mo300E0(AbstractC2785y2 abstractC2785y2, InterfaceC2487s interfaceC2487s, InterfaceC2461m interfaceC2461m) {
        long mo307q0 = abstractC2785y2.mo307q0(interfaceC2487s);
        if (mo307q0 > 0 && interfaceC2487s.hasCharacteristics(16384)) {
            return AbstractC2779x2.m323g(abstractC2785y2, AbstractC2501B3.m534b(abstractC2785y2.mo306r0(), interfaceC2487s, this.f1046l, this.f1047m), true);
        }
        return !EnumC2661d4.ORDERED.m435d(abstractC2785y2.mo305s0()) ? AbstractC2779x2.m323g(this, m341N0((InterfaceC2487s.InterfaceC2489b) abstractC2785y2.mo301w0(interfaceC2487s), this.f1046l, this.f1047m, mo307q0), true) : (InterfaceC2493A1) new C2495A3(this, abstractC2785y2, interfaceC2487s, interfaceC2461m, this.f1046l, this.f1047m).invoke();
    }

    @Override // p034j$.util.stream.AbstractC2650c
    /* renamed from: F0 */
    InterfaceC2487s mo299F0(AbstractC2785y2 abstractC2785y2, InterfaceC2487s interfaceC2487s) {
        long m532d;
        long mo307q0 = abstractC2785y2.mo307q0(interfaceC2487s);
        if (mo307q0 > 0 && interfaceC2487s.hasCharacteristics(16384)) {
            InterfaceC2487s.InterfaceC2489b interfaceC2489b = (InterfaceC2487s.InterfaceC2489b) abstractC2785y2.mo301w0(interfaceC2487s);
            long j = this.f1046l;
            m532d = AbstractC2501B3.m532d(j, this.f1047m);
            return new C2775w4(interfaceC2489b, j, m532d);
        }
        return !EnumC2661d4.ORDERED.m435d(abstractC2785y2.mo305s0()) ? m341N0((InterfaceC2487s.InterfaceC2489b) abstractC2785y2.mo301w0(interfaceC2487s), this.f1046l, this.f1047m, mo307q0) : ((InterfaceC2493A1) new C2495A3(this, abstractC2785y2, interfaceC2487s, C2738q3.f1024a, this.f1046l, this.f1047m).invoke()).spliterator();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2650c
    /* renamed from: H0 */
    public InterfaceC2714m3 mo298H0(int i, InterfaceC2714m3 interfaceC2714m3) {
        return new C2744r3(this, interfaceC2714m3);
    }

    /* renamed from: N0 */
    InterfaceC2487s.InterfaceC2489b m341N0(InterfaceC2487s.InterfaceC2489b interfaceC2489b, long j, long j2, long j3) {
        long j4;
        long j5;
        if (j <= j3) {
            long j6 = j3 - j;
            j5 = j2 >= 0 ? Math.min(j2, j6) : j6;
            j4 = 0;
        } else {
            j4 = j;
            j5 = j2;
        }
        return new C2526F4(interfaceC2489b, j4, j5);
    }
}
