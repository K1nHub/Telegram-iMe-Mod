package p033j$.util.stream;

import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.Q1 */
/* loaded from: classes2.dex */
public final class C2948Q1 extends AbstractC2953R1 implements InterfaceC3143y1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2948Q1(InterfaceC3143y1 interfaceC3143y1, InterfaceC3143y1 interfaceC3143y12) {
        super(interfaceC3143y1, interfaceC3143y12);
    }

    @Override // p033j$.util.stream.InterfaceC2852A1
    /* renamed from: a */
    public /* synthetic */ void mo386i(Long[] lArr, int i) {
        AbstractC3083o1.m414j(this, lArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC3149z1
    /* renamed from: f */
    public long[] mo343c(int i) {
        return new long[i];
    }

    @Override // p033j$.util.stream.InterfaceC2852A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3083o1.m411m(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2852A1
    /* renamed from: h */
    public /* synthetic */ InterfaceC3143y1 mo382q(long j, long j2, IntFunction intFunction) {
        return AbstractC3083o1.m408p(this, j, j2, intFunction);
    }

    @Override // p033j$.util.stream.InterfaceC2852A1
    public Spliterator.InterfaceC2776d spliterator() {
        return new C3042h2(this);
    }

    @Override // p033j$.util.stream.InterfaceC2852A1
    public Spliterator spliterator() {
        return new C3042h2(this);
    }
}
