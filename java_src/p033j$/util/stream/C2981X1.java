package p033j$.util.stream;

import p033j$.util.AbstractC2768F;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
/* renamed from: j$.util.stream.X1 */
/* loaded from: classes2.dex */
final class C2981X1 extends AbstractC2998a2 implements InterfaceC3129w1 {
    @Override // p033j$.util.stream.InterfaceC2850A1
    /* renamed from: a */
    public /* synthetic */ void mo389i(Integer[] numArr, int i) {
        AbstractC3081o1.m418i(this, numArr, i);
    }

    @Override // p033j$.util.stream.AbstractC2998a2, p033j$.util.stream.InterfaceC2850A1
    /* renamed from: b */
    public InterfaceC3147z1 mo347b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.InterfaceC3147z1
    /* renamed from: e */
    public Object mo344e() {
        int[] iArr;
        iArr = AbstractC3136x2.f1222e;
        return iArr;
    }

    @Override // p033j$.util.stream.AbstractC2998a2, p033j$.util.stream.InterfaceC2850A1
    /* renamed from: f */
    public /* synthetic */ InterfaceC3129w1 mo385q(long j, long j2, IntFunction intFunction) {
        return AbstractC3081o1.m412o(this, j, j2, intFunction);
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3081o1.m415l(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    public Spliterator.InterfaceC2774d spliterator() {
        return AbstractC2768F.m686c();
    }

    @Override // p033j$.util.stream.AbstractC2998a2, p033j$.util.stream.InterfaceC2850A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2850A1 mo347b(int i) {
        mo347b(i);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    public Spliterator spliterator() {
        return AbstractC2768F.m686c();
    }
}
