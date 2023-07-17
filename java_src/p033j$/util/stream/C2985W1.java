package p033j$.util.stream;

import p033j$.util.AbstractC2777I;
import p033j$.util.InterfaceC2853s;
import p033j$.util.InterfaceC3160t;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2827m;
/* renamed from: j$.util.stream.W1 */
/* loaded from: classes2.dex */
final class C2985W1 extends AbstractC3007a2 implements InterfaceC3126u1 {
    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: a */
    public /* synthetic */ void mo322i(Double[] dArr, int i) {
        AbstractC3090o1.m352h(this, dArr, i);
    }

    @Override // p033j$.util.stream.AbstractC3007a2, p033j$.util.stream.InterfaceC2859A1
    /* renamed from: b */
    public InterfaceC3156z1 mo280b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.InterfaceC3156z1
    /* renamed from: e */
    public Object mo277e() {
        double[] dArr;
        dArr = AbstractC3145x2.f1171g;
        return dArr;
    }

    @Override // p033j$.util.stream.AbstractC3007a2, p033j$.util.stream.InterfaceC2859A1
    /* renamed from: f */
    public /* synthetic */ InterfaceC3126u1 mo318r(long j, long j2, InterfaceC2827m interfaceC2827m) {
        return AbstractC3090o1.m346n(this, j, j2, interfaceC2827m);
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3090o1.m349k(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    public InterfaceC3160t spliterator() {
        return AbstractC2777I.m625b();
    }

    @Override // p033j$.util.stream.AbstractC3007a2, p033j$.util.stream.InterfaceC2859A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2859A1 mo280b(int i) {
        mo280b(i);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    public InterfaceC2853s spliterator() {
        return AbstractC2777I.m625b();
    }
}
