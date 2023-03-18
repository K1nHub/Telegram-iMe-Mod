package p034j$.util.stream;

import p034j$.util.AbstractC2535I;
import p034j$.util.InterfaceC2611s;
import p034j$.util.InterfaceC2918t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2585m;
/* renamed from: j$.util.stream.X1 */
/* loaded from: classes2.dex */
final class C2748X1 extends AbstractC2765a2 implements InterfaceC2896w1 {
    @Override // p034j$.util.stream.InterfaceC2617A1
    /* renamed from: a */
    public /* synthetic */ void mo337i(Integer[] numArr, int i) {
        AbstractC2848o1.m366i(this, numArr, i);
    }

    @Override // p034j$.util.stream.AbstractC2765a2, p034j$.util.stream.InterfaceC2617A1
    /* renamed from: b */
    public InterfaceC2914z1 mo295b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p034j$.util.stream.InterfaceC2914z1
    /* renamed from: e */
    public Object mo292e() {
        int[] iArr;
        iArr = AbstractC2903x2.f1083e;
        return iArr;
    }

    @Override // p034j$.util.stream.AbstractC2765a2, p034j$.util.stream.InterfaceC2617A1
    /* renamed from: f */
    public /* synthetic */ InterfaceC2896w1 mo333r(long j, long j2, InterfaceC2585m interfaceC2585m) {
        return AbstractC2848o1.m360o(this, j, j2, interfaceC2585m);
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2848o1.m363l(this, consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    public InterfaceC2918t spliterator() {
        return AbstractC2535I.m640c();
    }

    @Override // p034j$.util.stream.AbstractC2765a2, p034j$.util.stream.InterfaceC2617A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2617A1 mo295b(int i) {
        mo295b(i);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    public InterfaceC2611s spliterator() {
        return AbstractC2535I.m640c();
    }
}
