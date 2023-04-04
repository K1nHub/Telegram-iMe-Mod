package p035j$.util.stream;

import p035j$.util.InterfaceC2701s;
import p035j$.util.InterfaceC3008t;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2675m;
/* renamed from: j$.util.stream.O1 */
/* loaded from: classes2.dex */
final class C2791O1 extends AbstractC2808R1 implements InterfaceC2974u1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2791O1(InterfaceC2974u1 interfaceC2974u1, InterfaceC2974u1 interfaceC2974u12) {
        super(interfaceC2974u1, interfaceC2974u12);
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    /* renamed from: a */
    public /* synthetic */ void mo331i(Double[] dArr, int i) {
        AbstractC2938o1.m361h(this, dArr, i);
    }

    @Override // p035j$.util.stream.InterfaceC3004z1
    /* renamed from: f */
    public double[] mo288c(int i) {
        return new double[i];
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2938o1.m358k(this, consumer);
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    /* renamed from: h */
    public /* synthetic */ InterfaceC2974u1 mo327r(long j, long j2, InterfaceC2675m interfaceC2675m) {
        return AbstractC2938o1.m355n(this, j, j2, interfaceC2675m);
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    public InterfaceC3008t spliterator() {
        return new C2885f2(this);
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    public InterfaceC2701s spliterator() {
        return new C2885f2(this);
    }
}
