package p034j$.util.stream;

import java.util.Arrays;
import java.util.Comparator;
import java.util.Objects;
import p034j$.util.Comparator;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.InterfaceC2585m;
/* renamed from: j$.util.stream.M3 */
/* loaded from: classes2.dex */
final class C2691M3 extends AbstractC2778c3 {

    /* renamed from: l */
    private final boolean f791l;

    /* renamed from: m */
    private final Comparator f792m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2691M3(AbstractC2774c abstractC2774c) {
        super(abstractC2774c, EnumC2791e4.REFERENCE, EnumC2785d4.f916q | EnumC2785d4.f914o);
        this.f791l = true;
        this.f792m = Comparator.CC.m648a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2691M3(AbstractC2774c abstractC2774c, java.util.Comparator comparator) {
        super(abstractC2774c, EnumC2791e4.REFERENCE, EnumC2785d4.f916q | EnumC2785d4.f915p);
        this.f791l = false;
        Objects.requireNonNull(comparator);
        this.f792m = comparator;
    }

    @Override // p034j$.util.stream.AbstractC2774c
    /* renamed from: E0 */
    public InterfaceC2617A1 mo300E0(AbstractC2909y2 abstractC2909y2, InterfaceC2611s interfaceC2611s, InterfaceC2585m interfaceC2585m) {
        if (EnumC2785d4.SORTED.m435d(abstractC2909y2.mo305s0()) && this.f791l) {
            return abstractC2909y2.mo308p0(interfaceC2611s, false, interfaceC2585m);
        }
        Object[] mo334q = abstractC2909y2.mo308p0(interfaceC2611s, true, interfaceC2585m).mo334q(interfaceC2585m);
        Arrays.sort(mo334q, this.f792m);
        return new C2635D1(mo334q);
    }

    @Override // p034j$.util.stream.AbstractC2774c
    /* renamed from: H0 */
    public InterfaceC2838m3 mo298H0(int i, InterfaceC2838m3 interfaceC2838m3) {
        Objects.requireNonNull(interfaceC2838m3);
        return (EnumC2785d4.SORTED.m435d(i) && this.f791l) ? interfaceC2838m3 : EnumC2785d4.SIZED.m435d(i) ? new C2720R3(interfaceC2838m3, this.f792m) : new C2697N3(interfaceC2838m3, this.f792m);
    }
}
