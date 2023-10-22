package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.C2835g;
import p033j$.util.function.C2815e;
import p033j$.util.function.InterfaceC2816f;
/* renamed from: j$.util.stream.e0 */
/* loaded from: classes2.dex */
final class C3021e0 extends AbstractC3045i0 implements InterfaceC3054j3 {
    @Override // p033j$.util.stream.AbstractC3045i0, p033j$.util.stream.InterfaceC3072m3
    public void accept(double d) {
        accept(Double.valueOf(d));
    }

    @Override // p033j$.util.function.InterfaceC2834x
    public Object get() {
        if (this.f1100a) {
            return C2835g.m613d(((Double) this.f1101b).doubleValue());
        }
        return null;
    }

    @Override // p033j$.util.function.InterfaceC2816f
    /* renamed from: j */
    public InterfaceC2816f mo156j(InterfaceC2816f interfaceC2816f) {
        Objects.requireNonNull(interfaceC2816f);
        return new C2815e(this, interfaceC2816f);
    }
}
