package p034j$.util.stream;

import p034j$.util.InterfaceC2625s;
import p034j$.util.InterfaceC2932t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2599m;
/* renamed from: j$.util.stream.Q1 */
/* loaded from: classes2.dex */
final class C2727Q1 extends AbstractC2732R1 implements InterfaceC2922y1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2727Q1(InterfaceC2922y1 interfaceC2922y1, InterfaceC2922y1 interfaceC2922y12) {
        super(interfaceC2922y1, interfaceC2922y12);
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    /* renamed from: a */
    public /* synthetic */ void mo336i(Long[] lArr, int i) {
        AbstractC2862o1.m364j(this, lArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC2928z1
    /* renamed from: f */
    public long[] mo293c(int i) {
        return new long[i];
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2862o1.m361m(this, consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    /* renamed from: h */
    public /* synthetic */ InterfaceC2922y1 mo332r(long j, long j2, InterfaceC2599m interfaceC2599m) {
        return AbstractC2862o1.m358p(this, j, j2, interfaceC2599m);
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    public InterfaceC2932t spliterator() {
        return new C2821h2(this);
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    public InterfaceC2625s spliterator() {
        return new C2821h2(this);
    }
}
