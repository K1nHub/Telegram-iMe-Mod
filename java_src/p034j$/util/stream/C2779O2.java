package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2660k;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2651b;
import p034j$.util.function.InterfaceC2661l;
import p034j$.util.function.InterfaceC2671v;
import p034j$.util.function.InterfaceC2674y;
/* renamed from: j$.util.stream.O2 */
/* loaded from: classes2.dex */
class C2779O2 extends AbstractC2806T2 implements InterfaceC2801S2, InterfaceC2903k3 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2674y f808b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2671v f809c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2651b f810d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2779O2(InterfaceC2674y interfaceC2674y, InterfaceC2671v interfaceC2671v, InterfaceC2651b interfaceC2651b) {
        this.f808b = interfaceC2674y;
        this.f809c = interfaceC2671v;
        this.f810d = interfaceC2651b;
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    public /* synthetic */ void accept(double d) {
        AbstractC2925o1.m349f(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    public void accept(int i) {
        this.f809c.accept(this.f842a, i);
    }

    @Override // p034j$.util.stream.InterfaceC2915m3, p034j$.util.stream.InterfaceC2909l3, p034j$.util.function.InterfaceC2666q
    public /* synthetic */ void accept(long j) {
        AbstractC2925o1.m350e(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Integer num) {
        AbstractC2925o1.m353b(this, num);
    }

    @Override // p034j$.util.stream.InterfaceC2801S2
    /* renamed from: h */
    public void mo475h(InterfaceC2801S2 interfaceC2801S2) {
        this.f842a = this.f810d.apply(this.f842a, ((C2779O2) interfaceC2801S2).f842a);
    }

    @Override // p034j$.util.function.InterfaceC2661l
    /* renamed from: l */
    public InterfaceC2661l mo160l(InterfaceC2661l interfaceC2661l) {
        Objects.requireNonNull(interfaceC2661l);
        return new C2660k(this, interfaceC2661l);
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: m */
    public /* synthetic */ void mo316m() {
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: n */
    public void mo292n(long j) {
        this.f842a = this.f808b.get();
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: o */
    public /* synthetic */ boolean mo291o() {
        return false;
    }
}
