package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.C2837i;
import p033j$.util.function.C2825o;
import p033j$.util.function.InterfaceC2826p;
/* renamed from: j$.util.stream.g0 */
/* loaded from: classes2.dex */
final class C3033g0 extends AbstractC3045i0 implements InterfaceC3066l3 {
    @Override // p033j$.util.stream.AbstractC3045i0, p033j$.util.stream.InterfaceC3072m3, p033j$.util.stream.InterfaceC3066l3, p033j$.util.function.InterfaceC2826p
    public void accept(long j) {
        accept(Long.valueOf(j));
    }

    @Override // p033j$.util.function.InterfaceC2826p
    /* renamed from: f */
    public InterfaceC2826p mo212f(InterfaceC2826p interfaceC2826p) {
        Objects.requireNonNull(interfaceC2826p);
        return new C2825o(this, interfaceC2826p);
    }

    @Override // p033j$.util.function.InterfaceC2834x
    public Object get() {
        if (this.f1100a) {
            return C2837i.m605d(((Long) this.f1101b).longValue());
        }
        return null;
    }
}
