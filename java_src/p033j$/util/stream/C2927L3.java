package p033j$.util.stream;

import java.util.Arrays;
import java.util.Objects;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.InterfaceC2827m;
/* renamed from: j$.util.stream.L3 */
/* loaded from: classes2.dex */
final class C2927L3 extends AbstractC3012b1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2927L3(AbstractC3016c abstractC3016c) {
        super(abstractC3016c, EnumC3033e4.LONG_VALUE, EnumC3027d4.f1002q | EnumC3027d4.f1000o);
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: E0 */
    public InterfaceC2859A1 mo285E0(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s, InterfaceC2827m interfaceC2827m) {
        if (EnumC3027d4.SORTED.m420d(abstractC3151y2.mo290s0())) {
            return abstractC3151y2.mo293p0(interfaceC2853s, false, interfaceC2827m);
        }
        long[] jArr = (long[]) ((InterfaceC3150y1) abstractC3151y2.mo293p0(interfaceC2853s, true, interfaceC2827m)).mo277e();
        Arrays.sort(jArr);
        return new C3073l2(jArr);
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: H0 */
    public InterfaceC3080m3 mo283H0(int i, InterfaceC3080m3 interfaceC3080m3) {
        Objects.requireNonNull(interfaceC3080m3);
        return EnumC3027d4.SORTED.m420d(i) ? interfaceC3080m3 : EnumC3027d4.SIZED.m420d(i) ? new C2957Q3(interfaceC3080m3) : new C2909I3(interfaceC3080m3);
    }
}
