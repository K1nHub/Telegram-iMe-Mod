package p034j$.util.stream;

import p034j$.util.AbstractC2651I;
import p034j$.util.InterfaceC2727s;
import p034j$.util.InterfaceC3034t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2701m;
/* renamed from: j$.util.stream.W1 */
/* loaded from: classes2.dex */
final class C2859W1 extends AbstractC2881a2 implements InterfaceC3000u1 {
    @Override // p034j$.util.stream.InterfaceC2733A1
    /* renamed from: a */
    public /* synthetic */ void mo322i(Double[] dArr, int i) {
        AbstractC2964o1.m352h(this, dArr, i);
    }

    @Override // p034j$.util.stream.AbstractC2881a2, p034j$.util.stream.InterfaceC2733A1
    /* renamed from: b */
    public InterfaceC3030z1 mo280b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p034j$.util.stream.InterfaceC3030z1
    /* renamed from: e */
    public Object mo277e() {
        double[] dArr;
        dArr = AbstractC3019x2.f1089g;
        return dArr;
    }

    @Override // p034j$.util.stream.AbstractC2881a2, p034j$.util.stream.InterfaceC2733A1
    /* renamed from: f */
    public /* synthetic */ InterfaceC3000u1 mo318r(long j, long j2, InterfaceC2701m interfaceC2701m) {
        return AbstractC2964o1.m346n(this, j, j2, interfaceC2701m);
    }

    @Override // p034j$.util.stream.InterfaceC2733A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2964o1.m349k(this, consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2733A1
    public InterfaceC3034t spliterator() {
        return AbstractC2651I.m625b();
    }

    @Override // p034j$.util.stream.AbstractC2881a2, p034j$.util.stream.InterfaceC2733A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2733A1 mo280b(int i) {
        mo280b(i);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2733A1
    public InterfaceC2727s spliterator() {
        return AbstractC2651I.m625b();
    }
}
