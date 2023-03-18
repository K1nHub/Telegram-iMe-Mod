package p034j$.util.stream;

import p034j$.util.InterfaceC2611s;
import p034j$.util.function.InterfaceC2585m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.p3 */
/* loaded from: classes2.dex */
public class C2856p3 extends AbstractC2778c3 {

    /* renamed from: l */
    final /* synthetic */ long f1014l;

    /* renamed from: m */
    final /* synthetic */ long f1015m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2856p3(AbstractC2774c abstractC2774c, EnumC2791e4 enumC2791e4, int i, long j, long j2) {
        super(abstractC2774c, enumC2791e4, i);
        this.f1014l = j;
        this.f1015m = j2;
    }

    @Override // p034j$.util.stream.AbstractC2774c
    /* renamed from: E0 */
    InterfaceC2617A1 mo300E0(AbstractC2909y2 abstractC2909y2, InterfaceC2611s interfaceC2611s, InterfaceC2585m interfaceC2585m) {
        long mo307q0 = abstractC2909y2.mo307q0(interfaceC2611s);
        if (mo307q0 > 0 && interfaceC2611s.hasCharacteristics(16384)) {
            return AbstractC2903x2.m325e(abstractC2909y2, AbstractC2625B3.m534b(abstractC2909y2.mo306r0(), interfaceC2611s, this.f1014l, this.f1015m), true, interfaceC2585m);
        }
        return !EnumC2785d4.ORDERED.m435d(abstractC2909y2.mo305s0()) ? AbstractC2903x2.m325e(this, m347L0(abstractC2909y2.mo301w0(interfaceC2611s), this.f1014l, this.f1015m, mo307q0), true, interfaceC2585m) : (InterfaceC2617A1) new C2619A3(this, abstractC2909y2, interfaceC2611s, interfaceC2585m, this.f1014l, this.f1015m).invoke();
    }

    @Override // p034j$.util.stream.AbstractC2774c
    /* renamed from: F0 */
    InterfaceC2611s mo299F0(AbstractC2909y2 abstractC2909y2, InterfaceC2611s interfaceC2611s) {
        long m532d;
        long mo307q0 = abstractC2909y2.mo307q0(interfaceC2611s);
        if (mo307q0 > 0 && interfaceC2611s.hasCharacteristics(16384)) {
            InterfaceC2611s mo301w0 = abstractC2909y2.mo301w0(interfaceC2611s);
            long j = this.f1014l;
            m532d = AbstractC2625B3.m532d(j, this.f1015m);
            return new C2632C4(mo301w0, j, m532d);
        }
        return !EnumC2785d4.ORDERED.m435d(abstractC2909y2.mo305s0()) ? m347L0(abstractC2909y2.mo301w0(interfaceC2611s), this.f1014l, this.f1015m, mo307q0) : ((InterfaceC2617A1) new C2619A3(this, abstractC2909y2, interfaceC2611s, C2844n3.f1000a, this.f1014l, this.f1015m).invoke()).spliterator();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2774c
    /* renamed from: H0 */
    public InterfaceC2838m3 mo298H0(int i, InterfaceC2838m3 interfaceC2838m3) {
        return new C2850o3(this, interfaceC2838m3);
    }

    /* renamed from: L0 */
    InterfaceC2611s m347L0(InterfaceC2611s interfaceC2611s, long j, long j2, long j3) {
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
        return new C2668I4(interfaceC2611s, j4, j5);
    }
}
