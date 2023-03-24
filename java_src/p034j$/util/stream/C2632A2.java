package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2602p;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2588b;
import p034j$.util.function.InterfaceC2603q;
import p034j$.util.function.InterfaceC2609w;
import p034j$.util.function.InterfaceC2611y;
/* renamed from: j$.util.stream.A2 */
/* loaded from: classes2.dex */
class C2632A2 extends AbstractC2743T2 implements InterfaceC2738S2, InterfaceC2846l3 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2611y f682b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2609w f683c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2588b f684d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2632A2(InterfaceC2611y interfaceC2611y, InterfaceC2609w interfaceC2609w, InterfaceC2588b interfaceC2588b) {
        this.f682b = interfaceC2611y;
        this.f683c = interfaceC2609w;
        this.f684d = interfaceC2588b;
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
        AbstractC2862o1.m371c(this, l);
    }

    @Override // p034j$.util.function.InterfaceC2603q
    /* renamed from: f */
    public InterfaceC2603q mo154f(InterfaceC2603q interfaceC2603q) {
        Objects.requireNonNull(interfaceC2603q);
        return new C2602p(this, interfaceC2603q);
    }

    @Override // p034j$.util.stream.InterfaceC2738S2
    /* renamed from: h */
    public void mo494h(InterfaceC2738S2 interfaceC2738S2) {
        this.f842a = this.f684d.apply(this.f842a, ((C2632A2) interfaceC2738S2).f842a);
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: m */
    public /* synthetic */ void mo335m() {
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: n */
    public void mo311n(long j) {
        this.f842a = this.f682b.get();
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: o */
    public /* synthetic */ boolean mo310o() {
        return false;
    }
}
