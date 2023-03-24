package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2614i;
import p034j$.util.function.C2591e;
import p034j$.util.function.InterfaceC2592f;
/* renamed from: j$.util.stream.e0 */
/* loaded from: classes2.dex */
final class C2801e0 extends AbstractC2825i0 implements InterfaceC2834j3 {
    @Override // p034j$.util.stream.AbstractC2825i0, p034j$.util.stream.InterfaceC2852m3
    public void accept(double d) {
        accept(Double.valueOf(d));
    }

    @Override // p034j$.util.function.InterfaceC2611y
    public Object get() {
        if (this.f962a) {
            return C2614i.m546d(((Double) this.f963b).doubleValue());
        }
        return null;
    }

    @Override // p034j$.util.function.InterfaceC2592f
    /* renamed from: j */
    public InterfaceC2592f mo101j(InterfaceC2592f interfaceC2592f) {
        Objects.requireNonNull(interfaceC2592f);
        return new C2591e(this, interfaceC2592f);
    }
}
