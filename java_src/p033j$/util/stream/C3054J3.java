package p033j$.util.stream;

import java.util.Arrays;
import java.util.Objects;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.InterfaceC2966m;
/* renamed from: j$.util.stream.J3 */
/* loaded from: classes2.dex */
final class C3054J3 extends AbstractC3092Q {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3054J3(AbstractC3155c abstractC3155c) {
        super(abstractC3155c, EnumC3172e4.DOUBLE_VALUE, EnumC3166d4.f1015q | EnumC3166d4.f1013o);
    }

    @Override // p033j$.util.stream.AbstractC3155c
    /* renamed from: E0 */
    public InterfaceC2998A1 mo303E0(AbstractC3290y2 abstractC3290y2, InterfaceC2992s interfaceC2992s, InterfaceC2966m interfaceC2966m) {
        if (EnumC3166d4.SORTED.m438d(abstractC3290y2.mo308s0())) {
            return abstractC3290y2.mo311p0(interfaceC2992s, false, interfaceC2966m);
        }
        double[] dArr = (double[]) ((InterfaceC3265u1) abstractC3290y2.mo311p0(interfaceC2992s, true, interfaceC2966m)).mo295e();
        Arrays.sort(dArr);
        return new C3109T1(dArr);
    }

    @Override // p033j$.util.stream.AbstractC3155c
    /* renamed from: H0 */
    public InterfaceC3219m3 mo301H0(int i, InterfaceC3219m3 interfaceC3219m3) {
        Objects.requireNonNull(interfaceC3219m3);
        return EnumC3166d4.SORTED.m438d(i) ? interfaceC3219m3 : EnumC3166d4.SIZED.m438d(i) ? new C3084O3(interfaceC3219m3) : new C3036G3(interfaceC3219m3);
    }
}
