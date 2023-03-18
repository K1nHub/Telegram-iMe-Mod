package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2601j;
import p034j$.util.function.C2583k;
import p034j$.util.function.InterfaceC2584l;
/* renamed from: j$.util.stream.f0 */
/* loaded from: classes2.dex */
final class C2793f0 extends AbstractC2811i0 implements InterfaceC2826k3 {
    @Override // p034j$.util.stream.AbstractC2811i0, p034j$.util.stream.InterfaceC2838m3
    public void accept(int i) {
        accept(Integer.valueOf(i));
    }

    @Override // p034j$.util.function.InterfaceC2597y
    public Object get() {
        if (this.f961a) {
            return C2601j.m543d(((Integer) this.f962b).intValue());
        }
        return null;
    }

    @Override // p034j$.util.function.InterfaceC2584l
    /* renamed from: l */
    public InterfaceC2584l mo180l(InterfaceC2584l interfaceC2584l) {
        Objects.requireNonNull(interfaceC2584l);
        return new C2583k(this, interfaceC2584l);
    }
}
