package p034j$.util.stream;

import java.util.Arrays;
import java.util.Objects;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.InterfaceC2585m;
/* renamed from: j$.util.stream.L3 */
/* loaded from: classes2.dex */
final class C2685L3 extends AbstractC2770b1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2685L3(AbstractC2774c abstractC2774c) {
        super(abstractC2774c, EnumC2791e4.LONG_VALUE, EnumC2785d4.f916q | EnumC2785d4.f914o);
    }

    @Override // p034j$.util.stream.AbstractC2774c
    /* renamed from: E0 */
    public InterfaceC2617A1 mo300E0(AbstractC2909y2 abstractC2909y2, InterfaceC2611s interfaceC2611s, InterfaceC2585m interfaceC2585m) {
        if (EnumC2785d4.SORTED.m435d(abstractC2909y2.mo305s0())) {
            return abstractC2909y2.mo308p0(interfaceC2611s, false, interfaceC2585m);
        }
        long[] jArr = (long[]) ((InterfaceC2908y1) abstractC2909y2.mo308p0(interfaceC2611s, true, interfaceC2585m)).mo292e();
        Arrays.sort(jArr);
        return new C2831l2(jArr);
    }

    @Override // p034j$.util.stream.AbstractC2774c
    /* renamed from: H0 */
    public InterfaceC2838m3 mo298H0(int i, InterfaceC2838m3 interfaceC2838m3) {
        Objects.requireNonNull(interfaceC2838m3);
        return EnumC2785d4.SORTED.m435d(i) ? interfaceC2838m3 : EnumC2785d4.SIZED.m435d(i) ? new C2715Q3(interfaceC2838m3) : new C2667I3(interfaceC2838m3);
    }
}
