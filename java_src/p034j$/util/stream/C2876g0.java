package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2679k;
import p034j$.util.function.C2665p;
import p034j$.util.function.InterfaceC2666q;
/* renamed from: j$.util.stream.g0 */
/* loaded from: classes2.dex */
final class C2876g0 extends AbstractC2888i0 implements InterfaceC2909l3 {
    @Override // p034j$.util.stream.AbstractC2888i0, p034j$.util.stream.InterfaceC2915m3, p034j$.util.stream.InterfaceC2909l3, p034j$.util.function.InterfaceC2666q
    public void accept(long j) {
        accept(Long.valueOf(j));
    }

    @Override // p034j$.util.function.InterfaceC2666q
    /* renamed from: f */
    public InterfaceC2666q mo135f(InterfaceC2666q interfaceC2666q) {
        Objects.requireNonNull(interfaceC2666q);
        return new C2665p(this, interfaceC2666q);
    }

    @Override // p034j$.util.function.InterfaceC2674y
    public Object get() {
        if (this.f962a) {
            return C2679k.m519d(((Long) this.f963b).longValue());
        }
        return null;
    }
}
