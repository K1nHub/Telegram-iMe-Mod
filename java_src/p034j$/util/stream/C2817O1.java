package p034j$.util.stream;

import p034j$.util.InterfaceC2727s;
import p034j$.util.InterfaceC3034t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2701m;
/* renamed from: j$.util.stream.O1 */
/* loaded from: classes2.dex */
final class C2817O1 extends AbstractC2834R1 implements InterfaceC3000u1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2817O1(InterfaceC3000u1 interfaceC3000u1, InterfaceC3000u1 interfaceC3000u12) {
        super(interfaceC3000u1, interfaceC3000u12);
    }

    @Override // p034j$.util.stream.InterfaceC2733A1
    /* renamed from: a */
    public /* synthetic */ void mo322i(Double[] dArr, int i) {
        AbstractC2964o1.m352h(this, dArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC3030z1
    /* renamed from: f */
    public double[] mo279c(int i) {
        return new double[i];
    }

    @Override // p034j$.util.stream.InterfaceC2733A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2964o1.m349k(this, consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2733A1
    /* renamed from: h */
    public /* synthetic */ InterfaceC3000u1 mo318r(long j, long j2, InterfaceC2701m interfaceC2701m) {
        return AbstractC2964o1.m346n(this, j, j2, interfaceC2701m);
    }

    @Override // p034j$.util.stream.InterfaceC2733A1
    public InterfaceC3034t spliterator() {
        return new C2911f2(this);
    }

    @Override // p034j$.util.stream.InterfaceC2733A1
    public InterfaceC2727s spliterator() {
        return new C2911f2(this);
    }
}
