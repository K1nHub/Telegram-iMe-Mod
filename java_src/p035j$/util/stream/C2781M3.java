package p035j$.util.stream;

import java.util.Arrays;
import java.util.Comparator;
import java.util.Objects;
import p035j$.util.Comparator;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.InterfaceC2675m;
/* renamed from: j$.util.stream.M3 */
/* loaded from: classes2.dex */
final class C2781M3 extends AbstractC2868c3 {

    /* renamed from: l */
    private final boolean f797l;

    /* renamed from: m */
    private final Comparator f798m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2781M3(AbstractC2864c abstractC2864c) {
        super(abstractC2864c, EnumC2881e4.REFERENCE, EnumC2875d4.f922q | EnumC2875d4.f920o);
        this.f797l = true;
        this.f798m = Comparator.CC.m642a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2781M3(AbstractC2864c abstractC2864c, java.util.Comparator comparator) {
        super(abstractC2864c, EnumC2881e4.REFERENCE, EnumC2875d4.f922q | EnumC2875d4.f921p);
        this.f797l = false;
        Objects.requireNonNull(comparator);
        this.f798m = comparator;
    }

    @Override // p035j$.util.stream.AbstractC2864c
    /* renamed from: E0 */
    public InterfaceC2707A1 mo294E0(AbstractC2999y2 abstractC2999y2, InterfaceC2701s interfaceC2701s, InterfaceC2675m interfaceC2675m) {
        if (EnumC2875d4.SORTED.m429d(abstractC2999y2.mo299s0()) && this.f797l) {
            return abstractC2999y2.mo302p0(interfaceC2701s, false, interfaceC2675m);
        }
        Object[] mo328q = abstractC2999y2.mo302p0(interfaceC2701s, true, interfaceC2675m).mo328q(interfaceC2675m);
        Arrays.sort(mo328q, this.f798m);
        return new C2725D1(mo328q);
    }

    @Override // p035j$.util.stream.AbstractC2864c
    /* renamed from: H0 */
    public InterfaceC2928m3 mo292H0(int i, InterfaceC2928m3 interfaceC2928m3) {
        Objects.requireNonNull(interfaceC2928m3);
        return (EnumC2875d4.SORTED.m429d(i) && this.f797l) ? interfaceC2928m3 : EnumC2875d4.SIZED.m429d(i) ? new C2810R3(interfaceC2928m3, this.f798m) : new C2787N3(interfaceC2928m3, this.f798m);
    }
}
