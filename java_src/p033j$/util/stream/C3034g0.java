package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.C2838i;
import p033j$.util.function.C2826o;
import p033j$.util.function.InterfaceC2827p;
/* renamed from: j$.util.stream.g0 */
/* loaded from: classes2.dex */
final class C3034g0 extends AbstractC3046i0 implements InterfaceC3067l3 {
    @Override // p033j$.util.stream.AbstractC3046i0, p033j$.util.stream.InterfaceC3073m3, p033j$.util.stream.InterfaceC3067l3, p033j$.util.function.InterfaceC2827p
    public void accept(long j) {
        accept(Long.valueOf(j));
    }

    @Override // p033j$.util.function.InterfaceC2827p
    /* renamed from: f */
    public InterfaceC2827p mo213f(InterfaceC2827p interfaceC2827p) {
        Objects.requireNonNull(interfaceC2827p);
        return new C2826o(this, interfaceC2827p);
    }

    @Override // p033j$.util.function.InterfaceC2835x
    public Object get() {
        if (this.f1100a) {
            return C2838i.m606d(((Long) this.f1101b).longValue());
        }
        return null;
    }
}
