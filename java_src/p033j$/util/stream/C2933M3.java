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
    private final boolean f877l;

    /* renamed from: m */
    private final Comparator f878m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2933M3(AbstractC3016c abstractC3016c) {
        super(abstractC3016c, EnumC3033e4.REFERENCE, EnumC3027d4.f1002q | EnumC3027d4.f1000o);
        this.f877l = true;
        this.f878m = Comparator.CC.m633a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2933M3(AbstractC3016c abstractC3016c, java.util.Comparator comparator) {
        super(abstractC3016c, EnumC3033e4.REFERENCE, EnumC3027d4.f1002q | EnumC3027d4.f1001p);
        this.f877l = false;
        Objects.requireNonNull(comparator);
        this.f878m = comparator;
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: E0 */
    public InterfaceC2859A1 mo285E0(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s, InterfaceC2827m interfaceC2827m) {
        if (EnumC3027d4.SORTED.m420d(abstractC3151y2.mo290s0()) && this.f877l) {
            return abstractC3151y2.mo293p0(interfaceC2853s, false, interfaceC2827m);
        }
        Object[] mo319q = abstractC3151y2.mo293p0(interfaceC2853s, true, interfaceC2827m).mo319q(interfaceC2827m);
        Arrays.sort(mo319q, this.f878m);
        return new C2877D1(mo319q);
    }

    @Override // p033j$.util.stream.AbstractC3016c
    /* renamed from: H0 */
    public InterfaceC3080m3 mo283H0(int i, InterfaceC3080m3 interfaceC3080m3) {
        Objects.requireNonNull(interfaceC3080m3);
        return (EnumC3027d4.SORTED.m420d(i) && this.f877l) ? interfaceC3080m3 : EnumC3027d4.SIZED.m420d(i) ? new C2962R3(interfaceC3080m3, this.f878m) : new C2939N3(interfaceC3080m3, this.f878m);
    }
}
