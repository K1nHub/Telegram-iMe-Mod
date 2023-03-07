package p034j$.util.stream;

import p034j$.util.AbstractC2411I;
import p034j$.util.InterfaceC2487s;
import p034j$.util.InterfaceC2794t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2461m;
/* renamed from: j$.util.stream.W1 */
/* loaded from: classes2.dex */
final class C2619W1 extends AbstractC2641a2 implements InterfaceC2760u1 {
    @Override // p034j$.util.stream.InterfaceC2493A1
    /* renamed from: a */
    public /* synthetic */ void mo337i(Double[] dArr, int i) {
        AbstractC2724o1.m367h(this, dArr, i);
    }

    @Override // p034j$.util.stream.AbstractC2641a2, p034j$.util.stream.InterfaceC2493A1
    /* renamed from: b */
    public InterfaceC2790z1 mo295b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p034j$.util.stream.InterfaceC2790z1
    /* renamed from: e */
    public Object mo292e() {
        double[] dArr;
        dArr = AbstractC2779x2.f1080g;
        return dArr;
    }

    @Override // p034j$.util.stream.AbstractC2641a2, p034j$.util.stream.InterfaceC2493A1
    /* renamed from: f */
    public /* synthetic */ InterfaceC2760u1 mo333r(long j, long j2, InterfaceC2461m interfaceC2461m) {
        return AbstractC2724o1.m361n(this, j, j2, interfaceC2461m);
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2724o1.m364k(this, consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    public InterfaceC2794t spliterator() {
        return AbstractC2411I.m641b();
    }

    @Override // p034j$.util.stream.AbstractC2641a2, p034j$.util.stream.InterfaceC2493A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2493A1 mo295b(int i) {
        mo295b(i);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    public InterfaceC2487s spliterator() {
        return AbstractC2411I.m641b();
    }
}
