package p033j$.util.stream;

import java.util.Arrays;
import java.util.Comparator;
import java.util.Objects;
import p033j$.util.Comparator;
import p033j$.util.InterfaceC2908s;
import p033j$.util.function.InterfaceC2882m;
/* renamed from: j$.util.stream.M3 */
/* loaded from: classes2.dex */
final class C2988M3 extends AbstractC3075c3 {

    /* renamed from: l */
    private final boolean f881l;

    /* renamed from: m */
    private final Comparator f882m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2988M3(AbstractC3071c abstractC3071c) {
        super(abstractC3071c, EnumC3088e4.REFERENCE, EnumC3082d4.f1006q | EnumC3082d4.f1004o);
        this.f881l = true;
        this.f882m = Comparator.CC.m651a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2988M3(AbstractC3071c abstractC3071c, java.util.Comparator comparator) {
        super(abstractC3071c, EnumC3088e4.REFERENCE, EnumC3082d4.f1006q | EnumC3082d4.f1005p);
        this.f881l = false;
        Objects.requireNonNull(comparator);
        this.f882m = comparator;
    }

    @Override // p033j$.util.stream.AbstractC3071c
    /* renamed from: E0 */
    public InterfaceC2914A1 mo303E0(AbstractC3206y2 abstractC3206y2, InterfaceC2908s interfaceC2908s, InterfaceC2882m interfaceC2882m) {
        if (EnumC3082d4.SORTED.m438d(abstractC3206y2.mo308s0()) && this.f881l) {
            return abstractC3206y2.mo311p0(interfaceC2908s, false, interfaceC2882m);
        }
        Object[] mo337q = abstractC3206y2.mo311p0(interfaceC2908s, true, interfaceC2882m).mo337q(interfaceC2882m);
        Arrays.sort(mo337q, this.f882m);
        return new C2932D1(mo337q);
    }

    @Override // p033j$.util.stream.AbstractC3071c
    /* renamed from: H0 */
    public InterfaceC3135m3 mo301H0(int i, InterfaceC3135m3 interfaceC3135m3) {
        Objects.requireNonNull(interfaceC3135m3);
        return (EnumC3082d4.SORTED.m438d(i) && this.f881l) ? interfaceC3135m3 : EnumC3082d4.SIZED.m438d(i) ? new C3017R3(interfaceC3135m3, this.f882m) : new C2994N3(interfaceC3135m3, this.f882m);
    }
}
