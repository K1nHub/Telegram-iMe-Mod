package p034j$.util.stream;

import p034j$.util.InterfaceC2625s;
import p034j$.util.InterfaceC2932t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2599m;
/* renamed from: j$.util.stream.O1 */
/* loaded from: classes2.dex */
final class C2715O1 extends AbstractC2732R1 implements InterfaceC2898u1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2715O1(InterfaceC2898u1 interfaceC2898u1, InterfaceC2898u1 interfaceC2898u12) {
        super(interfaceC2898u1, interfaceC2898u12);
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    /* renamed from: a */
    public /* synthetic */ void mo336i(Double[] dArr, int i) {
        AbstractC2862o1.m366h(this, dArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC2928z1
    /* renamed from: f */
    public double[] mo293c(int i) {
        return new double[i];
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2862o1.m363k(this, consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    /* renamed from: h */
    public /* synthetic */ InterfaceC2898u1 mo332r(long j, long j2, InterfaceC2599m interfaceC2599m) {
        return AbstractC2862o1.m360n(this, j, j2, interfaceC2599m);
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    public InterfaceC2932t spliterator() {
        return new C2809f2(this);
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    public InterfaceC2625s spliterator() {
        return new C2809f2(this);
    }
}
