package p033j$.util.stream;

import p033j$.util.InterfaceC2853s;
import p033j$.util.InterfaceC3160t;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2827m;
/* renamed from: j$.util.stream.Q1 */
/* loaded from: classes2.dex */
final class C2955Q1 extends AbstractC2960R1 implements InterfaceC3150y1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2955Q1(InterfaceC3150y1 interfaceC3150y1, InterfaceC3150y1 interfaceC3150y12) {
        super(interfaceC3150y1, interfaceC3150y12);
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: a */
    public /* synthetic */ void mo322i(Long[] lArr, int i) {
        AbstractC3090o1.m350j(this, lArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC3156z1
    /* renamed from: f */
    public long[] mo279c(int i) {
        return new long[i];
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3090o1.m347m(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: h */
    public /* synthetic */ InterfaceC3150y1 mo318r(long j, long j2, InterfaceC2827m interfaceC2827m) {
        return AbstractC3090o1.m344p(this, j, j2, interfaceC2827m);
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    public InterfaceC3160t spliterator() {
        return new C3049h2(this);
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    public InterfaceC2853s spliterator() {
        return new C3049h2(this);
    }
}
