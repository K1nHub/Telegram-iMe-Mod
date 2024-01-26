package p033j$.util.stream;

import java.util.Arrays;
import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.IntFunction;
/* renamed from: j$.util.stream.K3 */
/* loaded from: classes2.dex */
final class C2912K3 extends AbstractC2903J0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2912K3(AbstractC3007c abstractC3007c) {
        super(abstractC3007c, EnumC3024e4.INT_VALUE, EnumC3018d4.f1055q | EnumC3018d4.f1053o);
    }

    @Override // p033j$.util.stream.AbstractC3007c
    /* renamed from: D0 */
    public InterfaceC2850A1 mo352D0(AbstractC3142y2 abstractC3142y2, Spliterator spliterator, IntFunction intFunction) {
        if (EnumC3018d4.SORTED.m487d(abstractC3142y2.mo357r0())) {
            return abstractC3142y2.mo360o0(spliterator, false, intFunction);
        }
        int[] iArr = (int[]) ((InterfaceC3129w1) abstractC3142y2.mo360o0(spliterator, true, intFunction)).mo344e();
        Arrays.sort(iArr);
        return new C3010c2(iArr);
    }

    @Override // p033j$.util.stream.AbstractC3007c
    /* renamed from: G0 */
    public InterfaceC3071m3 mo350G0(int i, InterfaceC3071m3 interfaceC3071m3) {
        Objects.requireNonNull(interfaceC3071m3);
        return EnumC3018d4.SORTED.m487d(i) ? interfaceC3071m3 : EnumC3018d4.SIZED.m487d(i) ? new C2942P3(interfaceC3071m3) : new C2894H3(interfaceC3071m3);
    }
}
