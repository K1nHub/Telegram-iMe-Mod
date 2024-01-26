package p033j$.util.stream;

import java.util.Arrays;
import java.util.Comparator;
import java.util.Objects;
import p033j$.util.Comparator;
import p033j$.util.Spliterator;
import p033j$.util.function.IntFunction;
/* renamed from: j$.util.stream.M3 */
/* loaded from: classes2.dex */
final class C2924M3 extends AbstractC3011c3 {

    /* renamed from: l */
    private final boolean f930l;

    /* renamed from: m */
    private final Comparator f931m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2924M3(AbstractC3007c abstractC3007c) {
        super(abstractC3007c, EnumC3024e4.REFERENCE, EnumC3018d4.f1055q | EnumC3018d4.f1053o);
        this.f930l = true;
        this.f931m = Comparator.CC.m697a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2924M3(AbstractC3007c abstractC3007c, java.util.Comparator comparator) {
        super(abstractC3007c, EnumC3024e4.REFERENCE, EnumC3018d4.f1055q | EnumC3018d4.f1054p);
        this.f930l = false;
        Objects.requireNonNull(comparator);
        this.f931m = comparator;
    }

    @Override // p033j$.util.stream.AbstractC3007c
    /* renamed from: D0 */
    public InterfaceC2850A1 mo352D0(AbstractC3142y2 abstractC3142y2, Spliterator spliterator, IntFunction intFunction) {
        if (EnumC3018d4.SORTED.m487d(abstractC3142y2.mo357r0()) && this.f930l) {
            return abstractC3142y2.mo360o0(spliterator, false, intFunction);
        }
        Object[] mo386p = abstractC3142y2.mo360o0(spliterator, true, intFunction).mo386p(intFunction);
        Arrays.sort(mo386p, this.f931m);
        return new C2868D1(mo386p);
    }

    @Override // p033j$.util.stream.AbstractC3007c
    /* renamed from: G0 */
    public InterfaceC3071m3 mo350G0(int i, InterfaceC3071m3 interfaceC3071m3) {
        Objects.requireNonNull(interfaceC3071m3);
        return (EnumC3018d4.SORTED.m487d(i) && this.f930l) ? interfaceC3071m3 : EnumC3018d4.SIZED.m487d(i) ? new C2953R3(interfaceC3071m3, this.f931m) : new C2930N3(interfaceC3071m3, this.f931m);
    }
}
