package p033j$.util.stream;

import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.P1 */
/* loaded from: classes2.dex */
public final class C2940P1 extends AbstractC2951R1 implements InterfaceC3129w1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2940P1(InterfaceC3129w1 interfaceC3129w1, InterfaceC3129w1 interfaceC3129w12) {
        super(interfaceC3129w1, interfaceC3129w12);
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    /* renamed from: a */
    public /* synthetic */ void mo389i(Integer[] numArr, int i) {
        AbstractC3081o1.m418i(this, numArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC3147z1
    /* renamed from: f */
    public int[] mo346c(int i) {
        return new int[i];
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3081o1.m415l(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    /* renamed from: h */
    public /* synthetic */ InterfaceC3129w1 mo385q(long j, long j2, IntFunction intFunction) {
        return AbstractC3081o1.m412o(this, j, j2, intFunction);
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    public Spliterator.InterfaceC2774d spliterator() {
        return new C3034g2(this);
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    public Spliterator spliterator() {
        return new C3034g2(this);
    }
}
