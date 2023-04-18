package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2677i;
import p034j$.util.function.C2654e;
import p034j$.util.function.InterfaceC2655f;
/* renamed from: j$.util.stream.e0 */
/* loaded from: classes2.dex */
final class C2864e0 extends AbstractC2888i0 implements InterfaceC2897j3 {
    @Override // p034j$.util.stream.AbstractC2888i0, p034j$.util.stream.InterfaceC2915m3
    public void accept(double d) {
        accept(Double.valueOf(d));
    }

    @Override // p034j$.util.function.InterfaceC2674y
    public Object get() {
        if (this.f962a) {
            return C2677i.m527d(((Double) this.f963b).doubleValue());
        }
        return null;
    }

    @Override // p034j$.util.function.InterfaceC2655f
    /* renamed from: j */
    public InterfaceC2655f mo82j(InterfaceC2655f interfaceC2655f) {
        Objects.requireNonNull(interfaceC2655f);
        return new C2654e(this, interfaceC2655f);
    }
}
