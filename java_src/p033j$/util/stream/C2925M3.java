package p033j$.util.stream;

import java.util.Arrays;
import java.util.Comparator;
import java.util.Objects;
import p033j$.util.Comparator;
import p033j$.util.Spliterator;
import p033j$.util.function.IntFunction;
/* renamed from: j$.util.stream.M3 */
/* loaded from: classes2.dex */
final class C2925M3 extends AbstractC3012c3 {

    /* renamed from: l */
    private final boolean f930l;

    /* renamed from: m */
    private final Comparator f931m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2925M3(AbstractC3008c abstractC3008c) {
        super(abstractC3008c, EnumC3025e4.REFERENCE, EnumC3019d4.f1055q | EnumC3019d4.f1053o);
        this.f930l = true;
        this.f931m = Comparator.CC.m693a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2925M3(AbstractC3008c abstractC3008c, java.util.Comparator comparator) {
        super(abstractC3008c, EnumC3025e4.REFERENCE, EnumC3019d4.f1055q | EnumC3019d4.f1054p);
        this.f930l = false;
        Objects.requireNonNull(comparator);
        this.f931m = comparator;
    }

    @Override // p033j$.util.stream.AbstractC3008c
    /* renamed from: D0 */
    public InterfaceC2851A1 mo348D0(AbstractC3143y2 abstractC3143y2, Spliterator spliterator, IntFunction intFunction) {
        if (EnumC3019d4.SORTED.m483d(abstractC3143y2.mo353r0()) && this.f930l) {
            return abstractC3143y2.mo356o0(spliterator, false, intFunction);
        }
        Object[] mo382p = abstractC3143y2.mo356o0(spliterator, true, intFunction).mo382p(intFunction);
        Arrays.sort(mo382p, this.f931m);
        return new C2869D1(mo382p);
    }

    @Override // p033j$.util.stream.AbstractC3008c
    /* renamed from: G0 */
    public InterfaceC3072m3 mo346G0(int i, InterfaceC3072m3 interfaceC3072m3) {
        Objects.requireNonNull(interfaceC3072m3);
        return (EnumC3019d4.SORTED.m483d(i) && this.f930l) ? interfaceC3072m3 : EnumC3019d4.SIZED.m483d(i) ? new C2954R3(interfaceC3072m3, this.f931m) : new C2931N3(interfaceC3072m3, this.f931m);
    }
}
