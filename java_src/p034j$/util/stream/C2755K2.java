package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.BiConsumer;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2674y;
/* renamed from: j$.util.stream.K2 */
/* loaded from: classes2.dex */
class C2755K2 extends AbstractC2806T2 implements InterfaceC2801S2 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2674y f775b;

    /* renamed from: c */
    final /* synthetic */ BiConsumer f776c;

    /* renamed from: d */
    final /* synthetic */ BiConsumer f777d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2755K2(InterfaceC2674y interfaceC2674y, BiConsumer biConsumer, BiConsumer biConsumer2) {
        this.f775b = interfaceC2674y;
        this.f776c = biConsumer;
        this.f777d = biConsumer2;
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
        this.f776c.accept(this.f842a, obj);
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2801S2
    /* renamed from: h */
    public void mo475h(InterfaceC2801S2 interfaceC2801S2) {
        this.f777d.accept(this.f842a, ((C2755K2) interfaceC2801S2).f842a);
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: m */
    public /* synthetic */ void mo316m() {
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: n */
    public void mo292n(long j) {
        this.f842a = this.f775b.get();
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: o */
    public /* synthetic */ boolean mo291o() {
        return false;
    }
}
