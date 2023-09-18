package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.C2897i;
import p033j$.util.function.C2874e;
import p033j$.util.function.InterfaceC2875f;
/* renamed from: j$.util.stream.e0 */
/* loaded from: classes2.dex */
final class C3084e0 extends AbstractC3108i0 implements InterfaceC3117j3 {
    @Override // p033j$.util.stream.AbstractC3108i0, p033j$.util.stream.InterfaceC3135m3
    public void accept(double d) {
        accept(Double.valueOf(d));
    }

    @Override // p033j$.util.function.InterfaceC2894y
    public Object get() {
        if (this.f1051a) {
            return C2897i.m550d(((Double) this.f1052b).doubleValue());
        }
        return null;
    }

    @Override // p033j$.util.function.InterfaceC2875f
    /* renamed from: j */
    public InterfaceC2875f mo105j(InterfaceC2875f interfaceC2875f) {
        Objects.requireNonNull(interfaceC2875f);
        return new C2874e(this, interfaceC2875f);
    }
}
