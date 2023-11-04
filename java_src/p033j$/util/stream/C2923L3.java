package p033j$.util.stream;

import java.util.Arrays;
import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.IntFunction;
/* renamed from: j$.util.stream.L3 */
/* loaded from: classes2.dex */
final class C2923L3 extends AbstractC3008b1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2923L3(AbstractC3012c abstractC3012c) {
        super(abstractC3012c, EnumC3029e4.LONG_VALUE, EnumC3023d4.f1055q | EnumC3023d4.f1053o);
    }

    @Override // p033j$.util.stream.AbstractC3012c
    /* renamed from: D0 */
    public InterfaceC2855A1 mo349D0(AbstractC3147y2 abstractC3147y2, Spliterator spliterator, IntFunction intFunction) {
        if (EnumC3023d4.SORTED.m484d(abstractC3147y2.mo354r0())) {
            return abstractC3147y2.mo357o0(spliterator, false, intFunction);
        }
        long[] jArr = (long[]) ((InterfaceC3146y1) abstractC3147y2.mo357o0(spliterator, true, intFunction)).mo341e();
        Arrays.sort(jArr);
        return new C3069l2(jArr);
    }

    @Override // p033j$.util.stream.AbstractC3012c
    /* renamed from: G0 */
    public InterfaceC3076m3 mo347G0(int i, InterfaceC3076m3 interfaceC3076m3) {
        Objects.requireNonNull(interfaceC3076m3);
        return EnumC3023d4.SORTED.m484d(i) ? interfaceC3076m3 : EnumC3023d4.SIZED.m484d(i) ? new C2953Q3(interfaceC3076m3) : new C2905I3(interfaceC3076m3);
    }
}
