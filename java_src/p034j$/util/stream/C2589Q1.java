package p034j$.util.stream;

import p034j$.util.InterfaceC2487s;
import p034j$.util.InterfaceC2794t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2461m;
/* renamed from: j$.util.stream.Q1 */
/* loaded from: classes2.dex */
final class C2589Q1 extends AbstractC2594R1 implements InterfaceC2784y1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2589Q1(InterfaceC2784y1 interfaceC2784y1, InterfaceC2784y1 interfaceC2784y12) {
        super(interfaceC2784y1, interfaceC2784y12);
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    /* renamed from: a */
    public /* synthetic */ void mo337i(Long[] lArr, int i) {
        AbstractC2724o1.m365j(this, lArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC2790z1
    /* renamed from: f */
    public long[] mo294c(int i) {
        return new long[i];
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2724o1.m362m(this, consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    /* renamed from: h */
    public /* synthetic */ InterfaceC2784y1 mo333r(long j, long j2, InterfaceC2461m interfaceC2461m) {
        return AbstractC2724o1.m359p(this, j, j2, interfaceC2461m);
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    public InterfaceC2794t spliterator() {
        return new C2683h2(this);
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    public InterfaceC2487s spliterator() {
        return new C2683h2(this);
    }
}
