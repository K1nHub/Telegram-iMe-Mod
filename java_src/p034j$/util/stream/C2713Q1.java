package p034j$.util.stream;

import p034j$.util.InterfaceC2611s;
import p034j$.util.InterfaceC2918t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2585m;
/* renamed from: j$.util.stream.Q1 */
/* loaded from: classes2.dex */
final class C2713Q1 extends AbstractC2718R1 implements InterfaceC2908y1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2713Q1(InterfaceC2908y1 interfaceC2908y1, InterfaceC2908y1 interfaceC2908y12) {
        super(interfaceC2908y1, interfaceC2908y12);
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    /* renamed from: a */
    public /* synthetic */ void mo337i(Long[] lArr, int i) {
        AbstractC2848o1.m365j(this, lArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC2914z1
    /* renamed from: f */
    public long[] mo294c(int i) {
        return new long[i];
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2848o1.m362m(this, consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    /* renamed from: h */
    public /* synthetic */ InterfaceC2908y1 mo333r(long j, long j2, InterfaceC2585m interfaceC2585m) {
        return AbstractC2848o1.m359p(this, j, j2, interfaceC2585m);
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    public InterfaceC2918t spliterator() {
        return new C2807h2(this);
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    public InterfaceC2611s spliterator() {
        return new C2807h2(this);
    }
}
