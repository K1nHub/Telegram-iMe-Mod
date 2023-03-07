package p034j$.util.stream;

import java.util.Arrays;
import java.util.Objects;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.InterfaceC2461m;
/* renamed from: j$.util.stream.J3 */
/* loaded from: classes2.dex */
final class C2549J3 extends AbstractC2587Q {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2549J3(AbstractC2650c abstractC2650c) {
        super(abstractC2650c, EnumC2667e4.DOUBLE_VALUE, EnumC2661d4.f911q | EnumC2661d4.f909o);
    }

    @Override // p034j$.util.stream.AbstractC2650c
    /* renamed from: E0 */
    public InterfaceC2493A1 mo300E0(AbstractC2785y2 abstractC2785y2, InterfaceC2487s interfaceC2487s, InterfaceC2461m interfaceC2461m) {
        if (EnumC2661d4.SORTED.m435d(abstractC2785y2.mo305s0())) {
            return abstractC2785y2.mo308p0(interfaceC2487s, false, interfaceC2461m);
        }
        double[] dArr = (double[]) ((InterfaceC2760u1) abstractC2785y2.mo308p0(interfaceC2487s, true, interfaceC2461m)).mo292e();
        Arrays.sort(dArr);
        return new C2604T1(dArr);
    }

    @Override // p034j$.util.stream.AbstractC2650c
    /* renamed from: H0 */
    public InterfaceC2714m3 mo298H0(int i, InterfaceC2714m3 interfaceC2714m3) {
        Objects.requireNonNull(interfaceC2714m3);
        return EnumC2661d4.SORTED.m435d(i) ? interfaceC2714m3 : EnumC2661d4.SIZED.m435d(i) ? new C2579O3(interfaceC2714m3) : new C2531G3(interfaceC2714m3);
    }
}
