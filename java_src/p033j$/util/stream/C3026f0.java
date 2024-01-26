package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.C2835h;
import p033j$.util.function.C2820k;
import p033j$.util.function.InterfaceC2821l;
/* renamed from: j$.util.stream.f0 */
/* loaded from: classes2.dex */
final class C3026f0 extends AbstractC3044i0 implements InterfaceC3059k3 {
    @Override // p033j$.util.stream.AbstractC3044i0, p033j$.util.stream.InterfaceC3071m3
    public void accept(int i) {
        accept(Integer.valueOf(i));
    }

    @Override // p033j$.util.function.InterfaceC2833x
    public Object get() {
        if (this.f1100a) {
            return C2835h.m613d(((Integer) this.f1101b).intValue());
        }
        return null;
    }

    @Override // p033j$.util.function.InterfaceC2821l
    /* renamed from: k */
    public InterfaceC2821l mo238k(InterfaceC2821l interfaceC2821l) {
        Objects.requireNonNull(interfaceC2821l);
        return new C2820k(this, interfaceC2821l);
    }
}
