package p034j$.util.stream;

import p034j$.util.InterfaceC2732s;
import p034j$.util.InterfaceC3039t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2706m;
/* renamed from: j$.util.stream.Q1 */
/* loaded from: classes2.dex */
final class C2834Q1 extends AbstractC2839R1 implements InterfaceC3029y1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2834Q1(InterfaceC3029y1 interfaceC3029y1, InterfaceC3029y1 interfaceC3029y12) {
        super(interfaceC3029y1, interfaceC3029y12);
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    /* renamed from: a */
    public /* synthetic */ void mo322i(Long[] lArr, int i) {
        AbstractC2969o1.m350j(this, lArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC3035z1
    /* renamed from: f */
    public long[] mo279c(int i) {
        return new long[i];
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2969o1.m347m(this, consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    /* renamed from: h */
    public /* synthetic */ InterfaceC3029y1 mo318r(long j, long j2, InterfaceC2706m interfaceC2706m) {
        return AbstractC2969o1.m344p(this, j, j2, interfaceC2706m);
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    public InterfaceC3039t spliterator() {
        return new C2928h2(this);
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    public InterfaceC2732s spliterator() {
        return new C2928h2(this);
    }
}