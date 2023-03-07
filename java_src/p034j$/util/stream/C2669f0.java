package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2477j;
import p034j$.util.function.C2459k;
import p034j$.util.function.InterfaceC2460l;
/* renamed from: j$.util.stream.f0 */
/* loaded from: classes2.dex */
final class C2669f0 extends AbstractC2687i0 implements InterfaceC2702k3 {
    @Override // p034j$.util.stream.AbstractC2687i0, p034j$.util.stream.InterfaceC2714m3
    public void accept(int i) {
        accept(Integer.valueOf(i));
    }

    @Override // p034j$.util.function.InterfaceC2473y
    public Object get() {
        if (this.f956a) {
            return C2477j.m543d(((Integer) this.f957b).intValue());
        }
        return null;
    }

    @Override // p034j$.util.function.InterfaceC2460l
    /* renamed from: l */
    public InterfaceC2460l mo180l(InterfaceC2460l interfaceC2460l) {
        Objects.requireNonNull(interfaceC2460l);
        return new C2459k(this, interfaceC2460l);
    }
}
