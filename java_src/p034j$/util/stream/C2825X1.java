package p034j$.util.stream;

import p034j$.util.AbstractC2612I;
import p034j$.util.InterfaceC2688s;
import p034j$.util.InterfaceC2995t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2662m;
/* renamed from: j$.util.stream.X1 */
/* loaded from: classes2.dex */
final class C2825X1 extends AbstractC2842a2 implements InterfaceC2973w1 {
    @Override // p034j$.util.stream.InterfaceC2694A1
    /* renamed from: a */
    public /* synthetic */ void mo317i(Integer[] numArr, int i) {
        AbstractC2925o1.m346i(this, numArr, i);
    }

    @Override // p034j$.util.stream.AbstractC2842a2, p034j$.util.stream.InterfaceC2694A1
    /* renamed from: b */
    public InterfaceC2991z1 mo275b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p034j$.util.stream.InterfaceC2991z1
    /* renamed from: e */
    public Object mo272e() {
        int[] iArr;
        iArr = AbstractC2980x2.f1084e;
        return iArr;
    }

    @Override // p034j$.util.stream.AbstractC2842a2, p034j$.util.stream.InterfaceC2694A1
    /* renamed from: f */
    public /* synthetic */ InterfaceC2973w1 mo313r(long j, long j2, InterfaceC2662m interfaceC2662m) {
        return AbstractC2925o1.m340o(this, j, j2, interfaceC2662m);
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2925o1.m343l(this, consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    public InterfaceC2995t spliterator() {
        return AbstractC2612I.m620c();
    }

    @Override // p034j$.util.stream.AbstractC2842a2, p034j$.util.stream.InterfaceC2694A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2694A1 mo275b(int i) {
        mo275b(i);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    public InterfaceC2688s spliterator() {
        return AbstractC2612I.m620c();
    }
}
