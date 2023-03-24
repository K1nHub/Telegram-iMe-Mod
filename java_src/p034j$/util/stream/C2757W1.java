package p034j$.util.stream;

import p034j$.util.AbstractC2549I;
import p034j$.util.InterfaceC2625s;
import p034j$.util.InterfaceC2932t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2599m;
/* renamed from: j$.util.stream.W1 */
/* loaded from: classes2.dex */
final class C2757W1 extends AbstractC2779a2 implements InterfaceC2898u1 {
    @Override // p034j$.util.stream.InterfaceC2631A1
    /* renamed from: a */
    public /* synthetic */ void mo336i(Double[] dArr, int i) {
        AbstractC2862o1.m366h(this, dArr, i);
    }

    @Override // p034j$.util.stream.AbstractC2779a2, p034j$.util.stream.InterfaceC2631A1
    /* renamed from: b */
    public InterfaceC2928z1 mo294b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p034j$.util.stream.InterfaceC2928z1
    /* renamed from: e */
    public Object mo291e() {
        double[] dArr;
        dArr = AbstractC2917x2.f1086g;
        return dArr;
    }

    @Override // p034j$.util.stream.AbstractC2779a2, p034j$.util.stream.InterfaceC2631A1
    /* renamed from: f */
    public /* synthetic */ InterfaceC2898u1 mo332r(long j, long j2, InterfaceC2599m interfaceC2599m) {
        return AbstractC2862o1.m360n(this, j, j2, interfaceC2599m);
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2862o1.m363k(this, consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    public InterfaceC2932t spliterator() {
        return AbstractC2549I.m640b();
    }

    @Override // p034j$.util.stream.AbstractC2779a2, p034j$.util.stream.InterfaceC2631A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2631A1 mo294b(int i) {
        mo294b(i);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    public InterfaceC2625s spliterator() {
        return AbstractC2549I.m640b();
    }
}
