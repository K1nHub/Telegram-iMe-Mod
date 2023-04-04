package p035j$.util.stream;

import p035j$.util.AbstractC2625I;
import p035j$.util.InterfaceC2701s;
import p035j$.util.InterfaceC3008t;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2675m;
/* renamed from: j$.util.stream.X1 */
/* loaded from: classes2.dex */
final class C2838X1 extends AbstractC2855a2 implements InterfaceC2986w1 {
    @Override // p035j$.util.stream.InterfaceC2707A1
    /* renamed from: a */
    public /* synthetic */ void mo331i(Integer[] numArr, int i) {
        AbstractC2938o1.m360i(this, numArr, i);
    }

    @Override // p035j$.util.stream.AbstractC2855a2, p035j$.util.stream.InterfaceC2707A1
    /* renamed from: b */
    public InterfaceC3004z1 mo289b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p035j$.util.stream.InterfaceC3004z1
    /* renamed from: e */
    public Object mo286e() {
        int[] iArr;
        iArr = AbstractC2993x2.f1089e;
        return iArr;
    }

    @Override // p035j$.util.stream.AbstractC2855a2, p035j$.util.stream.InterfaceC2707A1
    /* renamed from: f */
    public /* synthetic */ InterfaceC2986w1 mo327r(long j, long j2, InterfaceC2675m interfaceC2675m) {
        return AbstractC2938o1.m354o(this, j, j2, interfaceC2675m);
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2938o1.m357l(this, consumer);
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    public InterfaceC3008t spliterator() {
        return AbstractC2625I.m634c();
    }

    @Override // p035j$.util.stream.AbstractC2855a2, p035j$.util.stream.InterfaceC2707A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2707A1 mo289b(int i) {
        mo289b(i);
        throw null;
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    public InterfaceC2701s spliterator() {
        return AbstractC2625I.m634c();
    }
}
