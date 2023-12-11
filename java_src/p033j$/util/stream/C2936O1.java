package p033j$.util.stream;

import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.O1 */
/* loaded from: classes2.dex */
public final class C2936O1 extends AbstractC2953R1 implements InterfaceC3119u1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2936O1(InterfaceC3119u1 interfaceC3119u1, InterfaceC3119u1 interfaceC3119u12) {
        super(interfaceC3119u1, interfaceC3119u12);
    }

    @Override // p033j$.util.stream.InterfaceC2852A1
    /* renamed from: a */
    public /* synthetic */ void mo386i(Double[] dArr, int i) {
        AbstractC3083o1.m416h(this, dArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC3149z1
    /* renamed from: f */
    public double[] mo343c(int i) {
        return new double[i];
    }

    @Override // p033j$.util.stream.InterfaceC2852A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3083o1.m413k(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2852A1
    /* renamed from: h */
    public /* synthetic */ InterfaceC3119u1 mo382q(long j, long j2, IntFunction intFunction) {
        return AbstractC3083o1.m410n(this, j, j2, intFunction);
    }

    @Override // p033j$.util.stream.InterfaceC2852A1
    public Spliterator.InterfaceC2776d spliterator() {
        return new C3030f2(this);
    }

    @Override // p033j$.util.stream.InterfaceC2852A1
    public Spliterator spliterator() {
        return new C3030f2(this);
    }
}
