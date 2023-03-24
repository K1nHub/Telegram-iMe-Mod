package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2616k;
import p034j$.util.function.C2602p;
import p034j$.util.function.InterfaceC2603q;
/* renamed from: j$.util.stream.g0 */
/* loaded from: classes2.dex */
final class C2813g0 extends AbstractC2825i0 implements InterfaceC2846l3 {
    @Override // p034j$.util.stream.AbstractC2825i0, p034j$.util.stream.InterfaceC2852m3, p034j$.util.stream.InterfaceC2846l3, p034j$.util.function.InterfaceC2603q
    public void accept(long j) {
        accept(Long.valueOf(j));
    }

    @Override // p034j$.util.function.InterfaceC2603q
    /* renamed from: f */
    public InterfaceC2603q mo154f(InterfaceC2603q interfaceC2603q) {
        Objects.requireNonNull(interfaceC2603q);
        return new C2602p(this, interfaceC2603q);
    }

    @Override // p034j$.util.function.InterfaceC2611y
    public Object get() {
        if (this.f962a) {
            return C2616k.m538d(((Long) this.f963b).longValue());
        }
        return null;
    }
}
