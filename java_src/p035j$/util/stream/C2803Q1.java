package p035j$.util.stream;

import p035j$.util.InterfaceC2701s;
import p035j$.util.InterfaceC3008t;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2675m;
/* renamed from: j$.util.stream.Q1 */
/* loaded from: classes2.dex */
final class C2803Q1 extends AbstractC2808R1 implements InterfaceC2998y1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2803Q1(InterfaceC2998y1 interfaceC2998y1, InterfaceC2998y1 interfaceC2998y12) {
        super(interfaceC2998y1, interfaceC2998y12);
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    /* renamed from: a */
    public /* synthetic */ void mo331i(Long[] lArr, int i) {
        AbstractC2938o1.m359j(this, lArr, i);
    }

    @Override // p035j$.util.stream.InterfaceC3004z1
    /* renamed from: f */
    public long[] mo288c(int i) {
        return new long[i];
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2938o1.m356m(this, consumer);
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    /* renamed from: h */
    public /* synthetic */ InterfaceC2998y1 mo327r(long j, long j2, InterfaceC2675m interfaceC2675m) {
        return AbstractC2938o1.m353p(this, j, j2, interfaceC2675m);
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    public InterfaceC3008t spliterator() {
        return new C2897h2(this);
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    public InterfaceC2701s spliterator() {
        return new C2897h2(this);
    }
}
