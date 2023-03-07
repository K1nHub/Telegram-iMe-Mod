package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2476i;
import p034j$.util.function.C2453e;
import p034j$.util.function.InterfaceC2454f;
/* renamed from: j$.util.stream.e0 */
/* loaded from: classes2.dex */
final class C2663e0 extends AbstractC2687i0 implements InterfaceC2696j3 {
    @Override // p034j$.util.stream.AbstractC2687i0, p034j$.util.stream.InterfaceC2714m3
    public void accept(double d) {
        accept(Double.valueOf(d));
    }

    @Override // p034j$.util.function.InterfaceC2473y
    public Object get() {
        if (this.f956a) {
            return C2476i.m547d(((Double) this.f957b).doubleValue());
        }
        return null;
    }

    @Override // p034j$.util.function.InterfaceC2454f
    /* renamed from: j */
    public InterfaceC2454f mo102j(InterfaceC2454f interfaceC2454f) {
        Objects.requireNonNull(interfaceC2454f);
        return new C2453e(this, interfaceC2454f);
    }
}
