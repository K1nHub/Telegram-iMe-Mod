package p034j$.util.stream;

import p034j$.util.AbstractC2411I;
import p034j$.util.InterfaceC2487s;
import p034j$.util.InterfaceC2794t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2461m;
/* renamed from: j$.util.stream.X1 */
/* loaded from: classes2.dex */
final class C2624X1 extends AbstractC2641a2 implements InterfaceC2772w1 {
    @Override // p034j$.util.stream.InterfaceC2493A1
    /* renamed from: a */
    public /* synthetic */ void mo337i(Integer[] numArr, int i) {
        AbstractC2724o1.m366i(this, numArr, i);
    }

    @Override // p034j$.util.stream.AbstractC2641a2, p034j$.util.stream.InterfaceC2493A1
    /* renamed from: b */
    public InterfaceC2790z1 mo295b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p034j$.util.stream.InterfaceC2790z1
    /* renamed from: e */
    public Object mo292e() {
        int[] iArr;
        iArr = AbstractC2779x2.f1078e;
        return iArr;
    }

    @Override // p034j$.util.stream.AbstractC2641a2, p034j$.util.stream.InterfaceC2493A1
    /* renamed from: f */
    public /* synthetic */ InterfaceC2772w1 mo333r(long j, long j2, InterfaceC2461m interfaceC2461m) {
        return AbstractC2724o1.m360o(this, j, j2, interfaceC2461m);
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2724o1.m363l(this, consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    public InterfaceC2794t spliterator() {
        return AbstractC2411I.m640c();
    }

    @Override // p034j$.util.stream.AbstractC2641a2, p034j$.util.stream.InterfaceC2493A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2493A1 mo295b(int i) {
        mo295b(i);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    public InterfaceC2487s spliterator() {
        return AbstractC2411I.m640c();
    }
}
