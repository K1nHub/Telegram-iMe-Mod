package p033j$.util.stream;

import p033j$.util.AbstractC2777I;
import p033j$.util.InterfaceC2853s;
import p033j$.util.InterfaceC3160t;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2827m;
/* renamed from: j$.util.stream.X1 */
/* loaded from: classes2.dex */
final class C2990X1 extends AbstractC3007a2 implements InterfaceC3138w1 {
    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: a */
    public /* synthetic */ void mo322i(Integer[] numArr, int i) {
        AbstractC3090o1.m351i(this, numArr, i);
    }

    @Override // p033j$.util.stream.AbstractC3007a2, p033j$.util.stream.InterfaceC2859A1
    /* renamed from: b */
    public InterfaceC3156z1 mo280b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.InterfaceC3156z1
    /* renamed from: e */
    public Object mo277e() {
        int[] iArr;
        iArr = AbstractC3145x2.f1169e;
        return iArr;
    }

    @Override // p033j$.util.stream.AbstractC3007a2, p033j$.util.stream.InterfaceC2859A1
    /* renamed from: f */
    public /* synthetic */ InterfaceC3138w1 mo318r(long j, long j2, InterfaceC2827m interfaceC2827m) {
        return AbstractC3090o1.m345o(this, j, j2, interfaceC2827m);
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3090o1.m348l(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    public InterfaceC3160t spliterator() {
        return AbstractC2777I.m624c();
    }

    @Override // p033j$.util.stream.AbstractC3007a2, p033j$.util.stream.InterfaceC2859A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2859A1 mo280b(int i) {
        mo280b(i);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    public InterfaceC2853s spliterator() {
        return AbstractC2777I.m624c();
    }
}
