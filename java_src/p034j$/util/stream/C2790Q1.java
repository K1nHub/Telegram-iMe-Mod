package p034j$.util.stream;

import p034j$.util.InterfaceC2688s;
import p034j$.util.InterfaceC2995t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2662m;
/* renamed from: j$.util.stream.Q1 */
/* loaded from: classes2.dex */
final class C2790Q1 extends AbstractC2795R1 implements InterfaceC2985y1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2790Q1(InterfaceC2985y1 interfaceC2985y1, InterfaceC2985y1 interfaceC2985y12) {
        super(interfaceC2985y1, interfaceC2985y12);
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    /* renamed from: a */
    public /* synthetic */ void mo317i(Long[] lArr, int i) {
        AbstractC2925o1.m345j(this, lArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC2991z1
    /* renamed from: f */
    public long[] mo274c(int i) {
        return new long[i];
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2925o1.m342m(this, consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    /* renamed from: h */
    public /* synthetic */ InterfaceC2985y1 mo313r(long j, long j2, InterfaceC2662m interfaceC2662m) {
        return AbstractC2925o1.m339p(this, j, j2, interfaceC2662m);
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    public InterfaceC2995t spliterator() {
        return new C2884h2(this);
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    public InterfaceC2688s spliterator() {
        return new C2884h2(this);
    }
}
