package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.C2842i;
import p033j$.util.function.C2819e;
import p033j$.util.function.InterfaceC2820f;
/* renamed from: j$.util.stream.e0 */
/* loaded from: classes2.dex */
final class C3029e0 extends AbstractC3053i0 implements InterfaceC3062j3 {
    @Override // p033j$.util.stream.AbstractC3053i0, p033j$.util.stream.InterfaceC3080m3
    public void accept(double d) {
        accept(Double.valueOf(d));
    }

    @Override // p033j$.util.function.InterfaceC2839y
    public Object get() {
        if (this.f1050a) {
            return C2842i.m550d(((Double) this.f1051b).doubleValue());
        }
        return null;
    }

    @Override // p033j$.util.function.InterfaceC2820f
    /* renamed from: j */
    public InterfaceC2820f mo105j(InterfaceC2820f interfaceC2820f) {
        Objects.requireNonNull(interfaceC2820f);
        return new C2819e(this, interfaceC2820f);
    }
}
