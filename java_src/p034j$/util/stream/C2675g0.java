package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2478k;
import p034j$.util.function.C2464p;
import p034j$.util.function.InterfaceC2465q;
/* renamed from: j$.util.stream.g0 */
/* loaded from: classes2.dex */
final class C2675g0 extends AbstractC2687i0 implements InterfaceC2708l3 {
    @Override // p034j$.util.stream.AbstractC2687i0, p034j$.util.stream.InterfaceC2714m3, p034j$.util.stream.InterfaceC2708l3, p034j$.util.function.InterfaceC2465q
    public void accept(long j) {
        accept(Long.valueOf(j));
    }

    @Override // p034j$.util.function.InterfaceC2465q
    /* renamed from: f */
    public InterfaceC2465q mo155f(InterfaceC2465q interfaceC2465q) {
        Objects.requireNonNull(interfaceC2465q);
        return new C2464p(this, interfaceC2465q);
    }

    @Override // p034j$.util.function.InterfaceC2473y
    public Object get() {
        if (this.f956a) {
            return C2478k.m539d(((Long) this.f957b).longValue());
        }
        return null;
    }
}
