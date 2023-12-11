package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.C2837h;
import p033j$.util.function.C2822k;
import p033j$.util.function.InterfaceC2823l;
/* renamed from: j$.util.stream.f0 */
/* loaded from: classes2.dex */
final class C3028f0 extends AbstractC3046i0 implements InterfaceC3061k3 {
    @Override // p033j$.util.stream.AbstractC3046i0, p033j$.util.stream.InterfaceC3073m3
    public void accept(int i) {
        accept(Integer.valueOf(i));
    }

    @Override // p033j$.util.function.InterfaceC2835x
    public Object get() {
        if (this.f1100a) {
            return C2837h.m610d(((Integer) this.f1101b).intValue());
        }
        return null;
    }

    @Override // p033j$.util.function.InterfaceC2823l
    /* renamed from: k */
    public InterfaceC2823l mo235k(InterfaceC2823l interfaceC2823l) {
        Objects.requireNonNull(interfaceC2823l);
        return new C2822k(this, interfaceC2823l);
    }
}
