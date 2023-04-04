package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.C2690i;
import p035j$.util.function.C2667e;
import p035j$.util.function.InterfaceC2668f;
/* renamed from: j$.util.stream.e0 */
/* loaded from: classes2.dex */
final class C2877e0 extends AbstractC2901i0 implements InterfaceC2910j3 {
    @Override // p035j$.util.stream.AbstractC2901i0, p035j$.util.stream.InterfaceC2928m3
    public void accept(double d) {
        accept(Double.valueOf(d));
    }

    @Override // p035j$.util.function.InterfaceC2687y
    public Object get() {
        if (this.f967a) {
            return C2690i.m541d(((Double) this.f968b).doubleValue());
        }
        return null;
    }

    @Override // p035j$.util.function.InterfaceC2668f
    /* renamed from: j */
    public InterfaceC2668f mo96j(InterfaceC2668f interfaceC2668f) {
        Objects.requireNonNull(interfaceC2668f);
        return new C2667e(this, interfaceC2668f);
    }
}
