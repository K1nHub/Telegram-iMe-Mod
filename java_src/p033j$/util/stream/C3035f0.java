package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.C2843j;
import p033j$.util.function.C2825k;
import p033j$.util.function.InterfaceC2826l;
/* renamed from: j$.util.stream.f0 */
/* loaded from: classes2.dex */
final class C3035f0 extends AbstractC3053i0 implements InterfaceC3068k3 {
    @Override // p033j$.util.stream.AbstractC3053i0, p033j$.util.stream.InterfaceC3080m3
    public void accept(int i) {
        accept(Integer.valueOf(i));
    }

    @Override // p033j$.util.function.InterfaceC2839y
    public Object get() {
        if (this.f1050a) {
            return C2843j.m546d(((Integer) this.f1051b).intValue());
        }
        return null;
    }

    @Override // p033j$.util.function.InterfaceC2826l
    /* renamed from: l */
    public InterfaceC2826l mo183l(InterfaceC2826l interfaceC2826l) {
        Objects.requireNonNull(interfaceC2826l);
        return new C2825k(this, interfaceC2826l);
    }
}
