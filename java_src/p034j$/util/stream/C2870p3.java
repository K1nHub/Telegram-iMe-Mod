package p034j$.util.stream;

import p034j$.util.InterfaceC2625s;
import p034j$.util.function.InterfaceC2599m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.p3 */
/* loaded from: classes2.dex */
public class C2870p3 extends AbstractC2792c3 {

    /* renamed from: l */
    final /* synthetic */ long f1015l;

    /* renamed from: m */
    final /* synthetic */ long f1016m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2870p3(AbstractC2788c abstractC2788c, EnumC2805e4 enumC2805e4, int i, long j, long j2) {
        super(abstractC2788c, enumC2805e4, i);
        this.f1015l = j;
        this.f1016m = j2;
    }

    @Override // p034j$.util.stream.AbstractC2788c
    /* renamed from: E0 */
    InterfaceC2631A1 mo299E0(AbstractC2923y2 abstractC2923y2, InterfaceC2625s interfaceC2625s, InterfaceC2599m interfaceC2599m) {
        long mo306q0 = abstractC2923y2.mo306q0(interfaceC2625s);
        if (mo306q0 > 0 && interfaceC2625s.hasCharacteristics(16384)) {
            return AbstractC2917x2.m324e(abstractC2923y2, AbstractC2639B3.m533b(abstractC2923y2.mo305r0(), interfaceC2625s, this.f1015l, this.f1016m), true, interfaceC2599m);
        }
        return !EnumC2799d4.ORDERED.m434d(abstractC2923y2.mo304s0()) ? AbstractC2917x2.m324e(this, m346L0(abstractC2923y2.mo300w0(interfaceC2625s), this.f1015l, this.f1016m, mo306q0), true, interfaceC2599m) : (InterfaceC2631A1) new C2633A3(this, abstractC2923y2, interfaceC2625s, interfaceC2599m, this.f1015l, this.f1016m).invoke();
    }

    @Override // p034j$.util.stream.AbstractC2788c
    /* renamed from: F0 */
    InterfaceC2625s mo298F0(AbstractC2923y2 abstractC2923y2, InterfaceC2625s interfaceC2625s) {
        long m531d;
        long mo306q0 = abstractC2923y2.mo306q0(interfaceC2625s);
        if (mo306q0 > 0 && interfaceC2625s.hasCharacteristics(16384)) {
            InterfaceC2625s mo300w0 = abstractC2923y2.mo300w0(interfaceC2625s);
            long j = this.f1015l;
            m531d = AbstractC2639B3.m531d(j, this.f1016m);
            return new C2646C4(mo300w0, j, m531d);
        }
        return !EnumC2799d4.ORDERED.m434d(abstractC2923y2.mo304s0()) ? m346L0(abstractC2923y2.mo300w0(interfaceC2625s), this.f1015l, this.f1016m, mo306q0) : ((InterfaceC2631A1) new C2633A3(this, abstractC2923y2, interfaceC2625s, C2858n3.f1001a, this.f1015l, this.f1016m).invoke()).spliterator();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2788c
    /* renamed from: H0 */
    public InterfaceC2852m3 mo297H0(int i, InterfaceC2852m3 interfaceC2852m3) {
        return new C2864o3(this, interfaceC2852m3);
    }

    /* renamed from: L0 */
    InterfaceC2625s m346L0(InterfaceC2625s interfaceC2625s, long j, long j2, long j3) {
        long j4;
        long j5 = 0;
        if (j <= j3) {
            j4 = j2 >= 0 ? Math.min(j2, j3 - j) : j3 - j;
        } else {
            j5 = j;
            j4 = j2;
        }
        return new C2682I4(interfaceC2625s, j5, j4);
    }
}
