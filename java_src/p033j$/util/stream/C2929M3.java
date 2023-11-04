package p033j$.util.stream;

import java.util.Arrays;
import java.util.Comparator;
import java.util.Objects;
import p033j$.util.Comparator;
import p033j$.util.Spliterator;
import p033j$.util.function.IntFunction;
/* renamed from: j$.util.stream.M3 */
/* loaded from: classes2.dex */
final class C2929M3 extends AbstractC3016c3 {

    /* renamed from: l */
    private final boolean f930l;

    /* renamed from: m */
    private final Comparator f931m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2929M3(AbstractC3012c abstractC3012c) {
        super(abstractC3012c, EnumC3029e4.REFERENCE, EnumC3023d4.f1055q | EnumC3023d4.f1053o);
        this.f930l = true;
        this.f931m = Comparator.CC.m694a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2929M3(AbstractC3012c abstractC3012c, java.util.Comparator comparator) {
        super(abstractC3012c, EnumC3029e4.REFERENCE, EnumC3023d4.f1055q | EnumC3023d4.f1054p);
        this.f930l = false;
        Objects.requireNonNull(comparator);
        this.f931m = comparator;
    }

    @Override // p033j$.util.stream.AbstractC3012c
    /* renamed from: D0 */
    public InterfaceC2855A1 mo349D0(AbstractC3147y2 abstractC3147y2, Spliterator spliterator, IntFunction intFunction) {
        if (EnumC3023d4.SORTED.m484d(abstractC3147y2.mo354r0()) && this.f930l) {
            return abstractC3147y2.mo357o0(spliterator, false, intFunction);
        }
        Object[] mo383p = abstractC3147y2.mo357o0(spliterator, true, intFunction).mo383p(intFunction);
        Arrays.sort(mo383p, this.f931m);
        return new C2873D1(mo383p);
    }

    @Override // p033j$.util.stream.AbstractC3012c
    /* renamed from: G0 */
    public InterfaceC3076m3 mo347G0(int i, InterfaceC3076m3 interfaceC3076m3) {
        Objects.requireNonNull(interfaceC3076m3);
        return (EnumC3023d4.SORTED.m484d(i) && this.f930l) ? interfaceC3076m3 : EnumC3023d4.SIZED.m484d(i) ? new C2958R3(interfaceC3076m3, this.f931m) : new C2935N3(interfaceC3076m3, this.f931m);
    }
}
