package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2717j;
import p034j$.util.function.C2699k;
import p034j$.util.function.InterfaceC2700l;
/* renamed from: j$.util.stream.f0 */
/* loaded from: classes2.dex */
final class C2909f0 extends AbstractC2927i0 implements InterfaceC2942k3 {
    @Override // p034j$.util.stream.AbstractC2927i0, p034j$.util.stream.InterfaceC2954m3
    public void accept(int i) {
        accept(Integer.valueOf(i));
    }

    @Override // p034j$.util.function.InterfaceC2713y
    public Object get() {
        if (this.f965a) {
            return C2717j.m528d(((Integer) this.f966b).intValue());
        }
        return null;
    }

    @Override // p034j$.util.function.InterfaceC2700l
    /* renamed from: l */
    public InterfaceC2700l mo165l(InterfaceC2700l interfaceC2700l) {
        Objects.requireNonNull(interfaceC2700l);
        return new C2699k(this, interfaceC2700l);
    }
}
