package p035j$.util.stream;

import java.util.Arrays;
import java.util.Objects;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.InterfaceC2675m;
/* renamed from: j$.util.stream.L3 */
/* loaded from: classes2.dex */
final class C2775L3 extends AbstractC2860b1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2775L3(AbstractC2864c abstractC2864c) {
        super(abstractC2864c, EnumC2881e4.LONG_VALUE, EnumC2875d4.f922q | EnumC2875d4.f920o);
    }

    @Override // p035j$.util.stream.AbstractC2864c
    /* renamed from: E0 */
    public InterfaceC2707A1 mo294E0(AbstractC2999y2 abstractC2999y2, InterfaceC2701s interfaceC2701s, InterfaceC2675m interfaceC2675m) {
        if (EnumC2875d4.SORTED.m429d(abstractC2999y2.mo299s0())) {
            return abstractC2999y2.mo302p0(interfaceC2701s, false, interfaceC2675m);
        }
        long[] jArr = (long[]) ((InterfaceC2998y1) abstractC2999y2.mo302p0(interfaceC2701s, true, interfaceC2675m)).mo286e();
        Arrays.sort(jArr);
        return new C2921l2(jArr);
    }

    @Override // p035j$.util.stream.AbstractC2864c
    /* renamed from: H0 */
    public InterfaceC2928m3 mo292H0(int i, InterfaceC2928m3 interfaceC2928m3) {
        Objects.requireNonNull(interfaceC2928m3);
        return EnumC2875d4.SORTED.m429d(i) ? interfaceC2928m3 : EnumC2875d4.SIZED.m429d(i) ? new C2805Q3(interfaceC2928m3) : new C2757I3(interfaceC2928m3);
    }
}
