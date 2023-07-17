package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2830p;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2816b;
import p033j$.util.function.InterfaceC2831q;
import p033j$.util.function.InterfaceC2837w;
import p033j$.util.function.InterfaceC2839y;
/* renamed from: j$.util.stream.A2 */
/* loaded from: classes2.dex */
class C2860A2 extends AbstractC2971T2 implements InterfaceC2966S2, InterfaceC3074l3 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2839y f767b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2837w f768c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2816b f769d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2860A2(InterfaceC2839y interfaceC2839y, InterfaceC2837w interfaceC2837w, InterfaceC2816b interfaceC2816b) {
        this.f767b = interfaceC2839y;
        this.f768c = interfaceC2837w;
        this.f769d = interfaceC2816b;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    public /* synthetic */ void accept(double d) {
        AbstractC3090o1.m354f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    public /* synthetic */ void accept(int i) {
        AbstractC3090o1.m356d(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3, p033j$.util.stream.InterfaceC3074l3, p033j$.util.function.InterfaceC2831q
    public void accept(long j) {
        this.f768c.accept(this.f927a, j);
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Long l) {
        AbstractC3090o1.m357c(this, l);
    }

    @Override // p033j$.util.function.InterfaceC2831q
    /* renamed from: f */
    public InterfaceC2831q mo140f(InterfaceC2831q interfaceC2831q) {
        Objects.requireNonNull(interfaceC2831q);
        return new C2830p(this, interfaceC2831q);
    }

    @Override // p033j$.util.stream.InterfaceC2966S2
    /* renamed from: h */
    public void mo480h(InterfaceC2966S2 interfaceC2966S2) {
        this.f927a = this.f769d.apply(this.f927a, ((C2860A2) interfaceC2966S2).f927a);
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: m */
    public /* synthetic */ void mo321m() {
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo297n(long j) {
        this.f927a = this.f767b.get();
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: o */
    public /* synthetic */ boolean mo296o() {
        return false;
    }
}
