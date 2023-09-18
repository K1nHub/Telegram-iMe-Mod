package p033j$.util.stream;

import java.util.Arrays;
import java.util.Objects;
import p033j$.util.InterfaceC2908s;
import p033j$.util.function.InterfaceC2882m;
/* renamed from: j$.util.stream.K3 */
/* loaded from: classes2.dex */
final class C2976K3 extends AbstractC2967J0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2976K3(AbstractC3071c abstractC3071c) {
        super(abstractC3071c, EnumC3088e4.INT_VALUE, EnumC3082d4.f1006q | EnumC3082d4.f1004o);
    }

    @Override // p033j$.util.stream.AbstractC3071c
    /* renamed from: E0 */
    public InterfaceC2914A1 mo303E0(AbstractC3206y2 abstractC3206y2, InterfaceC2908s interfaceC2908s, InterfaceC2882m interfaceC2882m) {
        if (EnumC3082d4.SORTED.m438d(abstractC3206y2.mo308s0())) {
            return abstractC3206y2.mo311p0(interfaceC2908s, false, interfaceC2882m);
        }
        int[] iArr = (int[]) ((InterfaceC3193w1) abstractC3206y2.mo311p0(interfaceC2908s, true, interfaceC2882m)).mo295e();
        Arrays.sort(iArr);
        return new C3074c2(iArr);
    }

    @Override // p033j$.util.stream.AbstractC3071c
    /* renamed from: H0 */
    public InterfaceC3135m3 mo301H0(int i, InterfaceC3135m3 interfaceC3135m3) {
        Objects.requireNonNull(interfaceC3135m3);
        return EnumC3082d4.SORTED.m438d(i) ? interfaceC3135m3 : EnumC3082d4.SIZED.m438d(i) ? new C3006P3(interfaceC3135m3) : new C2958H3(interfaceC3135m3);
    }
}
