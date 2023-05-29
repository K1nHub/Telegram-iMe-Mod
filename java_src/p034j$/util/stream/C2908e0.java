package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2721i;
import p034j$.util.function.C2698e;
import p034j$.util.function.InterfaceC2699f;
/* renamed from: j$.util.stream.e0 */
/* loaded from: classes2.dex */
final class C2908e0 extends AbstractC2932i0 implements InterfaceC2941j3 {
    @Override // p034j$.util.stream.AbstractC2932i0, p034j$.util.stream.InterfaceC2959m3
    public void accept(double d) {
        accept(Double.valueOf(d));
    }

    @Override // p034j$.util.function.InterfaceC2718y
    public Object get() {
        if (this.f965a) {
            return C2721i.m532d(((Double) this.f966b).doubleValue());
        }
        return null;
    }

    @Override // p034j$.util.function.InterfaceC2699f
    /* renamed from: j */
    public InterfaceC2699f mo87j(InterfaceC2699f interfaceC2699f) {
        Objects.requireNonNull(interfaceC2699f);
        return new C2698e(this, interfaceC2699f);
    }
}
