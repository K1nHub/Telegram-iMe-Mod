package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.C2983k;
import p033j$.util.function.C2969p;
import p033j$.util.function.InterfaceC2970q;
/* renamed from: j$.util.stream.g0 */
/* loaded from: classes2.dex */
final class C3180g0 extends AbstractC3192i0 implements InterfaceC3213l3 {
    @Override // p033j$.util.stream.AbstractC3192i0, p033j$.util.stream.InterfaceC3219m3, p033j$.util.stream.InterfaceC3213l3, p033j$.util.function.InterfaceC2970q
    public void accept(long j) {
        accept(Long.valueOf(j));
    }

    @Override // p033j$.util.function.InterfaceC2970q
    /* renamed from: f */
    public InterfaceC2970q mo158f(InterfaceC2970q interfaceC2970q) {
        Objects.requireNonNull(interfaceC2970q);
        return new C2969p(this, interfaceC2970q);
    }

    @Override // p033j$.util.function.InterfaceC2978y
    public Object get() {
        if (this.f1060a) {
            return C2983k.m542d(((Long) this.f1061b).longValue());
        }
        return null;
    }
}
