package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2704k;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2695b;
import p034j$.util.function.InterfaceC2705l;
import p034j$.util.function.InterfaceC2715v;
import p034j$.util.function.InterfaceC2718y;
/* renamed from: j$.util.stream.O2 */
/* loaded from: classes2.dex */
class C2823O2 extends AbstractC2850T2 implements InterfaceC2845S2, InterfaceC2947k3 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2718y f811b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2715v f812c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2695b f813d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2823O2(InterfaceC2718y interfaceC2718y, InterfaceC2715v interfaceC2715v, InterfaceC2695b interfaceC2695b) {
        this.f811b = interfaceC2718y;
        this.f812c = interfaceC2715v;
        this.f813d = interfaceC2695b;
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    public /* synthetic */ void accept(double d) {
        AbstractC2969o1.m354f(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    public void accept(int i) {
        this.f812c.accept(this.f845a, i);
    }

    @Override // p034j$.util.stream.InterfaceC2959m3, p034j$.util.stream.InterfaceC2953l3, p034j$.util.function.InterfaceC2710q
    public /* synthetic */ void accept(long j) {
        AbstractC2969o1.m355e(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Integer num) {
        AbstractC2969o1.m358b(this, num);
    }

    @Override // p034j$.util.stream.InterfaceC2845S2
    /* renamed from: h */
    public void mo480h(InterfaceC2845S2 interfaceC2845S2) {
        this.f845a = this.f813d.apply(this.f845a, ((C2823O2) interfaceC2845S2).f845a);
    }

    @Override // p034j$.util.function.InterfaceC2705l
    /* renamed from: l */
    public InterfaceC2705l mo165l(InterfaceC2705l interfaceC2705l) {
        Objects.requireNonNull(interfaceC2705l);
        return new C2704k(this, interfaceC2705l);
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: m */
    public /* synthetic */ void mo321m() {
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: n */
    public void mo297n(long j) {
        this.f845a = this.f811b.get();
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: o */
    public /* synthetic */ boolean mo296o() {
        return false;
    }
}
