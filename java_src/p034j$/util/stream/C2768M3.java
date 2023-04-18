package p034j$.util.stream;

import java.util.Arrays;
import java.util.Comparator;
import java.util.Objects;
import p034j$.util.Comparator;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.InterfaceC2662m;
/* renamed from: j$.util.stream.M3 */
/* loaded from: classes2.dex */
final class C2768M3 extends AbstractC2855c3 {

    /* renamed from: l */
    private final boolean f792l;

    /* renamed from: m */
    private final Comparator f793m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2768M3(AbstractC2851c abstractC2851c) {
        super(abstractC2851c, EnumC2868e4.REFERENCE, EnumC2862d4.f917q | EnumC2862d4.f915o);
        this.f792l = true;
        this.f793m = Comparator.CC.m628a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2768M3(AbstractC2851c abstractC2851c, java.util.Comparator comparator) {
        super(abstractC2851c, EnumC2868e4.REFERENCE, EnumC2862d4.f917q | EnumC2862d4.f916p);
        this.f792l = false;
        Objects.requireNonNull(comparator);
        this.f793m = comparator;
    }

    @Override // p034j$.util.stream.AbstractC2851c
    /* renamed from: E0 */
    public InterfaceC2694A1 mo280E0(AbstractC2986y2 abstractC2986y2, InterfaceC2688s interfaceC2688s, InterfaceC2662m interfaceC2662m) {
        if (EnumC2862d4.SORTED.m415d(abstractC2986y2.mo285s0()) && this.f792l) {
            return abstractC2986y2.mo288p0(interfaceC2688s, false, interfaceC2662m);
        }
        Object[] mo314q = abstractC2986y2.mo288p0(interfaceC2688s, true, interfaceC2662m).mo314q(interfaceC2662m);
        Arrays.sort(mo314q, this.f793m);
        return new C2712D1(mo314q);
    }

    @Override // p034j$.util.stream.AbstractC2851c
    /* renamed from: H0 */
    public InterfaceC2915m3 mo278H0(int i, InterfaceC2915m3 interfaceC2915m3) {
        Objects.requireNonNull(interfaceC2915m3);
        return (EnumC2862d4.SORTED.m415d(i) && this.f792l) ? interfaceC2915m3 : EnumC2862d4.SIZED.m415d(i) ? new C2797R3(interfaceC2915m3, this.f793m) : new C2774N3(interfaceC2915m3, this.f793m);
    }
}
