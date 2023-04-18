package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2678j;
import p034j$.util.function.C2660k;
import p034j$.util.function.InterfaceC2661l;
/* renamed from: j$.util.stream.f0 */
/* loaded from: classes2.dex */
final class C2870f0 extends AbstractC2888i0 implements InterfaceC2903k3 {
    @Override // p034j$.util.stream.AbstractC2888i0, p034j$.util.stream.InterfaceC2915m3
    public void accept(int i) {
        accept(Integer.valueOf(i));
    }

    @Override // p034j$.util.function.InterfaceC2674y
    public Object get() {
        if (this.f962a) {
            return C2678j.m523d(((Integer) this.f963b).intValue());
        }
        return null;
    }

    @Override // p034j$.util.function.InterfaceC2661l
    /* renamed from: l */
    public InterfaceC2661l mo160l(InterfaceC2661l interfaceC2661l) {
        Objects.requireNonNull(interfaceC2661l);
        return new C2660k(this, interfaceC2661l);
    }
}
