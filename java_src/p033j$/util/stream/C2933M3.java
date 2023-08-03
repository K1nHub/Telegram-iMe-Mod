package p033j$.util.stream;

import java.util.Arrays;
import java.util.Comparator;
import java.util.Objects;
import p033j$.util.Comparator;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.InterfaceC2827m;
/* renamed from: j$.util.stream.M3 */
/* loaded from: classes2.dex */
final class C2933M3 extends AbstractC3020c3 {

    /* renamed from: l */
    private final boolean f880l;

    /* renamed from: m */
    private final Comparator f881m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2933M3(AbstractC3016c abstractC3016c) {
        super(abstractC3016c, EnumC3033e4.REFERENCE, EnumC3027d4.f1005q | EnumC3027d4.f1003o);
        this.f880l = true;
        this.f881m = Comparator.CC.m651a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2933M3(AbstractC3016c abstractC3016c, java.util.Comparator comparator) {
        super(abstractC3016c, EnumC3033e4.REFERENCE, EnumC3027d4.f1005q | EnumC3027d4.f1004p);
        this.f880l = false;
        Objects.requireNonNull(comparator);
        this.f881m = comparator;
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: E0 */
    public InterfaceC2859A1 mo303E0(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s, InterfaceC2827m interfaceC2827m) {
        if (EnumC3027d4.SORTED.m438d(abstractC3151y2.mo308s0()) && this.f880l) {
            return abstractC3151y2.mo311p0(interfaceC2853s, false, interfaceC2827m);
        }
        Object[] mo337q = abstractC3151y2.mo311p0(interfaceC2853s, true, interfaceC2827m).mo337q(interfaceC2827m);
        Arrays.sort(mo337q, this.f881m);
        return new C2877D1(mo337q);
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: H0 */
    public InterfaceC3080m3 mo301H0(int i, InterfaceC3080m3 interfaceC3080m3) {
        Objects.requireNonNull(interfaceC3080m3);
        return (EnumC3027d4.SORTED.m438d(i) && this.f880l) ? interfaceC3080m3 : EnumC3027d4.SIZED.m438d(i) ? new C2962R3(interfaceC3080m3, this.f881m) : new C2939N3(interfaceC3080m3, this.f881m);
    }
}
