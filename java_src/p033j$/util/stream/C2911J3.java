package p033j$.util.stream;

import java.util.Arrays;
import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.IntFunction;
/* renamed from: j$.util.stream.J3 */
/* loaded from: classes2.dex */
final class C2911J3 extends AbstractC2949Q {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2911J3(AbstractC3012c abstractC3012c) {
        super(abstractC3012c, EnumC3029e4.DOUBLE_VALUE, EnumC3023d4.f1055q | EnumC3023d4.f1053o);
    }

    @Override // p033j$.util.stream.AbstractC3012c
    /* renamed from: D0 */
    public InterfaceC2855A1 mo349D0(AbstractC3147y2 abstractC3147y2, Spliterator spliterator, IntFunction intFunction) {
        if (EnumC3023d4.SORTED.m484d(abstractC3147y2.mo354r0())) {
            return abstractC3147y2.mo357o0(spliterator, false, intFunction);
        }
        double[] dArr = (double[]) ((InterfaceC3122u1) abstractC3147y2.mo357o0(spliterator, true, intFunction)).mo341e();
        Arrays.sort(dArr);
        return new C2966T1(dArr);
    }

    @Override // p033j$.util.stream.AbstractC3012c
    /* renamed from: G0 */
    public InterfaceC3076m3 mo347G0(int i, InterfaceC3076m3 interfaceC3076m3) {
        Objects.requireNonNull(interfaceC3076m3);
        return EnumC3023d4.SORTED.m484d(i) ? interfaceC3076m3 : EnumC3023d4.SIZED.m484d(i) ? new C2941O3(interfaceC3076m3) : new C2893G3(interfaceC3076m3);
    }
}
