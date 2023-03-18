package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2597y;
/* renamed from: j$.util.stream.K2 */
/* loaded from: classes2.dex */
class C2678K2 extends AbstractC2729T2 implements InterfaceC2724S2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2597y f774b;

    /* renamed from: c */
    final /* synthetic */ BiConsumer f775c;

    /* renamed from: d */
    final /* synthetic */ BiConsumer f776d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2678K2(InterfaceC2597y interfaceC2597y, BiConsumer biConsumer, BiConsumer biConsumer2) {
        this.f774b = interfaceC2597y;
        this.f775c = biConsumer;
        this.f776d = biConsumer2;
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
        this.f775c.accept(this.f841a, obj);
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2724S2
    /* renamed from: h */
    public void mo495h(InterfaceC2724S2 interfaceC2724S2) {
        this.f776d.accept(this.f841a, ((C2678K2) interfaceC2724S2).f841a);
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: m */
    public /* synthetic */ void mo336m() {
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: n */
    public void mo312n(long j) {
        this.f841a = this.f774b.get();
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: o */
    public /* synthetic */ boolean mo311o() {
        return false;
    }
}
