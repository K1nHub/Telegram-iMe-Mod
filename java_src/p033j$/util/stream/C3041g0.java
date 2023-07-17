package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.C2844k;
import p033j$.util.function.C2830p;
import p033j$.util.function.InterfaceC2831q;
/* renamed from: j$.util.stream.g0 */
/* loaded from: classes2.dex */
final class C3041g0 extends AbstractC3053i0 implements InterfaceC3074l3 {
    @Override // p033j$.util.stream.AbstractC3053i0, p033j$.util.stream.InterfaceC3080m3, p033j$.util.stream.InterfaceC3074l3, p033j$.util.function.InterfaceC2831q
    public void accept(long j) {
        accept(Long.valueOf(j));
    }

    @Override // p033j$.util.function.InterfaceC2831q
    /* renamed from: f */
    public InterfaceC2831q mo140f(InterfaceC2831q interfaceC2831q) {
        Objects.requireNonNull(interfaceC2831q);
        return new C2830p(this, interfaceC2831q);
    }

    @Override // p033j$.util.function.InterfaceC2839y
    public Object get() {
        if (this.f1047a) {
            return C2844k.m524d(((Long) this.f1048b).longValue());
        }
        return null;
    }
}
