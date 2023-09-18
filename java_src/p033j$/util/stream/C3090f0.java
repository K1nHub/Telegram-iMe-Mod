package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.C2898j;
import p033j$.util.function.C2880k;
import p033j$.util.function.InterfaceC2881l;
/* renamed from: j$.util.stream.f0 */
/* loaded from: classes2.dex */
final class C3090f0 extends AbstractC3108i0 implements InterfaceC3123k3 {
    @Override // p033j$.util.stream.AbstractC3108i0, p033j$.util.stream.InterfaceC3135m3
    public void accept(int i) {
        accept(Integer.valueOf(i));
    }

    @Override // p033j$.util.function.InterfaceC2894y
    public Object get() {
        if (this.f1051a) {
            return C2898j.m546d(((Integer) this.f1052b).intValue());
        }
        return null;
    }

    @Override // p033j$.util.function.InterfaceC2881l
    /* renamed from: l */
    public InterfaceC2881l mo183l(InterfaceC2881l interfaceC2881l) {
        Objects.requireNonNull(interfaceC2881l);
        return new C2880k(this, interfaceC2881l);
    }
}
