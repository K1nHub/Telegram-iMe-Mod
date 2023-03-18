package p034j$.util.stream;

import p034j$.util.AbstractC2535I;
import p034j$.util.InterfaceC2611s;
import p034j$.util.InterfaceC2918t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2585m;
/* renamed from: j$.util.stream.Y1 */
/* loaded from: classes2.dex */
final class C2753Y1 extends AbstractC2765a2 implements InterfaceC2908y1 {
    @Override // p034j$.util.stream.InterfaceC2617A1
    /* renamed from: a */
    public /* synthetic */ void mo337i(Long[] lArr, int i) {
        AbstractC2848o1.m365j(this, lArr, i);
    }

    @Override // p034j$.util.stream.AbstractC2765a2, p034j$.util.stream.InterfaceC2617A1
    /* renamed from: b */
    public InterfaceC2914z1 mo295b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p034j$.util.stream.InterfaceC2914z1
    /* renamed from: e */
    public Object mo292e() {
        long[] jArr;
        jArr = AbstractC2903x2.f1084f;
        return jArr;
    }

    @Override // p034j$.util.stream.AbstractC2765a2, p034j$.util.stream.InterfaceC2617A1
    /* renamed from: f */
    public /* synthetic */ InterfaceC2908y1 mo333r(long j, long j2, InterfaceC2585m interfaceC2585m) {
        return AbstractC2848o1.m359p(this, j, j2, interfaceC2585m);
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2848o1.m362m(this, consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    public InterfaceC2918t spliterator() {
        return AbstractC2535I.m639d();
    }

    @Override // p034j$.util.stream.AbstractC2765a2, p034j$.util.stream.InterfaceC2617A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2617A1 mo295b(int i) {
        mo295b(i);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    public InterfaceC2611s spliterator() {
        return AbstractC2535I.m639d();
    }
}
