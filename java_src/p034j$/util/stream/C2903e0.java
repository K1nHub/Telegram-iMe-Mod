package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2716i;
import p034j$.util.function.C2693e;
import p034j$.util.function.InterfaceC2694f;
/* renamed from: j$.util.stream.e0 */
/* loaded from: classes2.dex */
final class C2903e0 extends AbstractC2927i0 implements InterfaceC2936j3 {
    @Override // p034j$.util.stream.AbstractC2927i0, p034j$.util.stream.InterfaceC2954m3
    public void accept(double d) {
        accept(Double.valueOf(d));
    }

    @Override // p034j$.util.function.InterfaceC2713y
    public Object get() {
        if (this.f965a) {
            return C2716i.m532d(((Double) this.f966b).doubleValue());
        }
        return null;
    }

    @Override // p034j$.util.function.InterfaceC2694f
    /* renamed from: j */
    public InterfaceC2694f mo87j(InterfaceC2694f interfaceC2694f) {
        Objects.requireNonNull(interfaceC2694f);
        return new C2693e(this, interfaceC2694f);
    }
}
