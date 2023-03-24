package p034j$.util.stream;

import java.util.Arrays;
import java.util.Objects;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.InterfaceC2599m;
/* renamed from: j$.util.stream.K3 */
/* loaded from: classes2.dex */
final class C2693K3 extends AbstractC2684J0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2693K3(AbstractC2788c abstractC2788c) {
        super(abstractC2788c, EnumC2805e4.INT_VALUE, EnumC2799d4.f917q | EnumC2799d4.f915o);
    }

    @Override // p034j$.util.stream.AbstractC2788c
    /* renamed from: E0 */
    public InterfaceC2631A1 mo299E0(AbstractC2923y2 abstractC2923y2, InterfaceC2625s interfaceC2625s, InterfaceC2599m interfaceC2599m) {
        if (EnumC2799d4.SORTED.m434d(abstractC2923y2.mo304s0())) {
            return abstractC2923y2.mo307p0(interfaceC2625s, false, interfaceC2599m);
        }
        int[] iArr = (int[]) ((InterfaceC2910w1) abstractC2923y2.mo307p0(interfaceC2625s, true, interfaceC2599m)).mo291e();
        Arrays.sort(iArr);
        return new C2791c2(iArr);
    }

    @Override // p034j$.util.stream.AbstractC2788c
    /* renamed from: H0 */
    public InterfaceC2852m3 mo297H0(int i, InterfaceC2852m3 interfaceC2852m3) {
        Objects.requireNonNull(interfaceC2852m3);
        return EnumC2799d4.SORTED.m434d(i) ? interfaceC2852m3 : EnumC2799d4.SIZED.m434d(i) ? new C2723P3(interfaceC2852m3) : new C2675H3(interfaceC2852m3);
    }
}
