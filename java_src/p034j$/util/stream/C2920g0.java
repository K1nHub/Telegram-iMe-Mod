package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2723k;
import p034j$.util.function.C2709p;
import p034j$.util.function.InterfaceC2710q;
/* renamed from: j$.util.stream.g0 */
/* loaded from: classes2.dex */
final class C2920g0 extends AbstractC2932i0 implements InterfaceC2953l3 {
    @Override // p034j$.util.stream.AbstractC2932i0, p034j$.util.stream.InterfaceC2959m3, p034j$.util.stream.InterfaceC2953l3, p034j$.util.function.InterfaceC2710q
    public void accept(long j) {
        accept(Long.valueOf(j));
    }

    @Override // p034j$.util.function.InterfaceC2710q
    /* renamed from: f */
    public InterfaceC2710q mo140f(InterfaceC2710q interfaceC2710q) {
        Objects.requireNonNull(interfaceC2710q);
        return new C2709p(this, interfaceC2710q);
    }

    @Override // p034j$.util.function.InterfaceC2718y
    public Object get() {
        if (this.f965a) {
            return C2723k.m524d(((Long) this.f966b).longValue());
        }
        return null;
    }
}
