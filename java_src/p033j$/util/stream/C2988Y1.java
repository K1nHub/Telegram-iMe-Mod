package p033j$.util.stream;

import p033j$.util.AbstractC2770F;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
/* renamed from: j$.util.stream.Y1 */
/* loaded from: classes2.dex */
final class C2988Y1 extends AbstractC3000a2 implements InterfaceC3143y1 {
    @Override // p033j$.util.stream.InterfaceC2852A1
    /* renamed from: a */
    public /* synthetic */ void mo386i(Long[] lArr, int i) {
        AbstractC3083o1.m414j(this, lArr, i);
    }

    @Override // p033j$.util.stream.AbstractC3000a2, p033j$.util.stream.InterfaceC2852A1
    /* renamed from: b */
    public InterfaceC3149z1 mo344b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.InterfaceC3149z1
    /* renamed from: e */
    public Object mo341e() {
        long[] jArr;
        jArr = AbstractC3138x2.f1223f;
        return jArr;
    }

    @Override // p033j$.util.stream.AbstractC3000a2, p033j$.util.stream.InterfaceC2852A1
    /* renamed from: f */
    public /* synthetic */ InterfaceC3143y1 mo382q(long j, long j2, IntFunction intFunction) {
        return AbstractC3083o1.m408p(this, j, j2, intFunction);
    }

    @Override // p033j$.util.stream.InterfaceC2852A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3083o1.m411m(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2852A1
    public Spliterator.InterfaceC2776d spliterator() {
        return AbstractC2770F.m682d();
    }

    @Override // p033j$.util.stream.AbstractC3000a2, p033j$.util.stream.InterfaceC2852A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2852A1 mo344b(int i) {
        mo344b(i);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC2852A1
    public Spliterator spliterator() {
        return AbstractC2770F.m682d();
    }
}
