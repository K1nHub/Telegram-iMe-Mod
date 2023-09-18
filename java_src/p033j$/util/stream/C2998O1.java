package p033j$.util.stream;

import p033j$.util.InterfaceC2908s;
import p033j$.util.InterfaceC3215t;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2882m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.O1 */
/* loaded from: classes2.dex */
public final class C2998O1 extends AbstractC3015R1 implements InterfaceC3181u1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2998O1(InterfaceC3181u1 interfaceC3181u1, InterfaceC3181u1 interfaceC3181u12) {
        super(interfaceC3181u1, interfaceC3181u12);
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    /* renamed from: a */
    public /* synthetic */ void mo340i(Double[] dArr, int i) {
        AbstractC3145o1.m370h(this, dArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC3211z1
    /* renamed from: f */
    public double[] mo297c(int i) {
        return new double[i];
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3145o1.m367k(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    /* renamed from: h */
    public /* synthetic */ InterfaceC3181u1 mo336r(long j, long j2, InterfaceC2882m interfaceC2882m) {
        return AbstractC3145o1.m364n(this, j, j2, interfaceC2882m);
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    public InterfaceC3215t spliterator() {
        return new C3092f2(this);
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    public InterfaceC2908s spliterator() {
        return new C3092f2(this);
    }
}
