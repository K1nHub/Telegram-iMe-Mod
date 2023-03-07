package p034j$.util.stream;

import java.util.Arrays;
import java.util.Comparator;
import java.util.Objects;
import p034j$.util.Comparator;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.InterfaceC2461m;
/* renamed from: j$.util.stream.M3 */
/* loaded from: classes2.dex */
final class C2567M3 extends AbstractC2654c3 {

    /* renamed from: l */
    private final boolean f786l;

    /* renamed from: m */
    private final Comparator f787m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2567M3(AbstractC2650c abstractC2650c) {
        super(abstractC2650c, EnumC2667e4.REFERENCE, EnumC2661d4.f911q | EnumC2661d4.f909o);
        this.f786l = true;
        this.f787m = Comparator.CC.m648a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2567M3(AbstractC2650c abstractC2650c, java.util.Comparator comparator) {
        super(abstractC2650c, EnumC2667e4.REFERENCE, EnumC2661d4.f911q | EnumC2661d4.f910p);
        this.f786l = false;
        Objects.requireNonNull(comparator);
        this.f787m = comparator;
    }

    @Override // p034j$.util.stream.AbstractC2650c
    /* renamed from: E0 */
    public InterfaceC2493A1 mo300E0(AbstractC2785y2 abstractC2785y2, InterfaceC2487s interfaceC2487s, InterfaceC2461m interfaceC2461m) {
        if (EnumC2661d4.SORTED.m435d(abstractC2785y2.mo305s0()) && this.f786l) {
            return abstractC2785y2.mo308p0(interfaceC2487s, false, interfaceC2461m);
        }
        Object[] mo334q = abstractC2785y2.mo308p0(interfaceC2487s, true, interfaceC2461m).mo334q(interfaceC2461m);
        Arrays.sort(mo334q, this.f787m);
        return new C2511D1(mo334q);
    }

    @Override // p034j$.util.stream.AbstractC2650c
    /* renamed from: H0 */
    public InterfaceC2714m3 mo298H0(int i, InterfaceC2714m3 interfaceC2714m3) {
        Objects.requireNonNull(interfaceC2714m3);
        return (EnumC2661d4.SORTED.m435d(i) && this.f786l) ? interfaceC2714m3 : EnumC2661d4.SIZED.m435d(i) ? new C2596R3(interfaceC2714m3, this.f787m) : new C2573N3(interfaceC2714m3, this.f787m);
    }
}
