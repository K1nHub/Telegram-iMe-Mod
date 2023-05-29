package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2704p;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2690b;
import p034j$.util.function.InterfaceC2705q;
import p034j$.util.function.InterfaceC2711w;
import p034j$.util.function.InterfaceC2713y;
/* renamed from: j$.util.stream.A2 */
/* loaded from: classes2.dex */
class C2734A2 extends AbstractC2845T2 implements InterfaceC2840S2, InterfaceC2948l3 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2713y f685b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2711w f686c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2690b f687d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2734A2(InterfaceC2713y interfaceC2713y, InterfaceC2711w interfaceC2711w, InterfaceC2690b interfaceC2690b) {
        this.f685b = interfaceC2713y;
        this.f686c = interfaceC2711w;
        this.f687d = interfaceC2690b;
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
    public void accept(long j) {
        this.f686c.accept(this.f845a, j);
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Long l) {
        AbstractC2964o1.m357c(this, l);
    }

    @Override // p034j$.util.function.InterfaceC2705q
    /* renamed from: f */
    public InterfaceC2705q mo140f(InterfaceC2705q interfaceC2705q) {
        Objects.requireNonNull(interfaceC2705q);
        return new C2704p(this, interfaceC2705q);
    }

    @Override // p034j$.util.stream.InterfaceC2840S2
    /* renamed from: h */
    public void mo480h(InterfaceC2840S2 interfaceC2840S2) {
        this.f845a = this.f687d.apply(this.f845a, ((C2734A2) interfaceC2840S2).f845a);
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    /* renamed from: m */
    public /* synthetic */ void mo321m() {
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    /* renamed from: n */
    public void mo297n(long j) {
        this.f845a = this.f685b.get();
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    /* renamed from: o */
    public /* synthetic */ boolean mo296o() {
        return false;
    }
}
