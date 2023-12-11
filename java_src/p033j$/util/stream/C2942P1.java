package p033j$.util.stream;

import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.P1 */
/* loaded from: classes2.dex */
public final class C2942P1 extends AbstractC2953R1 implements InterfaceC3131w1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2942P1(InterfaceC3131w1 interfaceC3131w1, InterfaceC3131w1 interfaceC3131w12) {
        super(interfaceC3131w1, interfaceC3131w12);
    }

    @Override // p033j$.util.stream.InterfaceC2852A1
    /* renamed from: a */
    public /* synthetic */ void mo386i(Integer[] numArr, int i) {
        AbstractC3083o1.m415i(this, numArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC3149z1
    /* renamed from: f */
    public int[] mo343c(int i) {
        return new int[i];
    }

    @Override // p033j$.util.stream.InterfaceC2852A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3083o1.m412l(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2852A1
    /* renamed from: h */
    public /* synthetic */ InterfaceC3131w1 mo382q(long j, long j2, IntFunction intFunction) {
        return AbstractC3083o1.m409o(this, j, j2, intFunction);
    }

    @Override // p033j$.util.stream.InterfaceC2852A1
    public Spliterator.InterfaceC2776d spliterator() {
        return new C3036g2(this);
    }

    @Override // p033j$.util.stream.InterfaceC2852A1
    public Spliterator spliterator() {
        return new C3036g2(this);
    }
}
