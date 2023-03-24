package p034j$.util.stream;

import java.util.Arrays;
import java.util.Comparator;
import java.util.Objects;
import p034j$.util.Comparator;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.InterfaceC2599m;
/* renamed from: j$.util.stream.M3 */
/* loaded from: classes2.dex */
final class C2705M3 extends AbstractC2792c3 {

    /* renamed from: l */
    private final boolean f792l;

    /* renamed from: m */
    private final Comparator f793m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2705M3(AbstractC2788c abstractC2788c) {
        super(abstractC2788c, EnumC2805e4.REFERENCE, EnumC2799d4.f917q | EnumC2799d4.f915o);
        this.f792l = true;
        this.f793m = Comparator.CC.m647a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2705M3(AbstractC2788c abstractC2788c, java.util.Comparator comparator) {
        super(abstractC2788c, EnumC2805e4.REFERENCE, EnumC2799d4.f917q | EnumC2799d4.f916p);
        this.f792l = false;
        Objects.requireNonNull(comparator);
        this.f793m = comparator;
    }

    @Override // p034j$.util.stream.AbstractC2788c
    /* renamed from: E0 */
    public InterfaceC2631A1 mo299E0(AbstractC2923y2 abstractC2923y2, InterfaceC2625s interfaceC2625s, InterfaceC2599m interfaceC2599m) {
        if (EnumC2799d4.SORTED.m434d(abstractC2923y2.mo304s0()) && this.f792l) {
            return abstractC2923y2.mo307p0(interfaceC2625s, false, interfaceC2599m);
        }
        Object[] mo333q = abstractC2923y2.mo307p0(interfaceC2625s, true, interfaceC2599m).mo333q(interfaceC2599m);
        Arrays.sort(mo333q, this.f793m);
        return new C2649D1(mo333q);
    }

    @Override // p034j$.util.stream.AbstractC2788c
    /* renamed from: H0 */
    public InterfaceC2852m3 mo297H0(int i, InterfaceC2852m3 interfaceC2852m3) {
        Objects.requireNonNull(interfaceC2852m3);
        return (EnumC2799d4.SORTED.m434d(i) && this.f792l) ? interfaceC2852m3 : EnumC2799d4.SIZED.m434d(i) ? new C2734R3(interfaceC2852m3, this.f793m) : new C2711N3(interfaceC2852m3, this.f793m);
    }
}
