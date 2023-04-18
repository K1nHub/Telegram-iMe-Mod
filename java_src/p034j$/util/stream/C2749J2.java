package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2651b;
import p034j$.util.function.InterfaceC2674y;
/* renamed from: j$.util.stream.J2 */
/* loaded from: classes2.dex */
class C2749J2 extends AbstractC2806T2 implements InterfaceC2801S2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2674y f765b;

    /* renamed from: c */
    final /* synthetic */ BiConsumer f766c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2651b f767d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2749J2(InterfaceC2674y interfaceC2674y, BiConsumer biConsumer, InterfaceC2651b interfaceC2651b) {
        this.f765b = interfaceC2674y;
        this.f766c = biConsumer;
        this.f767d = interfaceC2651b;
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    public /* synthetic */ void accept(double d) {
        AbstractC2925o1.m349f(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    public /* synthetic */ void accept(int i) {
        AbstractC2925o1.m351d(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2915m3, p034j$.util.stream.InterfaceC2909l3, p034j$.util.function.InterfaceC2666q
    public /* synthetic */ void accept(long j) {
        AbstractC2925o1.m350e(this);
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

    @Override // p034j$.util.stream.InterfaceC2801S2
    /* renamed from: h */
    public void mo475h(InterfaceC2801S2 interfaceC2801S2) {
        this.f842a = this.f767d.apply(this.f842a, ((C2749J2) interfaceC2801S2).f842a);
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: m */
    public /* synthetic */ void mo316m() {
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: n */
    public void mo292n(long j) {
        this.f842a = this.f765b.get();
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: o */
    public /* synthetic */ boolean mo291o() {
        return false;
    }
}
