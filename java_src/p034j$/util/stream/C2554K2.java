package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2473y;
/* renamed from: j$.util.stream.K2 */
/* loaded from: classes2.dex */
class C2554K2 extends AbstractC2605T2 implements InterfaceC2600S2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2473y f769b;

    /* renamed from: c */
    final /* synthetic */ BiConsumer f770c;

    /* renamed from: d */
    final /* synthetic */ BiConsumer f771d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2554K2(InterfaceC2473y interfaceC2473y, BiConsumer biConsumer, BiConsumer biConsumer2) {
        this.f769b = interfaceC2473y;
        this.f770c = biConsumer;
        this.f771d = biConsumer2;
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    public /* synthetic */ void accept(double d) {
        AbstractC2724o1.m369f(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    public /* synthetic */ void accept(int i) {
        AbstractC2724o1.m371d(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2714m3, p034j$.util.stream.InterfaceC2708l3, p034j$.util.function.InterfaceC2465q
    public /* synthetic */ void accept(long j) {
        AbstractC2724o1.m370e(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        this.f770c.accept(this.f836a, obj);
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2600S2
    /* renamed from: h */
    public void mo495h(InterfaceC2600S2 interfaceC2600S2) {
        this.f771d.accept(this.f836a, ((C2554K2) interfaceC2600S2).f836a);
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: m */
    public /* synthetic */ void mo336m() {
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: n */
    public void mo312n(long j) {
        this.f836a = this.f769b.get();
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: o */
    public /* synthetic */ boolean mo311o() {
        return false;
    }
}
