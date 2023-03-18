package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2574b;
import p034j$.util.function.InterfaceC2597y;
/* renamed from: j$.util.stream.J2 */
/* loaded from: classes2.dex */
class C2672J2 extends AbstractC2729T2 implements InterfaceC2724S2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2597y f764b;

    /* renamed from: c */
    final /* synthetic */ BiConsumer f765c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2574b f766d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2672J2(InterfaceC2597y interfaceC2597y, BiConsumer biConsumer, InterfaceC2574b interfaceC2574b) {
        this.f764b = interfaceC2597y;
        this.f765c = biConsumer;
        this.f766d = interfaceC2574b;
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
    public /* synthetic */ void accept(long j) {
        AbstractC2848o1.m370e(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        this.f765c.accept(this.f841a, obj);
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2724S2
    /* renamed from: h */
    public void mo495h(InterfaceC2724S2 interfaceC2724S2) {
        this.f841a = this.f766d.apply(this.f841a, ((C2672J2) interfaceC2724S2).f841a);
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: m */
    public /* synthetic */ void mo336m() {
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: n */
    public void mo312n(long j) {
        this.f841a = this.f764b.get();
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: o */
    public /* synthetic */ boolean mo311o() {
        return false;
    }
}
