package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.C2981i;
import p033j$.util.function.C2958e;
import p033j$.util.function.InterfaceC2959f;
/* renamed from: j$.util.stream.e0 */
/* loaded from: classes2.dex */
final class C3168e0 extends AbstractC3192i0 implements InterfaceC3201j3 {
    @Override // p033j$.util.stream.AbstractC3192i0, p033j$.util.stream.InterfaceC3219m3
    public void accept(double d) {
        accept(Double.valueOf(d));
    }

    @Override // p033j$.util.function.InterfaceC2978y
    public Object get() {
        if (this.f1060a) {
            return C2981i.m550d(((Double) this.f1061b).doubleValue());
        }
        return null;
    }

    @Override // p033j$.util.function.InterfaceC2959f
    /* renamed from: j */
    public InterfaceC2959f mo105j(InterfaceC2959f interfaceC2959f) {
        Objects.requireNonNull(interfaceC2959f);
        return new C2958e(this, interfaceC2959f);
    }
}
