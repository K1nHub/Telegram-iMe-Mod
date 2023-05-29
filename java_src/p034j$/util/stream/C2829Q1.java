package p034j$.util.stream;

import p034j$.util.InterfaceC2727s;
import p034j$.util.InterfaceC3034t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2701m;
/* renamed from: j$.util.stream.Q1 */
/* loaded from: classes2.dex */
final class C2829Q1 extends AbstractC2834R1 implements InterfaceC3024y1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2829Q1(InterfaceC3024y1 interfaceC3024y1, InterfaceC3024y1 interfaceC3024y12) {
        super(interfaceC3024y1, interfaceC3024y12);
    }

    @Override // p034j$.util.stream.InterfaceC2733A1
    /* renamed from: a */
    public /* synthetic */ void mo322i(Long[] lArr, int i) {
        AbstractC2964o1.m350j(this, lArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC3030z1
    /* renamed from: f */
    public long[] mo279c(int i) {
        return new long[i];
    }

    @Override // p034j$.util.stream.InterfaceC2733A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2964o1.m347m(this, consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2733A1
    /* renamed from: h */
    public /* synthetic */ InterfaceC3024y1 mo318r(long j, long j2, InterfaceC2701m interfaceC2701m) {
        return AbstractC2964o1.m344p(this, j, j2, interfaceC2701m);
    }

    @Override // p034j$.util.stream.InterfaceC2733A1
    public InterfaceC3034t spliterator() {
        return new C2923h2(this);
    }

    @Override // p034j$.util.stream.InterfaceC2733A1
    public InterfaceC2727s spliterator() {
        return new C2923h2(this);
    }
}
