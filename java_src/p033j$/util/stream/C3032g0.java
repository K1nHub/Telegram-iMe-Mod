package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.C2836i;
import p033j$.util.function.C2824o;
import p033j$.util.function.InterfaceC2825p;
/* renamed from: j$.util.stream.g0 */
/* loaded from: classes2.dex */
final class C3032g0 extends AbstractC3044i0 implements InterfaceC3065l3 {
    @Override // p033j$.util.stream.AbstractC3044i0, p033j$.util.stream.InterfaceC3071m3, p033j$.util.stream.InterfaceC3065l3, p033j$.util.function.InterfaceC2825p
    public void accept(long j) {
        accept(Long.valueOf(j));
    }

    @Override // p033j$.util.function.InterfaceC2825p
    /* renamed from: f */
    public InterfaceC2825p mo216f(InterfaceC2825p interfaceC2825p) {
        Objects.requireNonNull(interfaceC2825p);
        return new C2824o(this, interfaceC2825p);
    }

    @Override // p033j$.util.function.InterfaceC2833x
    public Object get() {
        if (this.f1100a) {
            return C2836i.m609d(((Long) this.f1101b).longValue());
        }
        return null;
    }
}
