package p035j$.util.stream;

import p035j$.util.AbstractC2625I;
import p035j$.util.InterfaceC2701s;
import p035j$.util.InterfaceC3008t;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2675m;
/* renamed from: j$.util.stream.W1 */
/* loaded from: classes2.dex */
final class C2833W1 extends AbstractC2855a2 implements InterfaceC2974u1 {
    @Override // p035j$.util.stream.InterfaceC2707A1
    /* renamed from: a */
    public /* synthetic */ void mo331i(Double[] dArr, int i) {
        AbstractC2938o1.m361h(this, dArr, i);
    }

    @Override // p035j$.util.stream.AbstractC2855a2, p035j$.util.stream.InterfaceC2707A1
    /* renamed from: b */
    public InterfaceC3004z1 mo289b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p035j$.util.stream.InterfaceC3004z1
    /* renamed from: e */
    public Object mo286e() {
        double[] dArr;
        dArr = AbstractC2993x2.f1091g;
        return dArr;
    }

    @Override // p035j$.util.stream.AbstractC2855a2, p035j$.util.stream.InterfaceC2707A1
    /* renamed from: f */
    public /* synthetic */ InterfaceC2974u1 mo327r(long j, long j2, InterfaceC2675m interfaceC2675m) {
        return AbstractC2938o1.m355n(this, j, j2, interfaceC2675m);
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2938o1.m358k(this, consumer);
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    public InterfaceC3008t spliterator() {
        return AbstractC2625I.m635b();
    }

    @Override // p035j$.util.stream.AbstractC2855a2, p035j$.util.stream.InterfaceC2707A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2707A1 mo289b(int i) {
        mo289b(i);
        throw null;
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    public InterfaceC2701s spliterator() {
        return AbstractC2625I.m635b();
    }
}
