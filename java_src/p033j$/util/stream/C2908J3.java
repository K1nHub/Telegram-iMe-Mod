package p033j$.util.stream;

import java.util.Arrays;
import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.IntFunction;
/* renamed from: j$.util.stream.J3 */
/* loaded from: classes2.dex */
final class C2908J3 extends AbstractC2946Q {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2908J3(AbstractC3009c abstractC3009c) {
        super(abstractC3009c, EnumC3026e4.DOUBLE_VALUE, EnumC3020d4.f1055q | EnumC3020d4.f1053o);
    }

    @Override // p033j$.util.stream.AbstractC3009c
    /* renamed from: D0 */
    public InterfaceC2852A1 mo349D0(AbstractC3144y2 abstractC3144y2, Spliterator spliterator, IntFunction intFunction) {
        if (EnumC3020d4.SORTED.m484d(abstractC3144y2.mo354r0())) {
            return abstractC3144y2.mo357o0(spliterator, false, intFunction);
        }
        double[] dArr = (double[]) ((InterfaceC3119u1) abstractC3144y2.mo357o0(spliterator, true, intFunction)).mo341e();
        Arrays.sort(dArr);
        return new C2963T1(dArr);
    }

    @Override // p033j$.util.stream.AbstractC3009c
    /* renamed from: G0 */
    public InterfaceC3073m3 mo347G0(int i, InterfaceC3073m3 interfaceC3073m3) {
        Objects.requireNonNull(interfaceC3073m3);
        return EnumC3020d4.SORTED.m484d(i) ? interfaceC3073m3 : EnumC3020d4.SIZED.m484d(i) ? new C2938O3(interfaceC3073m3) : new C2890G3(interfaceC3073m3);
    }
}
