package p034j$.util.stream;

import p034j$.util.InterfaceC2487s;
import p034j$.util.function.InterfaceC2461m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.y3 */
/* loaded from: classes2.dex */
public class C2786y3 extends AbstractC2587Q {

    /* renamed from: l */
    final /* synthetic */ long f1087l;

    /* renamed from: m */
    final /* synthetic */ long f1088m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2786y3(AbstractC2650c abstractC2650c, EnumC2667e4 enumC2667e4, int i, long j, long j2) {
        super(abstractC2650c, enumC2667e4, i);
        this.f1087l = j;
        this.f1088m = j2;
    }

    @Override // p034j$.util.stream.AbstractC2650c
    /* renamed from: E0 */
    InterfaceC2493A1 mo300E0(AbstractC2785y2 abstractC2785y2, InterfaceC2487s interfaceC2487s, InterfaceC2461m interfaceC2461m) {
        long mo307q0 = abstractC2785y2.mo307q0(interfaceC2487s);
        if (mo307q0 > 0 && interfaceC2487s.hasCharacteristics(16384)) {
            return AbstractC2779x2.m324f(abstractC2785y2, AbstractC2501B3.m534b(abstractC2785y2.mo306r0(), interfaceC2487s, this.f1087l, this.f1088m), true);
        }
        return !EnumC2661d4.ORDERED.m435d(abstractC2785y2.mo305s0()) ? AbstractC2779x2.m324f(this, m297N0((InterfaceC2487s.InterfaceC2488a) abstractC2785y2.mo301w0(interfaceC2487s), this.f1087l, this.f1088m, mo307q0), true) : (InterfaceC2493A1) new C2495A3(this, abstractC2785y2, interfaceC2487s, interfaceC2461m, this.f1087l, this.f1088m).invoke();
    }

    @Override // p034j$.util.stream.AbstractC2650c
    /* renamed from: F0 */
    InterfaceC2487s mo299F0(AbstractC2785y2 abstractC2785y2, InterfaceC2487s interfaceC2487s) {
        long m532d;
        long mo307q0 = abstractC2785y2.mo307q0(interfaceC2487s);
        if (mo307q0 > 0 && interfaceC2487s.hasCharacteristics(16384)) {
            InterfaceC2487s.InterfaceC2488a interfaceC2488a = (InterfaceC2487s.InterfaceC2488a) abstractC2785y2.mo301w0(interfaceC2487s);
            long j = this.f1087l;
            m532d = AbstractC2501B3.m532d(j, this.f1088m);
            return new C2763u4(interfaceC2488a, j, m532d);
        }
        return !EnumC2661d4.ORDERED.m435d(abstractC2785y2.mo305s0()) ? m297N0((InterfaceC2487s.InterfaceC2488a) abstractC2785y2.mo301w0(interfaceC2487s), this.f1087l, this.f1088m, mo307q0) : ((InterfaceC2493A1) new C2495A3(this, abstractC2785y2, interfaceC2487s, C2774w3.f1070a, this.f1087l, this.f1088m).invoke()).spliterator();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2650c
    /* renamed from: H0 */
    public InterfaceC2714m3 mo298H0(int i, InterfaceC2714m3 interfaceC2714m3) {
        return new C2780x3(this, interfaceC2714m3);
    }

    /* renamed from: N0 */
    InterfaceC2487s.InterfaceC2488a m297N0(InterfaceC2487s.InterfaceC2488a interfaceC2488a, long j, long j2, long j3) {
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
        return new C2520E4(interfaceC2488a, j4, j5);
    }
}
