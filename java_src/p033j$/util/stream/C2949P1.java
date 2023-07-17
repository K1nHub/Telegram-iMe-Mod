package p033j$.util.stream;

import p033j$.util.InterfaceC2853s;
import p033j$.util.InterfaceC3160t;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2827m;
/* renamed from: j$.util.stream.P1 */
/* loaded from: classes2.dex */
final class C2949P1 extends AbstractC2960R1 implements InterfaceC3138w1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2949P1(InterfaceC3138w1 interfaceC3138w1, InterfaceC3138w1 interfaceC3138w12) {
        super(interfaceC3138w1, interfaceC3138w12);
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: a */
    public /* synthetic */ void mo322i(Integer[] numArr, int i) {
        AbstractC3090o1.m351i(this, numArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC3156z1
    /* renamed from: f */
    public int[] mo279c(int i) {
        return new int[i];
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3090o1.m348l(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: h */
    public /* synthetic */ InterfaceC3138w1 mo318r(long j, long j2, InterfaceC2827m interfaceC2827m) {
        return AbstractC3090o1.m345o(this, j, j2, interfaceC2827m);
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    public InterfaceC3160t spliterator() {
        return new C3043g2(this);
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    public InterfaceC2853s spliterator() {
        return new C3043g2(this);
    }
}
