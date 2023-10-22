package p033j$.util.stream;

import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.P1 */
/* loaded from: classes2.dex */
public final class C2941P1 extends AbstractC2952R1 implements InterfaceC3130w1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2941P1(InterfaceC3130w1 interfaceC3130w1, InterfaceC3130w1 interfaceC3130w12) {
        super(interfaceC3130w1, interfaceC3130w12);
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    /* renamed from: a */
    public /* synthetic */ void mo385i(Integer[] numArr, int i) {
        AbstractC3082o1.m414i(this, numArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC3148z1
    /* renamed from: f */
    public int[] mo342c(int i) {
        return new int[i];
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3082o1.m411l(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    /* renamed from: h */
    public /* synthetic */ InterfaceC3130w1 mo381q(long j, long j2, IntFunction intFunction) {
        return AbstractC3082o1.m408o(this, j, j2, intFunction);
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    public Spliterator.InterfaceC2775d spliterator() {
        return new C3035g2(this);
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    public Spliterator spliterator() {
        return new C3035g2(this);
    }
}
