package p033j$.util.stream;

import java.util.Arrays;
import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.IntFunction;
/* renamed from: j$.util.stream.J3 */
/* loaded from: classes2.dex */
final class C2907J3 extends AbstractC2945Q {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2907J3(AbstractC3008c abstractC3008c) {
        super(abstractC3008c, EnumC3025e4.DOUBLE_VALUE, EnumC3019d4.f1055q | EnumC3019d4.f1053o);
    }

    @Override // p033j$.util.stream.AbstractC3008c
    /* renamed from: D0 */
    public InterfaceC2851A1 mo348D0(AbstractC3143y2 abstractC3143y2, Spliterator spliterator, IntFunction intFunction) {
        if (EnumC3019d4.SORTED.m483d(abstractC3143y2.mo353r0())) {
            return abstractC3143y2.mo356o0(spliterator, false, intFunction);
        }
        double[] dArr = (double[]) ((InterfaceC3118u1) abstractC3143y2.mo356o0(spliterator, true, intFunction)).mo340e();
        Arrays.sort(dArr);
        return new C2962T1(dArr);
    }

    @Override // p033j$.util.stream.AbstractC3008c
    /* renamed from: G0 */
    public InterfaceC3072m3 mo346G0(int i, InterfaceC3072m3 interfaceC3072m3) {
        Objects.requireNonNull(interfaceC3072m3);
        return EnumC3019d4.SORTED.m483d(i) ? interfaceC3072m3 : EnumC3019d4.SIZED.m483d(i) ? new C2937O3(interfaceC3072m3) : new C2889G3(interfaceC3072m3);
    }
}
