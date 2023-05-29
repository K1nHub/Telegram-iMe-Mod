package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2695b;
import p034j$.util.function.InterfaceC2718y;
/* renamed from: j$.util.stream.J2 */
/* loaded from: classes2.dex */
class C2793J2 extends AbstractC2850T2 implements InterfaceC2845S2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2718y f768b;

    /* renamed from: c */
    final /* synthetic */ BiConsumer f769c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2695b f770d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2793J2(InterfaceC2718y interfaceC2718y, BiConsumer biConsumer, InterfaceC2695b interfaceC2695b) {
        this.f768b = interfaceC2718y;
        this.f769c = biConsumer;
        this.f770d = interfaceC2695b;
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    public /* synthetic */ void accept(double d) {
        AbstractC2969o1.m354f(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    public /* synthetic */ void accept(int i) {
        AbstractC2969o1.m356d(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2959m3, p034j$.util.stream.InterfaceC2953l3, p034j$.util.function.InterfaceC2710q
    public /* synthetic */ void accept(long j) {
        AbstractC2969o1.m355e(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        this.f769c.accept(this.f845a, obj);
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2845S2
    /* renamed from: h */
    public void mo480h(InterfaceC2845S2 interfaceC2845S2) {
        this.f845a = this.f770d.apply(this.f845a, ((C2793J2) interfaceC2845S2).f845a);
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: m */
    public /* synthetic */ void mo321m() {
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: n */
    public void mo297n(long j) {
        this.f845a = this.f768b.get();
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: o */
    public /* synthetic */ boolean mo296o() {
        return false;
    }
}
