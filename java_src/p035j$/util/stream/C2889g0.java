package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.C2692k;
import p035j$.util.function.C2678p;
import p035j$.util.function.InterfaceC2679q;
/* renamed from: j$.util.stream.g0 */
/* loaded from: classes2.dex */
final class C2889g0 extends AbstractC2901i0 implements InterfaceC2922l3 {
    @Override // p035j$.util.stream.AbstractC2901i0, p035j$.util.stream.InterfaceC2928m3, p035j$.util.stream.InterfaceC2922l3, p035j$.util.function.InterfaceC2679q
    public void accept(long j) {
        accept(Long.valueOf(j));
    }

    @Override // p035j$.util.function.InterfaceC2679q
    /* renamed from: f */
    public InterfaceC2679q mo149f(InterfaceC2679q interfaceC2679q) {
        Objects.requireNonNull(interfaceC2679q);
        return new C2678p(this, interfaceC2679q);
    }

    @Override // p035j$.util.function.InterfaceC2687y
    public Object get() {
        if (this.f967a) {
            return C2692k.m533d(((Long) this.f968b).longValue());
        }
        return null;
    }
}
