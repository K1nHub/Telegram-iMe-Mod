package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.C2840h;
import p033j$.util.function.C2825k;
import p033j$.util.function.InterfaceC2826l;
/* renamed from: j$.util.stream.f0 */
/* loaded from: classes2.dex */
final class C3031f0 extends AbstractC3049i0 implements InterfaceC3064k3 {
    @Override // p033j$.util.stream.AbstractC3049i0, p033j$.util.stream.InterfaceC3076m3
    public void accept(int i) {
        accept(Integer.valueOf(i));
    }

    @Override // p033j$.util.function.InterfaceC2838x
    public Object get() {
        if (this.f1100a) {
            return C2840h.m610d(((Integer) this.f1101b).intValue());
        }
        return null;
    }

    @Override // p033j$.util.function.InterfaceC2826l
    /* renamed from: k */
    public InterfaceC2826l mo235k(InterfaceC2826l interfaceC2826l) {
        Objects.requireNonNull(interfaceC2826l);
        return new C2825k(this, interfaceC2826l);
    }
}
