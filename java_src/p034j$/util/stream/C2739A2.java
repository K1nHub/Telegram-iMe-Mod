package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2709p;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2695b;
import p034j$.util.function.InterfaceC2710q;
import p034j$.util.function.InterfaceC2716w;
import p034j$.util.function.InterfaceC2718y;
/* renamed from: j$.util.stream.A2 */
/* loaded from: classes2.dex */
class C2739A2 extends AbstractC2850T2 implements InterfaceC2845S2, InterfaceC2953l3 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2718y f685b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2716w f686c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2695b f687d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2739A2(InterfaceC2718y interfaceC2718y, InterfaceC2716w interfaceC2716w, InterfaceC2695b interfaceC2695b) {
        this.f685b = interfaceC2718y;
        this.f686c = interfaceC2716w;
        this.f687d = interfaceC2695b;
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
        AbstractC2969o1.m357c(this, l);
    }

    @Override // p034j$.util.function.InterfaceC2710q
    /* renamed from: f */
    public InterfaceC2710q mo140f(InterfaceC2710q interfaceC2710q) {
        Objects.requireNonNull(interfaceC2710q);
        return new C2709p(this, interfaceC2710q);
    }

    @Override // p034j$.util.stream.InterfaceC2845S2
    /* renamed from: h */
    public void mo480h(InterfaceC2845S2 interfaceC2845S2) {
        this.f845a = this.f687d.apply(this.f845a, ((C2739A2) interfaceC2845S2).f845a);
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: m */
    public /* synthetic */ void mo321m() {
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: n */
    public void mo297n(long j) {
        this.f845a = this.f685b.get();
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: o */
    public /* synthetic */ boolean mo296o() {
        return false;
    }
}
