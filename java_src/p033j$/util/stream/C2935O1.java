package p033j$.util.stream;

import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.O1 */
/* loaded from: classes2.dex */
public final class C2935O1 extends AbstractC2952R1 implements InterfaceC3118u1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2935O1(InterfaceC3118u1 interfaceC3118u1, InterfaceC3118u1 interfaceC3118u12) {
        super(interfaceC3118u1, interfaceC3118u12);
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    /* renamed from: a */
    public /* synthetic */ void mo385i(Double[] dArr, int i) {
        AbstractC3082o1.m415h(this, dArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC3148z1
    /* renamed from: f */
    public double[] mo342c(int i) {
        return new double[i];
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3082o1.m412k(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    /* renamed from: h */
    public /* synthetic */ InterfaceC3118u1 mo381q(long j, long j2, IntFunction intFunction) {
        return AbstractC3082o1.m409n(this, j, j2, intFunction);
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    public Spliterator.InterfaceC2775d spliterator() {
        return new C3029f2(this);
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    public Spliterator spliterator() {
        return new C3029f2(this);
    }
}
