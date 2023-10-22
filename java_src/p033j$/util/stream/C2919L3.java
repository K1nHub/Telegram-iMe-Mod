package p033j$.util.stream;

import java.util.Arrays;
import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.IntFunction;
/* renamed from: j$.util.stream.L3 */
/* loaded from: classes2.dex */
final class C2919L3 extends AbstractC3004b1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2919L3(AbstractC3008c abstractC3008c) {
        super(abstractC3008c, EnumC3025e4.LONG_VALUE, EnumC3019d4.f1055q | EnumC3019d4.f1053o);
    }

    @Override // p033j$.util.stream.AbstractC3008c
    /* renamed from: D0 */
    public InterfaceC2851A1 mo348D0(AbstractC3143y2 abstractC3143y2, Spliterator spliterator, IntFunction intFunction) {
        if (EnumC3019d4.SORTED.m483d(abstractC3143y2.mo353r0())) {
            return abstractC3143y2.mo356o0(spliterator, false, intFunction);
        }
        long[] jArr = (long[]) ((InterfaceC3142y1) abstractC3143y2.mo356o0(spliterator, true, intFunction)).mo340e();
        Arrays.sort(jArr);
        return new C3065l2(jArr);
    }

    @Override // p033j$.util.stream.AbstractC3008c
    /* renamed from: G0 */
    public InterfaceC3072m3 mo346G0(int i, InterfaceC3072m3 interfaceC3072m3) {
        Objects.requireNonNull(interfaceC3072m3);
        return EnumC3019d4.SORTED.m483d(i) ? interfaceC3072m3 : EnumC3019d4.SIZED.m483d(i) ? new C2949Q3(interfaceC3072m3) : new C2901I3(interfaceC3072m3);
    }
}
