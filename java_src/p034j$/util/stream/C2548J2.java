package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2450b;
import p034j$.util.function.InterfaceC2473y;
/* renamed from: j$.util.stream.J2 */
/* loaded from: classes2.dex */
class C2548J2 extends AbstractC2605T2 implements InterfaceC2600S2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2473y f759b;

    /* renamed from: c */
    final /* synthetic */ BiConsumer f760c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2450b f761d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2548J2(InterfaceC2473y interfaceC2473y, BiConsumer biConsumer, InterfaceC2450b interfaceC2450b) {
        this.f759b = interfaceC2473y;
        this.f760c = biConsumer;
        this.f761d = interfaceC2450b;
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
        this.f760c.accept(this.f836a, obj);
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2600S2
    /* renamed from: h */
    public void mo495h(InterfaceC2600S2 interfaceC2600S2) {
        this.f836a = this.f761d.apply(this.f836a, ((C2548J2) interfaceC2600S2).f836a);
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: m */
    public /* synthetic */ void mo336m() {
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: n */
    public void mo312n(long j) {
        this.f836a = this.f759b.get();
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: o */
    public /* synthetic */ boolean mo311o() {
        return false;
    }
}
