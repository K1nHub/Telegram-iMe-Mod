package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2615j;
import p034j$.util.function.C2597k;
import p034j$.util.function.InterfaceC2598l;
/* renamed from: j$.util.stream.f0 */
/* loaded from: classes2.dex */
final class C2807f0 extends AbstractC2825i0 implements InterfaceC2840k3 {
    @Override // p034j$.util.stream.AbstractC2825i0, p034j$.util.stream.InterfaceC2852m3
    public void accept(int i) {
        accept(Integer.valueOf(i));
    }

    @Override // p034j$.util.function.InterfaceC2611y
    public Object get() {
        if (this.f962a) {
            return C2615j.m542d(((Integer) this.f963b).intValue());
        }
        return null;
    }

    @Override // p034j$.util.function.InterfaceC2598l
    /* renamed from: l */
    public InterfaceC2598l mo179l(InterfaceC2598l interfaceC2598l) {
        Objects.requireNonNull(interfaceC2598l);
        return new C2597k(this, interfaceC2598l);
    }
}
