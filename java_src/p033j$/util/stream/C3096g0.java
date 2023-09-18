package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.C2899k;
import p033j$.util.function.C2885p;
import p033j$.util.function.InterfaceC2886q;
/* renamed from: j$.util.stream.g0 */
/* loaded from: classes2.dex */
final class C3096g0 extends AbstractC3108i0 implements InterfaceC3129l3 {
    @Override // p033j$.util.stream.AbstractC3108i0, p033j$.util.stream.InterfaceC3135m3, p033j$.util.stream.InterfaceC3129l3, p033j$.util.function.InterfaceC2886q
    public void accept(long j) {
        accept(Long.valueOf(j));
    }

    @Override // p033j$.util.function.InterfaceC2886q
    /* renamed from: f */
    public InterfaceC2886q mo158f(InterfaceC2886q interfaceC2886q) {
        Objects.requireNonNull(interfaceC2886q);
        return new C2885p(this, interfaceC2886q);
    }

    @Override // p033j$.util.function.InterfaceC2894y
    public Object get() {
        if (this.f1051a) {
            return C2899k.m542d(((Long) this.f1052b).longValue());
        }
        return null;
    }
}
