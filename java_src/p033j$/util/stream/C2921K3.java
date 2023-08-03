package p033j$.util.stream;

import java.util.Arrays;
import java.util.Objects;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.InterfaceC2827m;
/* renamed from: j$.util.stream.K3 */
/* loaded from: classes2.dex */
final class C2921K3 extends AbstractC2912J0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2921K3(AbstractC3016c abstractC3016c) {
        super(abstractC3016c, EnumC3033e4.INT_VALUE, EnumC3027d4.f1005q | EnumC3027d4.f1003o);
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: E0 */
    public InterfaceC2859A1 mo303E0(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s, InterfaceC2827m interfaceC2827m) {
        if (EnumC3027d4.SORTED.m438d(abstractC3151y2.mo308s0())) {
            return abstractC3151y2.mo311p0(interfaceC2853s, false, interfaceC2827m);
        }
        int[] iArr = (int[]) ((InterfaceC3138w1) abstractC3151y2.mo311p0(interfaceC2853s, true, interfaceC2827m)).mo295e();
        Arrays.sort(iArr);
        return new C3019c2(iArr);
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: H0 */
    public InterfaceC3080m3 mo301H0(int i, InterfaceC3080m3 interfaceC3080m3) {
        Objects.requireNonNull(interfaceC3080m3);
        return EnumC3027d4.SORTED.m438d(i) ? interfaceC3080m3 : EnumC3027d4.SIZED.m438d(i) ? new C2951P3(interfaceC3080m3) : new C2903H3(interfaceC3080m3);
    }
}
