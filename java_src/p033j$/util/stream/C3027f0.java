package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.C2836h;
import p033j$.util.function.C2821k;
import p033j$.util.function.InterfaceC2822l;
/* renamed from: j$.util.stream.f0 */
/* loaded from: classes2.dex */
final class C3027f0 extends AbstractC3045i0 implements InterfaceC3060k3 {
    @Override // p033j$.util.stream.AbstractC3045i0, p033j$.util.stream.InterfaceC3072m3
    public void accept(int i) {
        accept(Integer.valueOf(i));
    }

    @Override // p033j$.util.function.InterfaceC2834x
    public Object get() {
        if (this.f1100a) {
            return C2836h.m609d(((Integer) this.f1101b).intValue());
        }
        return null;
    }

    @Override // p033j$.util.function.InterfaceC2822l
    /* renamed from: k */
    public InterfaceC2822l mo234k(InterfaceC2822l interfaceC2822l) {
        Objects.requireNonNull(interfaceC2822l);
        return new C2821k(this, interfaceC2822l);
    }
}
