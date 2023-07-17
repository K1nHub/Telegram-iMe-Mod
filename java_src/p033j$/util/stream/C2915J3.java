package p033j$.util.stream;

import java.util.Arrays;
import java.util.Objects;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.InterfaceC2827m;
/* renamed from: j$.util.stream.J3 */
/* loaded from: classes2.dex */
final class C2915J3 extends AbstractC2953Q {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2915J3(AbstractC3016c abstractC3016c) {
        super(abstractC3016c, EnumC3033e4.DOUBLE_VALUE, EnumC3027d4.f1002q | EnumC3027d4.f1000o);
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: E0 */
    public InterfaceC2859A1 mo285E0(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s, InterfaceC2827m interfaceC2827m) {
        if (EnumC3027d4.SORTED.m420d(abstractC3151y2.mo290s0())) {
            return abstractC3151y2.mo293p0(interfaceC2853s, false, interfaceC2827m);
        }
        double[] dArr = (double[]) ((InterfaceC3126u1) abstractC3151y2.mo293p0(interfaceC2853s, true, interfaceC2827m)).mo277e();
        Arrays.sort(dArr);
        return new C2970T1(dArr);
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: H0 */
    public InterfaceC3080m3 mo283H0(int i, InterfaceC3080m3 interfaceC3080m3) {
        Objects.requireNonNull(interfaceC3080m3);
        return EnumC3027d4.SORTED.m420d(i) ? interfaceC3080m3 : EnumC3027d4.SIZED.m420d(i) ? new C2945O3(interfaceC3080m3) : new C2897G3(interfaceC3080m3);
    }
}
