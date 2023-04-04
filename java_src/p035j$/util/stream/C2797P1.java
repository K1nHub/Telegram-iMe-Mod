package p035j$.util.stream;

import p035j$.util.InterfaceC2701s;
import p035j$.util.InterfaceC3008t;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2675m;
/* renamed from: j$.util.stream.P1 */
/* loaded from: classes2.dex */
final class C2797P1 extends AbstractC2808R1 implements InterfaceC2986w1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2797P1(InterfaceC2986w1 interfaceC2986w1, InterfaceC2986w1 interfaceC2986w12) {
        super(interfaceC2986w1, interfaceC2986w12);
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    /* renamed from: a */
    public /* synthetic */ void mo331i(Integer[] numArr, int i) {
        AbstractC2938o1.m360i(this, numArr, i);
    }

    @Override // p035j$.util.stream.InterfaceC3004z1
    /* renamed from: f */
    public int[] mo288c(int i) {
        return new int[i];
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2938o1.m357l(this, consumer);
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    /* renamed from: h */
    public /* synthetic */ InterfaceC2986w1 mo327r(long j, long j2, InterfaceC2675m interfaceC2675m) {
        return AbstractC2938o1.m354o(this, j, j2, interfaceC2675m);
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    public InterfaceC3008t spliterator() {
        return new C2891g2(this);
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    public InterfaceC2701s spliterator() {
        return new C2891g2(this);
    }
}
