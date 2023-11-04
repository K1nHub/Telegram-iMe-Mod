package p033j$.util.stream;

import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.P1 */
/* loaded from: classes2.dex */
public final class C2945P1 extends AbstractC2956R1 implements InterfaceC3134w1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2945P1(InterfaceC3134w1 interfaceC3134w1, InterfaceC3134w1 interfaceC3134w12) {
        super(interfaceC3134w1, interfaceC3134w12);
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    /* renamed from: a */
    public /* synthetic */ void mo386i(Integer[] numArr, int i) {
        AbstractC3086o1.m415i(this, numArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC3152z1
    /* renamed from: f */
    public int[] mo343c(int i) {
        return new int[i];
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3086o1.m412l(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    /* renamed from: h */
    public /* synthetic */ InterfaceC3134w1 mo382q(long j, long j2, IntFunction intFunction) {
        return AbstractC3086o1.m409o(this, j, j2, intFunction);
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    public Spliterator.InterfaceC2779d spliterator() {
        return new C3039g2(this);
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    public Spliterator spliterator() {
        return new C3039g2(this);
    }
}
