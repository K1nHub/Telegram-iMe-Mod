package p033j$.util.stream;

import p033j$.util.InterfaceC2853s;
import p033j$.util.InterfaceC3160t;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2827m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.O1 */
/* loaded from: classes2.dex */
public final class C2943O1 extends AbstractC2960R1 implements InterfaceC3126u1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2943O1(InterfaceC3126u1 interfaceC3126u1, InterfaceC3126u1 interfaceC3126u12) {
        super(interfaceC3126u1, interfaceC3126u12);
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: a */
    public /* synthetic */ void mo340i(Double[] dArr, int i) {
        AbstractC3090o1.m370h(this, dArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC3156z1
    /* renamed from: f */
    public double[] mo297c(int i) {
        return new double[i];
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3090o1.m367k(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: h */
    public /* synthetic */ InterfaceC3126u1 mo336r(long j, long j2, InterfaceC2827m interfaceC2827m) {
        return AbstractC3090o1.m364n(this, j, j2, interfaceC2827m);
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    public InterfaceC3160t spliterator() {
        return new C3037f2(this);
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    public InterfaceC2853s spliterator() {
        return new C3037f2(this);
    }
}
