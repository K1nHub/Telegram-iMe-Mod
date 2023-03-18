package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2577e;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2574b;
import p034j$.util.function.InterfaceC2578f;
import p034j$.util.function.InterfaceC2593u;
import p034j$.util.function.InterfaceC2597y;
/* renamed from: j$.util.stream.F2 */
/* loaded from: classes2.dex */
class C2648F2 extends AbstractC2729T2 implements InterfaceC2724S2, InterfaceC2820j3 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2597y f733b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2593u f734c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2574b f735d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2648F2(InterfaceC2597y interfaceC2597y, InterfaceC2593u interfaceC2593u, InterfaceC2574b interfaceC2574b) {
        this.f733b = interfaceC2597y;
        this.f734c = interfaceC2593u;
        this.f735d = interfaceC2574b;
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    public void accept(double d) {
        this.f734c.accept(this.f841a, d);
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    public /* synthetic */ void accept(int i) {
        AbstractC2848o1.m371d(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2838m3, p034j$.util.stream.InterfaceC2832l3, p034j$.util.function.InterfaceC2589q
    public /* synthetic */ void accept(long j) {
        AbstractC2848o1.m370e(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Double d) {
        AbstractC2848o1.m374a(this, d);
    }

    @Override // p034j$.util.stream.InterfaceC2724S2
    /* renamed from: h */
    public void mo495h(InterfaceC2724S2 interfaceC2724S2) {
        this.f841a = this.f735d.apply(this.f841a, ((C2648F2) interfaceC2724S2).f841a);
    }

    @Override // p034j$.util.function.InterfaceC2578f
    /* renamed from: j */
    public InterfaceC2578f mo102j(InterfaceC2578f interfaceC2578f) {
        Objects.requireNonNull(interfaceC2578f);
        return new C2577e(this, interfaceC2578f);
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: m */
    public /* synthetic */ void mo336m() {
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: n */
    public void mo312n(long j) {
        this.f841a = this.f733b.get();
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: o */
    public /* synthetic */ boolean mo311o() {
        return false;
    }
}
