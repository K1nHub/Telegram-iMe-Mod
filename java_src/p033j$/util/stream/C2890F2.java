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
    final /* synthetic */ InterfaceC2839y f822b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2835u f823c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2816b f824d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2890F2(InterfaceC2839y interfaceC2839y, InterfaceC2835u interfaceC2835u, InterfaceC2816b interfaceC2816b) {
        this.f822b = interfaceC2839y;
        this.f823c = interfaceC2835u;
        this.f824d = interfaceC2816b;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    public void accept(double d) {
        this.f823c.accept(this.f930a, d);
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    public /* synthetic */ void accept(int i) {
        AbstractC3090o1.m374d(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3, p033j$.util.stream.InterfaceC3074l3, p033j$.util.function.InterfaceC2831q
    public /* synthetic */ void accept(long j) {
        AbstractC3090o1.m373e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Double d) {
        AbstractC3090o1.m377a(this, d);
    }

    @Override // p033j$.util.stream.InterfaceC2966S2
    /* renamed from: h */
    public void mo498h(InterfaceC2966S2 interfaceC2966S2) {
        this.f930a = this.f824d.apply(this.f930a, ((C2890F2) interfaceC2966S2).f930a);
    }

    @Override // p033j$.util.function.InterfaceC2820f
    /* renamed from: j */
    public InterfaceC2820f mo105j(InterfaceC2820f interfaceC2820f) {
        Objects.requireNonNull(interfaceC2820f);
        return new C2819e(this, interfaceC2820f);
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: m */
    public /* synthetic */ void mo339m() {
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo315n(long j) {
        this.f930a = this.f822b.get();
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: o */
    public /* synthetic */ boolean mo314o() {
        return false;
    }
}
