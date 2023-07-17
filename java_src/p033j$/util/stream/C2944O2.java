package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2825k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2816b;
import p033j$.util.function.InterfaceC2826l;
import p033j$.util.function.InterfaceC2836v;
import p033j$.util.function.InterfaceC2839y;
/* renamed from: j$.util.stream.O2 */
/* loaded from: classes2.dex */
class C2944O2 extends AbstractC2971T2 implements InterfaceC2966S2, InterfaceC3068k3 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2839y f893b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2836v f894c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2816b f895d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2944O2(InterfaceC2839y interfaceC2839y, InterfaceC2836v interfaceC2836v, InterfaceC2816b interfaceC2816b) {
        this.f893b = interfaceC2839y;
        this.f894c = interfaceC2836v;
        this.f895d = interfaceC2816b;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    public /* synthetic */ void accept(double d) {
        AbstractC3090o1.m354f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    public void accept(int i) {
        this.f894c.accept(this.f927a, i);
    }

    @Override // p033j$.util.stream.InterfaceC3080m3, p033j$.util.stream.InterfaceC3074l3, p033j$.util.function.InterfaceC2831q
    public /* synthetic */ void accept(long j) {
        AbstractC3090o1.m355e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Integer num) {
        AbstractC3090o1.m358b(this, num);
    }

    @Override // p033j$.util.stream.InterfaceC2966S2
    /* renamed from: h */
    public void mo480h(InterfaceC2966S2 interfaceC2966S2) {
        this.f927a = this.f895d.apply(this.f927a, ((C2944O2) interfaceC2966S2).f927a);
    }

    @Override // p033j$.util.function.InterfaceC2826l
    /* renamed from: l */
    public InterfaceC2826l mo165l(InterfaceC2826l interfaceC2826l) {
        Objects.requireNonNull(interfaceC2826l);
        return new C2825k(this, interfaceC2826l);
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: m */
    public /* synthetic */ void mo321m() {
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo297n(long j) {
        this.f927a = this.f893b.get();
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: o */
    public /* synthetic */ boolean mo296o() {
        return false;
    }
}
