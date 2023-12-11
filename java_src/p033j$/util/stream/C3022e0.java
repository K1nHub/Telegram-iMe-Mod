package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.C2836g;
import p033j$.util.function.C2816e;
import p033j$.util.function.InterfaceC2817f;
/* renamed from: j$.util.stream.e0 */
/* loaded from: classes2.dex */
final class C3022e0 extends AbstractC3046i0 implements InterfaceC3055j3 {
    @Override // p033j$.util.stream.AbstractC3046i0, p033j$.util.stream.InterfaceC3073m3
    public void accept(double d) {
        accept(Double.valueOf(d));
    }

    @Override // p033j$.util.function.InterfaceC2835x
    public Object get() {
        if (this.f1100a) {
            return C2836g.m614d(((Double) this.f1101b).doubleValue());
        }
        return null;
    }

    @Override // p033j$.util.function.InterfaceC2817f
    /* renamed from: j */
    public InterfaceC2817f mo158j(InterfaceC2817f interfaceC2817f) {
        Objects.requireNonNull(interfaceC2817f);
        return new C2816e(this, interfaceC2817f);
    }
}
