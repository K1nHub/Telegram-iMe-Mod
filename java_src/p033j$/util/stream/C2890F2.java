package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2819e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2816b;
import p033j$.util.function.InterfaceC2820f;
import p033j$.util.function.InterfaceC2835u;
import p033j$.util.function.InterfaceC2839y;
/* renamed from: j$.util.stream.F2 */
/* loaded from: classes2.dex */
class C2890F2 extends AbstractC2971T2 implements InterfaceC2966S2, InterfaceC3062j3 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2839y f819b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2835u f820c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2816b f821d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2890F2(InterfaceC2839y interfaceC2839y, InterfaceC2835u interfaceC2835u, InterfaceC2816b interfaceC2816b) {
        this.f819b = interfaceC2839y;
        this.f820c = interfaceC2835u;
        this.f821d = interfaceC2816b;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    public void accept(double d) {
        this.f820c.accept(this.f927a, d);
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    public /* synthetic */ void accept(int i) {
        AbstractC3090o1.m356d(this);
        throw null;
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
    public /* synthetic */ void accept(Double d) {
        AbstractC3090o1.m359a(this, d);
    }

    @Override // p033j$.util.stream.InterfaceC2966S2
    /* renamed from: h */
    public void mo480h(InterfaceC2966S2 interfaceC2966S2) {
        this.f927a = this.f821d.apply(this.f927a, ((C2890F2) interfaceC2966S2).f927a);
    }

    @Override // p033j$.util.function.InterfaceC2820f
    /* renamed from: j */
    public InterfaceC2820f mo87j(InterfaceC2820f interfaceC2820f) {
        Objects.requireNonNull(interfaceC2820f);
        return new C2819e(this, interfaceC2820f);
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: m */
    public /* synthetic */ void mo321m() {
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo297n(long j) {
        this.f927a = this.f819b.get();
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: o */
    public /* synthetic */ boolean mo296o() {
        return false;
    }
}
