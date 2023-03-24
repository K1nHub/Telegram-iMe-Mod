package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2588b;
import p034j$.util.function.InterfaceC2611y;
/* renamed from: j$.util.stream.J2 */
/* loaded from: classes2.dex */
class C2686J2 extends AbstractC2743T2 implements InterfaceC2738S2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2611y f765b;

    /* renamed from: c */
    final /* synthetic */ BiConsumer f766c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2588b f767d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2686J2(InterfaceC2611y interfaceC2611y, BiConsumer biConsumer, InterfaceC2588b interfaceC2588b) {
        this.f765b = interfaceC2611y;
        this.f766c = biConsumer;
        this.f767d = interfaceC2588b;
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    public /* synthetic */ void accept(double d) {
        AbstractC2862o1.m368f(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    public /* synthetic */ void accept(int i) {
        AbstractC2862o1.m370d(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2852m3, p034j$.util.stream.InterfaceC2846l3, p034j$.util.function.InterfaceC2603q
    public /* synthetic */ void accept(long j) {
        AbstractC2862o1.m369e(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        this.f766c.accept(this.f842a, obj);
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2738S2
    /* renamed from: h */
    public void mo494h(InterfaceC2738S2 interfaceC2738S2) {
        this.f842a = this.f767d.apply(this.f842a, ((C2686J2) interfaceC2738S2).f842a);
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: m */
    public /* synthetic */ void mo335m() {
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: n */
    public void mo311n(long j) {
        this.f842a = this.f765b.get();
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: o */
    public /* synthetic */ boolean mo310o() {
        return false;
    }
}
