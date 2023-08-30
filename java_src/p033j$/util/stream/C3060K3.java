package p033j$.util.stream;

import java.util.Arrays;
import java.util.Objects;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.InterfaceC2966m;
/* renamed from: j$.util.stream.K3 */
/* loaded from: classes2.dex */
final class C3060K3 extends AbstractC3051J0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3060K3(AbstractC3155c abstractC3155c) {
        super(abstractC3155c, EnumC3172e4.INT_VALUE, EnumC3166d4.f1015q | EnumC3166d4.f1013o);
    }

    @Override // p033j$.util.stream.AbstractC3155c
    /* renamed from: E0 */
    public InterfaceC2998A1 mo303E0(AbstractC3290y2 abstractC3290y2, InterfaceC2992s interfaceC2992s, InterfaceC2966m interfaceC2966m) {
        if (EnumC3166d4.SORTED.m438d(abstractC3290y2.mo308s0())) {
            return abstractC3290y2.mo311p0(interfaceC2992s, false, interfaceC2966m);
        }
        int[] iArr = (int[]) ((InterfaceC3277w1) abstractC3290y2.mo311p0(interfaceC2992s, true, interfaceC2966m)).mo295e();
        Arrays.sort(iArr);
        return new C3158c2(iArr);
    }

    @Override // p033j$.util.stream.AbstractC3155c
    /* renamed from: H0 */
    public InterfaceC3219m3 mo301H0(int i, InterfaceC3219m3 interfaceC3219m3) {
        Objects.requireNonNull(interfaceC3219m3);
        return EnumC3166d4.SORTED.m438d(i) ? interfaceC3219m3 : EnumC3166d4.SIZED.m438d(i) ? new C3090P3(interfaceC3219m3) : new C3042H3(interfaceC3219m3);
    }
}
