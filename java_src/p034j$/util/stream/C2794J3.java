package p034j$.util.stream;

import java.util.Arrays;
import java.util.Objects;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.InterfaceC2706m;
/* renamed from: j$.util.stream.J3 */
/* loaded from: classes2.dex */
final class C2794J3 extends AbstractC2832Q {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2794J3(AbstractC2895c abstractC2895c) {
        super(abstractC2895c, EnumC2912e4.DOUBLE_VALUE, EnumC2906d4.f920q | EnumC2906d4.f918o);
    }

    @Override // p034j$.util.stream.AbstractC2895c
    /* renamed from: E0 */
    public InterfaceC2738A1 mo285E0(AbstractC3030y2 abstractC3030y2, InterfaceC2732s interfaceC2732s, InterfaceC2706m interfaceC2706m) {
        if (EnumC2906d4.SORTED.m420d(abstractC3030y2.mo290s0())) {
            return abstractC3030y2.mo293p0(interfaceC2732s, false, interfaceC2706m);
        }
        double[] dArr = (double[]) ((InterfaceC3005u1) abstractC3030y2.mo293p0(interfaceC2732s, true, interfaceC2706m)).mo277e();
        Arrays.sort(dArr);
        return new C2849T1(dArr);
    }

    @Override // p034j$.util.stream.AbstractC2895c
    /* renamed from: H0 */
    public InterfaceC2959m3 mo283H0(int i, InterfaceC2959m3 interfaceC2959m3) {
        Objects.requireNonNull(interfaceC2959m3);
        return EnumC2906d4.SORTED.m420d(i) ? interfaceC2959m3 : EnumC2906d4.SIZED.m420d(i) ? new C2824O3(interfaceC2959m3) : new C2776G3(interfaceC2959m3);
    }
}
