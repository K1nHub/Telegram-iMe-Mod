package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2718k;
import p034j$.util.function.C2704p;
import p034j$.util.function.InterfaceC2705q;
/* renamed from: j$.util.stream.g0 */
/* loaded from: classes2.dex */
final class C2915g0 extends AbstractC2927i0 implements InterfaceC2948l3 {
    @Override // p034j$.util.stream.AbstractC2927i0, p034j$.util.stream.InterfaceC2954m3, p034j$.util.stream.InterfaceC2948l3, p034j$.util.function.InterfaceC2705q
    public void accept(long j) {
        accept(Long.valueOf(j));
    }

    @Override // p034j$.util.function.InterfaceC2705q
    /* renamed from: f */
    public InterfaceC2705q mo140f(InterfaceC2705q interfaceC2705q) {
        Objects.requireNonNull(interfaceC2705q);
        return new C2704p(this, interfaceC2705q);
    }

    @Override // p034j$.util.function.InterfaceC2713y
    public Object get() {
        if (this.f965a) {
            return C2718k.m524d(((Long) this.f966b).longValue());
        }
        return null;
    }
}
