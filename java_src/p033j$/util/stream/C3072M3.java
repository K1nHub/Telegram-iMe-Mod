package p033j$.util.stream;

import java.util.Arrays;
import java.util.Comparator;
import java.util.Objects;
import p033j$.util.Comparator;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.InterfaceC2966m;
/* renamed from: j$.util.stream.M3 */
/* loaded from: classes2.dex */
final class C3072M3 extends AbstractC3159c3 {

    /* renamed from: l */
    private final boolean f890l;

    /* renamed from: m */
    private final Comparator f891m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3072M3(AbstractC3155c abstractC3155c) {
        super(abstractC3155c, EnumC3172e4.REFERENCE, EnumC3166d4.f1015q | EnumC3166d4.f1013o);
        this.f890l = true;
        this.f891m = Comparator.CC.m651a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3072M3(AbstractC3155c abstractC3155c, java.util.Comparator comparator) {
        super(abstractC3155c, EnumC3172e4.REFERENCE, EnumC3166d4.f1015q | EnumC3166d4.f1014p);
        this.f890l = false;
        Objects.requireNonNull(comparator);
        this.f891m = comparator;
    }

    @Override // p033j$.util.stream.AbstractC3155c
    /* renamed from: E0 */
    public InterfaceC2998A1 mo303E0(AbstractC3290y2 abstractC3290y2, InterfaceC2992s interfaceC2992s, InterfaceC2966m interfaceC2966m) {
        if (EnumC3166d4.SORTED.m438d(abstractC3290y2.mo308s0()) && this.f890l) {
            return abstractC3290y2.mo311p0(interfaceC2992s, false, interfaceC2966m);
        }
        Object[] mo337q = abstractC3290y2.mo311p0(interfaceC2992s, true, interfaceC2966m).mo337q(interfaceC2966m);
        Arrays.sort(mo337q, this.f891m);
        return new C3016D1(mo337q);
    }

    @Override // p033j$.util.stream.AbstractC3155c
    /* renamed from: H0 */
    public InterfaceC3219m3 mo301H0(int i, InterfaceC3219m3 interfaceC3219m3) {
        Objects.requireNonNull(interfaceC3219m3);
        return (EnumC3166d4.SORTED.m438d(i) && this.f890l) ? interfaceC3219m3 : EnumC3166d4.SIZED.m438d(i) ? new C3101R3(interfaceC3219m3, this.f891m) : new C3078N3(interfaceC3219m3, this.f891m);
    }
}
