package p034j$.util.stream;

import java.util.Arrays;
import java.util.Objects;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.InterfaceC2662m;
/* renamed from: j$.util.stream.L3 */
/* loaded from: classes2.dex */
final class C2762L3 extends AbstractC2847b1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2762L3(AbstractC2851c abstractC2851c) {
        super(abstractC2851c, EnumC2868e4.LONG_VALUE, EnumC2862d4.f917q | EnumC2862d4.f915o);
    }

    @Override // p034j$.util.stream.AbstractC2851c
    /* renamed from: E0 */
    public InterfaceC2694A1 mo280E0(AbstractC2986y2 abstractC2986y2, InterfaceC2688s interfaceC2688s, InterfaceC2662m interfaceC2662m) {
        if (EnumC2862d4.SORTED.m415d(abstractC2986y2.mo285s0())) {
            return abstractC2986y2.mo288p0(interfaceC2688s, false, interfaceC2662m);
        }
        long[] jArr = (long[]) ((InterfaceC2985y1) abstractC2986y2.mo288p0(interfaceC2688s, true, interfaceC2662m)).mo272e();
        Arrays.sort(jArr);
        return new C2908l2(jArr);
    }

    @Override // p034j$.util.stream.AbstractC2851c
    /* renamed from: H0 */
    public InterfaceC2915m3 mo278H0(int i, InterfaceC2915m3 interfaceC2915m3) {
        Objects.requireNonNull(interfaceC2915m3);
        return EnumC2862d4.SORTED.m415d(i) ? interfaceC2915m3 : EnumC2862d4.SIZED.m415d(i) ? new C2792Q3(interfaceC2915m3) : new C2744I3(interfaceC2915m3);
    }
}
