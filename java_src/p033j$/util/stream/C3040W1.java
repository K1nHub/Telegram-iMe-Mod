package p033j$.util.stream;

import p033j$.util.AbstractC2832I;
import p033j$.util.InterfaceC2908s;
import p033j$.util.InterfaceC3215t;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2882m;
/* renamed from: j$.util.stream.W1 */
/* loaded from: classes2.dex */
final class C3040W1 extends AbstractC3062a2 implements InterfaceC3181u1 {
    @Override // p033j$.util.stream.InterfaceC2914A1
    /* renamed from: a */
    public /* synthetic */ void mo340i(Double[] dArr, int i) {
        AbstractC3145o1.m370h(this, dArr, i);
    }

    @Override // p033j$.util.stream.AbstractC3062a2, p033j$.util.stream.InterfaceC2914A1
    /* renamed from: b */
    public InterfaceC3211z1 mo298b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.InterfaceC3211z1
    /* renamed from: e */
    public Object mo295e() {
        double[] dArr;
        dArr = AbstractC3200x2.f1175g;
        return dArr;
    }

    @Override // p033j$.util.stream.AbstractC3062a2, p033j$.util.stream.InterfaceC2914A1
    /* renamed from: f */
    public /* synthetic */ InterfaceC3181u1 mo336r(long j, long j2, InterfaceC2882m interfaceC2882m) {
        return AbstractC3145o1.m364n(this, j, j2, interfaceC2882m);
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3145o1.m367k(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    public InterfaceC3215t spliterator() {
        return AbstractC2832I.m643b();
    }

    @Override // p033j$.util.stream.AbstractC3062a2, p033j$.util.stream.InterfaceC2914A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2914A1 mo298b(int i) {
        mo298b(i);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    public InterfaceC2908s spliterator() {
        return AbstractC2832I.m643b();
    }
}
