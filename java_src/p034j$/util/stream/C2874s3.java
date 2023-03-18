package p034j$.util.stream;

import p034j$.util.InterfaceC2611s;
import p034j$.util.function.InterfaceC2585m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.s3 */
/* loaded from: classes2.dex */
public class C2874s3 extends AbstractC2670J0 {

    /* renamed from: l */
    final /* synthetic */ long f1051l;

    /* renamed from: m */
    final /* synthetic */ long f1052m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2874s3(AbstractC2774c abstractC2774c, EnumC2791e4 enumC2791e4, int i, long j, long j2) {
        super(abstractC2774c, enumC2791e4, i);
        this.f1051l = j;
        this.f1052m = j2;
    }

    @Override // p034j$.util.stream.AbstractC2774c
    /* renamed from: E0 */
    InterfaceC2617A1 mo300E0(AbstractC2909y2 abstractC2909y2, InterfaceC2611s interfaceC2611s, InterfaceC2585m interfaceC2585m) {
        long mo307q0 = abstractC2909y2.mo307q0(interfaceC2611s);
        if (mo307q0 > 0 && interfaceC2611s.hasCharacteristics(16384)) {
            return AbstractC2903x2.m323g(abstractC2909y2, AbstractC2625B3.m534b(abstractC2909y2.mo306r0(), interfaceC2611s, this.f1051l, this.f1052m), true);
        }
        return !EnumC2785d4.ORDERED.m435d(abstractC2909y2.mo305s0()) ? AbstractC2903x2.m323g(this, m341N0((InterfaceC2611s.InterfaceC2613b) abstractC2909y2.mo301w0(interfaceC2611s), this.f1051l, this.f1052m, mo307q0), true) : (InterfaceC2617A1) new C2619A3(this, abstractC2909y2, interfaceC2611s, interfaceC2585m, this.f1051l, this.f1052m).invoke();
    }

    @Override // p034j$.util.stream.AbstractC2774c
    /* renamed from: F0 */
    InterfaceC2611s mo299F0(AbstractC2909y2 abstractC2909y2, InterfaceC2611s interfaceC2611s) {
        long m532d;
        long mo307q0 = abstractC2909y2.mo307q0(interfaceC2611s);
        if (mo307q0 > 0 && interfaceC2611s.hasCharacteristics(16384)) {
            InterfaceC2611s.InterfaceC2613b interfaceC2613b = (InterfaceC2611s.InterfaceC2613b) abstractC2909y2.mo301w0(interfaceC2611s);
            long j = this.f1051l;
            m532d = AbstractC2625B3.m532d(j, this.f1052m);
            return new C2899w4(interfaceC2613b, j, m532d);
        }
        return !EnumC2785d4.ORDERED.m435d(abstractC2909y2.mo305s0()) ? m341N0((InterfaceC2611s.InterfaceC2613b) abstractC2909y2.mo301w0(interfaceC2611s), this.f1051l, this.f1052m, mo307q0) : ((InterfaceC2617A1) new C2619A3(this, abstractC2909y2, interfaceC2611s, C2862q3.f1029a, this.f1051l, this.f1052m).invoke()).spliterator();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2774c
    /* renamed from: H0 */
    public InterfaceC2838m3 mo298H0(int i, InterfaceC2838m3 interfaceC2838m3) {
        return new C2868r3(this, interfaceC2838m3);
    }

    /* renamed from: N0 */
    InterfaceC2611s.InterfaceC2613b m341N0(InterfaceC2611s.InterfaceC2613b interfaceC2613b, long j, long j2, long j3) {
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
        return new C2650F4(interfaceC2613b, j4, j5);
    }
}
