package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2588p;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2574b;
import p034j$.util.function.InterfaceC2589q;
import p034j$.util.function.InterfaceC2595w;
import p034j$.util.function.InterfaceC2597y;
/* renamed from: j$.util.stream.A2 */
/* loaded from: classes2.dex */
class C2618A2 extends AbstractC2729T2 implements InterfaceC2724S2, InterfaceC2832l3 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2597y f681b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2595w f682c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2574b f683d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2618A2(InterfaceC2597y interfaceC2597y, InterfaceC2595w interfaceC2595w, InterfaceC2574b interfaceC2574b) {
        this.f681b = interfaceC2597y;
        this.f682c = interfaceC2595w;
        this.f683d = interfaceC2574b;
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    public /* synthetic */ void accept(double d) {
        AbstractC2848o1.m369f(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    public /* synthetic */ void accept(int i) {
        AbstractC2848o1.m371d(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2838m3, p034j$.util.stream.InterfaceC2832l3, p034j$.util.function.InterfaceC2589q
    public void accept(long j) {
        this.f682c.accept(this.f841a, j);
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Long l) {
        AbstractC2848o1.m372c(this, l);
    }

    @Override // p034j$.util.function.InterfaceC2589q
    /* renamed from: f */
    public InterfaceC2589q mo155f(InterfaceC2589q interfaceC2589q) {
        Objects.requireNonNull(interfaceC2589q);
        return new C2588p(this, interfaceC2589q);
    }

    @Override // p034j$.util.stream.InterfaceC2724S2
    /* renamed from: h */
    public void mo495h(InterfaceC2724S2 interfaceC2724S2) {
        this.f841a = this.f683d.apply(this.f841a, ((C2618A2) interfaceC2724S2).f841a);
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: m */
    public /* synthetic */ void mo336m() {
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: n */
    public void mo312n(long j) {
        this.f841a = this.f681b.get();
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: o */
    public /* synthetic */ boolean mo311o() {
        return false;
    }
}
