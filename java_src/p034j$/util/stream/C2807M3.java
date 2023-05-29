package p034j$.util.stream;

import java.util.Arrays;
import java.util.Comparator;
import java.util.Objects;
import p034j$.util.Comparator;
import p034j$.util.InterfaceC2727s;
import p034j$.util.function.InterfaceC2701m;
/* renamed from: j$.util.stream.M3 */
/* loaded from: classes2.dex */
final class C2807M3 extends AbstractC2894c3 {

    /* renamed from: l */
    private final boolean f795l;

    /* renamed from: m */
    private final Comparator f796m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2807M3(AbstractC2890c abstractC2890c) {
        super(abstractC2890c, EnumC2907e4.REFERENCE, EnumC2901d4.f920q | EnumC2901d4.f918o);
        this.f795l = true;
        this.f796m = Comparator.CC.m633a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2807M3(AbstractC2890c abstractC2890c, java.util.Comparator comparator) {
        super(abstractC2890c, EnumC2907e4.REFERENCE, EnumC2901d4.f920q | EnumC2901d4.f919p);
        this.f795l = false;
        Objects.requireNonNull(comparator);
        this.f796m = comparator;
    }

    @Override // p034j$.util.stream.AbstractC2890c
    /* renamed from: E0 */
    public InterfaceC2733A1 mo285E0(AbstractC3025y2 abstractC3025y2, InterfaceC2727s interfaceC2727s, InterfaceC2701m interfaceC2701m) {
        if (EnumC2901d4.SORTED.m420d(abstractC3025y2.mo290s0()) && this.f795l) {
            return abstractC3025y2.mo293p0(interfaceC2727s, false, interfaceC2701m);
        }
        Object[] mo319q = abstractC3025y2.mo293p0(interfaceC2727s, true, interfaceC2701m).mo319q(interfaceC2701m);
        Arrays.sort(mo319q, this.f796m);
        return new C2751D1(mo319q);
    }

    @Override // p034j$.util.stream.AbstractC2890c
    /* renamed from: H0 */
    public InterfaceC2954m3 mo283H0(int i, InterfaceC2954m3 interfaceC2954m3) {
        Objects.requireNonNull(interfaceC2954m3);
        return (EnumC2901d4.SORTED.m420d(i) && this.f795l) ? interfaceC2954m3 : EnumC2901d4.SIZED.m420d(i) ? new C2836R3(interfaceC2954m3, this.f796m) : new C2813N3(interfaceC2954m3, this.f796m);
    }
}
