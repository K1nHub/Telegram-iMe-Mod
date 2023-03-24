package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2597k;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2588b;
import p034j$.util.function.InterfaceC2598l;
import p034j$.util.function.InterfaceC2608v;
import p034j$.util.function.InterfaceC2611y;
/* renamed from: j$.util.stream.O2 */
/* loaded from: classes2.dex */
class C2716O2 extends AbstractC2743T2 implements InterfaceC2738S2, InterfaceC2840k3 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2611y f808b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2608v f809c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2588b f810d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2716O2(InterfaceC2611y interfaceC2611y, InterfaceC2608v interfaceC2608v, InterfaceC2588b interfaceC2588b) {
        this.f808b = interfaceC2611y;
        this.f809c = interfaceC2608v;
        this.f810d = interfaceC2588b;
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    public /* synthetic */ void accept(double d) {
        AbstractC2862o1.m368f(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    public void accept(int i) {
        this.f809c.accept(this.f842a, i);
    }

    @Override // p034j$.util.stream.InterfaceC2852m3, p034j$.util.stream.InterfaceC2846l3, p034j$.util.function.InterfaceC2603q
    public /* synthetic */ void accept(long j) {
        AbstractC2862o1.m369e(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Integer num) {
        AbstractC2862o1.m372b(this, num);
    }

    @Override // p034j$.util.stream.InterfaceC2738S2
    /* renamed from: h */
    public void mo494h(InterfaceC2738S2 interfaceC2738S2) {
        this.f842a = this.f810d.apply(this.f842a, ((C2716O2) interfaceC2738S2).f842a);
    }

    @Override // p034j$.util.function.InterfaceC2598l
    /* renamed from: l */
    public InterfaceC2598l mo179l(InterfaceC2598l interfaceC2598l) {
        Objects.requireNonNull(interfaceC2598l);
        return new C2597k(this, interfaceC2598l);
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: m */
    public /* synthetic */ void mo335m() {
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: n */
    public void mo311n(long j) {
        this.f842a = this.f808b.get();
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: o */
    public /* synthetic */ boolean mo310o() {
        return false;
    }
}
