package p033j$.util.stream;

import p033j$.util.AbstractC2768F;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
/* renamed from: j$.util.stream.Y1 */
/* loaded from: classes2.dex */
final class C2986Y1 extends AbstractC2998a2 implements InterfaceC3141y1 {
    @Override // p033j$.util.stream.InterfaceC2850A1
    /* renamed from: a */
    public /* synthetic */ void mo389i(Long[] lArr, int i) {
        AbstractC3081o1.m417j(this, lArr, i);
    }

    @Override // p033j$.util.stream.AbstractC2998a2, p033j$.util.stream.InterfaceC2850A1
    /* renamed from: b */
    public InterfaceC3147z1 mo347b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.InterfaceC3147z1
    /* renamed from: e */
    public Object mo344e() {
        long[] jArr;
        jArr = AbstractC3136x2.f1223f;
        return jArr;
    }

    @Override // p033j$.util.stream.AbstractC2998a2, p033j$.util.stream.InterfaceC2850A1
    /* renamed from: f */
    public /* synthetic */ InterfaceC3141y1 mo385q(long j, long j2, IntFunction intFunction) {
        return AbstractC3081o1.m411p(this, j, j2, intFunction);
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3081o1.m414m(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    public Spliterator.InterfaceC2774d spliterator() {
        return AbstractC2768F.m685d();
    }

    @Override // p033j$.util.stream.AbstractC2998a2, p033j$.util.stream.InterfaceC2850A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2850A1 mo347b(int i) {
        mo347b(i);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    public Spliterator spliterator() {
        return AbstractC2768F.m685d();
    }
}
