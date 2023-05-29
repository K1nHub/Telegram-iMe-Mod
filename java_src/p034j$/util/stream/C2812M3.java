package p034j$.util.stream;

import java.util.Arrays;
import java.util.Comparator;
import java.util.Objects;
import p034j$.util.Comparator;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.InterfaceC2706m;
/* renamed from: j$.util.stream.M3 */
/* loaded from: classes2.dex */
final class C2812M3 extends AbstractC2899c3 {

    /* renamed from: l */
    private final boolean f795l;

    /* renamed from: m */
    private final Comparator f796m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2812M3(AbstractC2895c abstractC2895c) {
        super(abstractC2895c, EnumC2912e4.REFERENCE, EnumC2906d4.f920q | EnumC2906d4.f918o);
        this.f795l = true;
        this.f796m = Comparator.CC.m633a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2812M3(AbstractC2895c abstractC2895c, java.util.Comparator comparator) {
        super(abstractC2895c, EnumC2912e4.REFERENCE, EnumC2906d4.f920q | EnumC2906d4.f919p);
        this.f795l = false;
        Objects.requireNonNull(comparator);
        this.f796m = comparator;
    }

    @Override // p034j$.util.stream.AbstractC2895c
    /* renamed from: E0 */
    public InterfaceC2738A1 mo285E0(AbstractC3030y2 abstractC3030y2, InterfaceC2732s interfaceC2732s, InterfaceC2706m interfaceC2706m) {
        if (EnumC2906d4.SORTED.m420d(abstractC3030y2.mo290s0()) && this.f795l) {
            return abstractC3030y2.mo293p0(interfaceC2732s, false, interfaceC2706m);
        }
        Object[] mo319q = abstractC3030y2.mo293p0(interfaceC2732s, true, interfaceC2706m).mo319q(interfaceC2706m);
        Arrays.sort(mo319q, this.f796m);
        return new C2756D1(mo319q);
    }

    @Override // p034j$.util.stream.AbstractC2895c
    /* renamed from: H0 */
    public InterfaceC2959m3 mo283H0(int i, InterfaceC2959m3 interfaceC2959m3) {
        Objects.requireNonNull(interfaceC2959m3);
        return (EnumC2906d4.SORTED.m420d(i) && this.f795l) ? interfaceC2959m3 : EnumC2906d4.SIZED.m420d(i) ? new C2841R3(interfaceC2959m3, this.f796m) : new C2818N3(interfaceC2959m3, this.f796m);
    }
}
