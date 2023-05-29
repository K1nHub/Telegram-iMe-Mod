package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2722j;
import p034j$.util.function.C2704k;
import p034j$.util.function.InterfaceC2705l;
/* renamed from: j$.util.stream.f0 */
/* loaded from: classes2.dex */
final class C2914f0 extends AbstractC2932i0 implements InterfaceC2947k3 {
    @Override // p034j$.util.stream.AbstractC2932i0, p034j$.util.stream.InterfaceC2959m3
    public void accept(int i) {
        accept(Integer.valueOf(i));
    }

    @Override // p034j$.util.function.InterfaceC2718y
    public Object get() {
        if (this.f965a) {
            return C2722j.m528d(((Integer) this.f966b).intValue());
        }
        return null;
    }

    @Override // p034j$.util.function.InterfaceC2705l
    /* renamed from: l */
    public InterfaceC2705l mo165l(InterfaceC2705l interfaceC2705l) {
        Objects.requireNonNull(interfaceC2705l);
        return new C2704k(this, interfaceC2705l);
    }
}
