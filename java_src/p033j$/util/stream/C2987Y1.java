package p033j$.util.stream;

import p033j$.util.AbstractC2769F;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
/* renamed from: j$.util.stream.Y1 */
/* loaded from: classes2.dex */
final class C2987Y1 extends AbstractC2999a2 implements InterfaceC3142y1 {
    @Override // p033j$.util.stream.InterfaceC2851A1
    /* renamed from: a */
    public /* synthetic */ void mo385i(Long[] lArr, int i) {
        AbstractC3082o1.m413j(this, lArr, i);
    }

    @Override // p033j$.util.stream.AbstractC2999a2, p033j$.util.stream.InterfaceC2851A1
    /* renamed from: b */
    public InterfaceC3148z1 mo343b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.InterfaceC3148z1
    /* renamed from: e */
    public Object mo340e() {
        long[] jArr;
        jArr = AbstractC3137x2.f1223f;
        return jArr;
    }

    @Override // p033j$.util.stream.AbstractC2999a2, p033j$.util.stream.InterfaceC2851A1
    /* renamed from: f */
    public /* synthetic */ InterfaceC3142y1 mo381q(long j, long j2, IntFunction intFunction) {
        return AbstractC3082o1.m407p(this, j, j2, intFunction);
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3082o1.m410m(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    public Spliterator.InterfaceC2775d spliterator() {
        return AbstractC2769F.m681d();
    }

    @Override // p033j$.util.stream.AbstractC2999a2, p033j$.util.stream.InterfaceC2851A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2851A1 mo343b(int i) {
        mo343b(i);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    public Spliterator spliterator() {
        return AbstractC2769F.m681d();
    }
}
