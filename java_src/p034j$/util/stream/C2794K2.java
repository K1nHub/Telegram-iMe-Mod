package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2713y;
/* renamed from: j$.util.stream.K2 */
/* loaded from: classes2.dex */
class C2794K2 extends AbstractC2845T2 implements InterfaceC2840S2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2713y f778b;

    /* renamed from: c */
    final /* synthetic */ BiConsumer f779c;

    /* renamed from: d */
    final /* synthetic */ BiConsumer f780d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2794K2(InterfaceC2713y interfaceC2713y, BiConsumer biConsumer, BiConsumer biConsumer2) {
        this.f778b = interfaceC2713y;
        this.f779c = biConsumer;
        this.f780d = biConsumer2;
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    public /* synthetic */ void accept(double d) {
        AbstractC2964o1.m354f(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    public /* synthetic */ void accept(int i) {
        AbstractC2964o1.m356d(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2954m3, p034j$.util.stream.InterfaceC2948l3, p034j$.util.function.InterfaceC2705q
    public /* synthetic */ void accept(long j) {
        AbstractC2964o1.m355e(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        this.f779c.accept(this.f845a, obj);
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2840S2
    /* renamed from: h */
    public void mo480h(InterfaceC2840S2 interfaceC2840S2) {
        this.f780d.accept(this.f845a, ((C2794K2) interfaceC2840S2).f845a);
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    /* renamed from: m */
    public /* synthetic */ void mo321m() {
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    /* renamed from: n */
    public void mo297n(long j) {
        this.f845a = this.f778b.get();
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    /* renamed from: o */
    public /* synthetic */ boolean mo296o() {
        return false;
    }
}
