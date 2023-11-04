package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.C2841i;
import p033j$.util.function.C2829o;
import p033j$.util.function.InterfaceC2830p;
/* renamed from: j$.util.stream.g0 */
/* loaded from: classes2.dex */
final class C3037g0 extends AbstractC3049i0 implements InterfaceC3070l3 {
    @Override // p033j$.util.stream.AbstractC3049i0, p033j$.util.stream.InterfaceC3076m3, p033j$.util.stream.InterfaceC3070l3, p033j$.util.function.InterfaceC2830p
    public void accept(long j) {
        accept(Long.valueOf(j));
    }

    @Override // p033j$.util.function.InterfaceC2830p
    /* renamed from: f */
    public InterfaceC2830p mo213f(InterfaceC2830p interfaceC2830p) {
        Objects.requireNonNull(interfaceC2830p);
        return new C2829o(this, interfaceC2830p);
    }

    @Override // p033j$.util.function.InterfaceC2838x
    public Object get() {
        if (this.f1100a) {
            return C2841i.m606d(((Long) this.f1101b).longValue());
        }
        return null;
    }
}
