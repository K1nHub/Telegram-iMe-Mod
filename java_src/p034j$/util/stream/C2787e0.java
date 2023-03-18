package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2600i;
import p034j$.util.function.C2577e;
import p034j$.util.function.InterfaceC2578f;
/* renamed from: j$.util.stream.e0 */
/* loaded from: classes2.dex */
final class C2787e0 extends AbstractC2811i0 implements InterfaceC2820j3 {
    @Override // p034j$.util.stream.AbstractC2811i0, p034j$.util.stream.InterfaceC2838m3
    public void accept(double d) {
        accept(Double.valueOf(d));
    }

    @Override // p034j$.util.function.InterfaceC2597y
    public Object get() {
        if (this.f961a) {
            return C2600i.m547d(((Double) this.f962b).doubleValue());
        }
        return null;
    }

    @Override // p034j$.util.function.InterfaceC2578f
    /* renamed from: j */
    public InterfaceC2578f mo102j(InterfaceC2578f interfaceC2578f) {
        Objects.requireNonNull(interfaceC2578f);
        return new C2577e(this, interfaceC2578f);
    }
}
