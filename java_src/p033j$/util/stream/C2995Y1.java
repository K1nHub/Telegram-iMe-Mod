package p033j$.util.stream;

import p033j$.util.AbstractC2777I;
import p033j$.util.InterfaceC2853s;
import p033j$.util.InterfaceC3160t;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2827m;
/* renamed from: j$.util.stream.Y1 */
/* loaded from: classes2.dex */
final class C2995Y1 extends AbstractC3007a2 implements InterfaceC3150y1 {
    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: a */
    public /* synthetic */ void mo340i(Long[] lArr, int i) {
        AbstractC3090o1.m368j(this, lArr, i);
    }

    @Override // p033j$.util.stream.AbstractC3007a2, p033j$.util.stream.InterfaceC2859A1
    /* renamed from: b */
    public InterfaceC3156z1 mo298b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.InterfaceC3156z1
    /* renamed from: e */
    public Object mo295e() {
        long[] jArr;
        jArr = AbstractC3145x2.f1173f;
        return jArr;
    }

    @Override // p033j$.util.stream.AbstractC3007a2, p033j$.util.stream.InterfaceC2859A1
    /* renamed from: f */
    public /* synthetic */ InterfaceC3150y1 mo336r(long j, long j2, InterfaceC2827m interfaceC2827m) {
        return AbstractC3090o1.m362p(this, j, j2, interfaceC2827m);
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3090o1.m365m(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    public InterfaceC3160t spliterator() {
        return AbstractC2777I.m641d();
    }

    @Override // p033j$.util.stream.AbstractC3007a2, p033j$.util.stream.InterfaceC2859A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2859A1 mo298b(int i) {
        mo298b(i);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    public InterfaceC2853s spliterator() {
        return AbstractC2777I.m641d();
    }
}
