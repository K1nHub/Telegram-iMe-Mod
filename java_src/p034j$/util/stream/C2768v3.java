package p034j$.util.stream;

import p034j$.util.InterfaceC2487s;
import p034j$.util.function.InterfaceC2461m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.v3 */
/* loaded from: classes2.dex */
public class C2768v3 extends AbstractC2646b1 {

    /* renamed from: l */
    final /* synthetic */ long f1063l;

    /* renamed from: m */
    final /* synthetic */ long f1064m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2768v3(AbstractC2650c abstractC2650c, EnumC2667e4 enumC2667e4, int i, long j, long j2) {
        super(abstractC2650c, enumC2667e4, i);
        this.f1063l = j;
        this.f1064m = j2;
    }

    @Override // p034j$.util.stream.AbstractC2650c
    /* renamed from: E0 */
    InterfaceC2493A1 mo300E0(AbstractC2785y2 abstractC2785y2, InterfaceC2487s interfaceC2487s, InterfaceC2461m interfaceC2461m) {
        long mo307q0 = abstractC2785y2.mo307q0(interfaceC2487s);
        if (mo307q0 > 0 && interfaceC2487s.hasCharacteristics(16384)) {
            return AbstractC2779x2.m322h(abstractC2785y2, AbstractC2501B3.m534b(abstractC2785y2.mo306r0(), interfaceC2487s, this.f1063l, this.f1064m), true);
        }
        return !EnumC2661d4.ORDERED.m435d(abstractC2785y2.mo305s0()) ? AbstractC2779x2.m322h(this, m332N0((InterfaceC2487s.InterfaceC2490c) abstractC2785y2.mo301w0(interfaceC2487s), this.f1063l, this.f1064m, mo307q0), true) : (InterfaceC2493A1) new C2495A3(this, abstractC2785y2, interfaceC2487s, interfaceC2461m, this.f1063l, this.f1064m).invoke();
    }

    @Override // p034j$.util.stream.AbstractC2650c
    /* renamed from: F0 */
    InterfaceC2487s mo299F0(AbstractC2785y2 abstractC2785y2, InterfaceC2487s interfaceC2487s) {
        long m532d;
        long mo307q0 = abstractC2785y2.mo307q0(interfaceC2487s);
        if (mo307q0 > 0 && interfaceC2487s.hasCharacteristics(16384)) {
            InterfaceC2487s.InterfaceC2490c interfaceC2490c = (InterfaceC2487s.InterfaceC2490c) abstractC2785y2.mo301w0(interfaceC2487s);
            long j = this.f1063l;
            m532d = AbstractC2501B3.m532d(j, this.f1064m);
            return new C2787y4(interfaceC2490c, j, m532d);
        }
        return !EnumC2661d4.ORDERED.m435d(abstractC2785y2.mo305s0()) ? m332N0((InterfaceC2487s.InterfaceC2490c) abstractC2785y2.mo301w0(interfaceC2487s), this.f1063l, this.f1064m, mo307q0) : ((InterfaceC2493A1) new C2495A3(this, abstractC2785y2, interfaceC2487s, C2756t3.f1051a, this.f1063l, this.f1064m).invoke()).spliterator();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2650c
    /* renamed from: H0 */
    public InterfaceC2714m3 mo298H0(int i, InterfaceC2714m3 interfaceC2714m3) {
        return new C2762u3(this, interfaceC2714m3);
    }

    /* renamed from: N0 */
    InterfaceC2487s.InterfaceC2490c m332N0(InterfaceC2487s.InterfaceC2490c interfaceC2490c, long j, long j2, long j3) {
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
        return new C2532G4(interfaceC2490c, j4, j5);
    }
}
