package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2602k;
import p034j$.util.function.C2588p;
import p034j$.util.function.InterfaceC2589q;
/* renamed from: j$.util.stream.g0 */
/* loaded from: classes2.dex */
final class C2799g0 extends AbstractC2811i0 implements InterfaceC2832l3 {
    @Override // p034j$.util.stream.AbstractC2811i0, p034j$.util.stream.InterfaceC2838m3, p034j$.util.stream.InterfaceC2832l3, p034j$.util.function.InterfaceC2589q
    public void accept(long j) {
        accept(Long.valueOf(j));
    }

    @Override // p034j$.util.function.InterfaceC2589q
    /* renamed from: f */
    public InterfaceC2589q mo155f(InterfaceC2589q interfaceC2589q) {
        Objects.requireNonNull(interfaceC2589q);
        return new C2588p(this, interfaceC2589q);
    }

    @Override // p034j$.util.function.InterfaceC2597y
    public Object get() {
        if (this.f961a) {
            return C2602k.m539d(((Long) this.f962b).longValue());
        }
        return null;
    }
}
