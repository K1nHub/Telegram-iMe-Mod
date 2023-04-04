package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.C2691j;
import p035j$.util.function.C2673k;
import p035j$.util.function.InterfaceC2674l;
/* renamed from: j$.util.stream.f0 */
/* loaded from: classes2.dex */
final class C2883f0 extends AbstractC2901i0 implements InterfaceC2916k3 {
    @Override // p035j$.util.stream.AbstractC2901i0, p035j$.util.stream.InterfaceC2928m3
    public void accept(int i) {
        accept(Integer.valueOf(i));
    }

    @Override // p035j$.util.function.InterfaceC2687y
    public Object get() {
        if (this.f967a) {
            return C2691j.m537d(((Integer) this.f968b).intValue());
        }
        return null;
    }

    @Override // p035j$.util.function.InterfaceC2674l
    /* renamed from: l */
    public InterfaceC2674l mo174l(InterfaceC2674l interfaceC2674l) {
        Objects.requireNonNull(interfaceC2674l);
        return new C2673k(this, interfaceC2674l);
    }
}
