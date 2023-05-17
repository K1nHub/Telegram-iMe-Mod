package p034j$.util.stream;

import java.util.Arrays;
import java.util.Objects;
import p034j$.util.InterfaceC2727s;
import p034j$.util.function.InterfaceC2701m;
/* renamed from: j$.util.stream.K3 */
/* loaded from: classes2.dex */
final class C2795K3 extends AbstractC2786J0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2795K3(AbstractC2890c abstractC2890c) {
        super(abstractC2890c, EnumC2907e4.INT_VALUE, EnumC2901d4.f920q | EnumC2901d4.f918o);
    }

    @Override // p034j$.util.stream.AbstractC2890c
    /* renamed from: E0 */
    public InterfaceC2733A1 mo285E0(AbstractC3025y2 abstractC3025y2, InterfaceC2727s interfaceC2727s, InterfaceC2701m interfaceC2701m) {
        if (EnumC2901d4.SORTED.m420d(abstractC3025y2.mo290s0())) {
            return abstractC3025y2.mo293p0(interfaceC2727s, false, interfaceC2701m);
        }
        int[] iArr = (int[]) ((InterfaceC3012w1) abstractC3025y2.mo293p0(interfaceC2727s, true, interfaceC2701m)).mo277e();
        Arrays.sort(iArr);
        return new C2893c2(iArr);
    }

    @Override // p034j$.util.stream.AbstractC2890c
    /* renamed from: H0 */
    public InterfaceC2954m3 mo283H0(int i, InterfaceC2954m3 interfaceC2954m3) {
        Objects.requireNonNull(interfaceC2954m3);
        return EnumC2901d4.SORTED.m420d(i) ? interfaceC2954m3 : EnumC2901d4.SIZED.m420d(i) ? new C2825P3(interfaceC2954m3) : new C2777H3(interfaceC2954m3);
    }
}
