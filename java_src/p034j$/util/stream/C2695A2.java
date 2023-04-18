package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2665p;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2651b;
import p034j$.util.function.InterfaceC2666q;
import p034j$.util.function.InterfaceC2672w;
import p034j$.util.function.InterfaceC2674y;
/* renamed from: j$.util.stream.A2 */
/* loaded from: classes2.dex */
class C2695A2 extends AbstractC2806T2 implements InterfaceC2801S2, InterfaceC2909l3 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2674y f682b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2672w f683c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2651b f684d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2695A2(InterfaceC2674y interfaceC2674y, InterfaceC2672w interfaceC2672w, InterfaceC2651b interfaceC2651b) {
        this.f682b = interfaceC2674y;
        this.f683c = interfaceC2672w;
        this.f684d = interfaceC2651b;
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
    public void accept(long j) {
        this.f683c.accept(this.f842a, j);
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Long l) {
        AbstractC2925o1.m352c(this, l);
    }

    @Override // p034j$.util.function.InterfaceC2666q
    /* renamed from: f */
    public InterfaceC2666q mo135f(InterfaceC2666q interfaceC2666q) {
        Objects.requireNonNull(interfaceC2666q);
        return new C2665p(this, interfaceC2666q);
    }

    @Override // p034j$.util.stream.InterfaceC2801S2
    /* renamed from: h */
    public void mo475h(InterfaceC2801S2 interfaceC2801S2) {
        this.f842a = this.f684d.apply(this.f842a, ((C2695A2) interfaceC2801S2).f842a);
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: m */
    public /* synthetic */ void mo316m() {
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: n */
    public void mo292n(long j) {
        this.f842a = this.f682b.get();
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: o */
    public /* synthetic */ boolean mo291o() {
        return false;
    }
}
