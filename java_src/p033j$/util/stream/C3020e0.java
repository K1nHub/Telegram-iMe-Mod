package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.C2834g;
import p033j$.util.function.C2814e;
import p033j$.util.function.InterfaceC2815f;
/* renamed from: j$.util.stream.e0 */
/* loaded from: classes2.dex */
final class C3020e0 extends AbstractC3044i0 implements InterfaceC3053j3 {
    @Override // p033j$.util.stream.AbstractC3044i0, p033j$.util.stream.InterfaceC3071m3
    public void accept(double d) {
        accept(Double.valueOf(d));
    }

    @Override // p033j$.util.function.InterfaceC2833x
    public Object get() {
        if (this.f1100a) {
            return C2834g.m617d(((Double) this.f1101b).doubleValue());
        }
        return null;
    }

    @Override // p033j$.util.function.InterfaceC2815f
    /* renamed from: j */
    public InterfaceC2815f mo161j(InterfaceC2815f interfaceC2815f) {
        Objects.requireNonNull(interfaceC2815f);
        return new C2814e(this, interfaceC2815f);
    }
}
