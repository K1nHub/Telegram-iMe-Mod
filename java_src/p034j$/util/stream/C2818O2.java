package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2699k;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2690b;
import p034j$.util.function.InterfaceC2700l;
import p034j$.util.function.InterfaceC2710v;
import p034j$.util.function.InterfaceC2713y;
/* renamed from: j$.util.stream.O2 */
/* loaded from: classes2.dex */
class C2818O2 extends AbstractC2845T2 implements InterfaceC2840S2, InterfaceC2942k3 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2713y f811b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2710v f812c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2690b f813d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2818O2(InterfaceC2713y interfaceC2713y, InterfaceC2710v interfaceC2710v, InterfaceC2690b interfaceC2690b) {
        this.f811b = interfaceC2713y;
        this.f812c = interfaceC2710v;
        this.f813d = interfaceC2690b;
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    public /* synthetic */ void accept(double d) {
        AbstractC2964o1.m354f(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    public void accept(int i) {
        this.f812c.accept(this.f845a, i);
    }

    @Override // p034j$.util.stream.InterfaceC2954m3, p034j$.util.stream.InterfaceC2948l3, p034j$.util.function.InterfaceC2705q
    public /* synthetic */ void accept(long j) {
        AbstractC2964o1.m355e(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Integer num) {
        AbstractC2964o1.m358b(this, num);
    }

    @Override // p034j$.util.stream.InterfaceC2840S2
    /* renamed from: h */
    public void mo480h(InterfaceC2840S2 interfaceC2840S2) {
        this.f845a = this.f813d.apply(this.f845a, ((C2818O2) interfaceC2840S2).f845a);
    }

    @Override // p034j$.util.function.InterfaceC2700l
    /* renamed from: l */
    public InterfaceC2700l mo165l(InterfaceC2700l interfaceC2700l) {
        Objects.requireNonNull(interfaceC2700l);
        return new C2699k(this, interfaceC2700l);
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    /* renamed from: m */
    public /* synthetic */ void mo321m() {
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    /* renamed from: n */
    public void mo297n(long j) {
        this.f845a = this.f811b.get();
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    /* renamed from: o */
    public /* synthetic */ boolean mo296o() {
        return false;
    }
}
