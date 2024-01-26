package p033j$.util.stream;

import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.O1 */
/* loaded from: classes2.dex */
public final class C2934O1 extends AbstractC2951R1 implements InterfaceC3117u1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2934O1(InterfaceC3117u1 interfaceC3117u1, InterfaceC3117u1 interfaceC3117u12) {
        super(interfaceC3117u1, interfaceC3117u12);
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    /* renamed from: a */
    public /* synthetic */ void mo389i(Double[] dArr, int i) {
        AbstractC3081o1.m419h(this, dArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC3147z1
    /* renamed from: f */
    public double[] mo346c(int i) {
        return new double[i];
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3081o1.m416k(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    /* renamed from: h */
    public /* synthetic */ InterfaceC3117u1 mo385q(long j, long j2, IntFunction intFunction) {
        return AbstractC3081o1.m413n(this, j, j2, intFunction);
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    public Spliterator.InterfaceC2774d spliterator() {
        return new C3028f2(this);
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    public Spliterator spliterator() {
        return new C3028f2(this);
    }
}
