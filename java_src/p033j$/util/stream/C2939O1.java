package p033j$.util.stream;

import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.O1 */
/* loaded from: classes2.dex */
public final class C2939O1 extends AbstractC2956R1 implements InterfaceC3122u1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2939O1(InterfaceC3122u1 interfaceC3122u1, InterfaceC3122u1 interfaceC3122u12) {
        super(interfaceC3122u1, interfaceC3122u12);
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    /* renamed from: a */
    public /* synthetic */ void mo386i(Double[] dArr, int i) {
        AbstractC3086o1.m416h(this, dArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC3152z1
    /* renamed from: f */
    public double[] mo343c(int i) {
        return new double[i];
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3086o1.m413k(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    /* renamed from: h */
    public /* synthetic */ InterfaceC3122u1 mo382q(long j, long j2, IntFunction intFunction) {
        return AbstractC3086o1.m410n(this, j, j2, intFunction);
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    public Spliterator.InterfaceC2779d spliterator() {
        return new C3033f2(this);
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    public Spliterator spliterator() {
        return new C3033f2(this);
    }
}
