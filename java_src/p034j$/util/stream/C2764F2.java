package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2693e;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2690b;
import p034j$.util.function.InterfaceC2694f;
import p034j$.util.function.InterfaceC2709u;
import p034j$.util.function.InterfaceC2713y;
/* renamed from: j$.util.stream.F2 */
/* loaded from: classes2.dex */
class C2764F2 extends AbstractC2845T2 implements InterfaceC2840S2, InterfaceC2936j3 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2713y f737b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2709u f738c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2690b f739d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2764F2(InterfaceC2713y interfaceC2713y, InterfaceC2709u interfaceC2709u, InterfaceC2690b interfaceC2690b) {
        this.f737b = interfaceC2713y;
        this.f738c = interfaceC2709u;
        this.f739d = interfaceC2690b;
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    public void accept(double d) {
        this.f738c.accept(this.f845a, d);
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    public /* synthetic */ void accept(int i) {
        AbstractC2964o1.m356d(this);
        throw null;
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
    public /* synthetic */ void accept(Double d) {
        AbstractC2964o1.m359a(this, d);
    }

    @Override // p034j$.util.stream.InterfaceC2840S2
    /* renamed from: h */
    public void mo480h(InterfaceC2840S2 interfaceC2840S2) {
        this.f845a = this.f739d.apply(this.f845a, ((C2764F2) interfaceC2840S2).f845a);
    }

    @Override // p034j$.util.function.InterfaceC2694f
    /* renamed from: j */
    public InterfaceC2694f mo87j(InterfaceC2694f interfaceC2694f) {
        Objects.requireNonNull(interfaceC2694f);
        return new C2693e(this, interfaceC2694f);
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    /* renamed from: m */
    public /* synthetic */ void mo321m() {
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    /* renamed from: n */
    public void mo297n(long j) {
        this.f845a = this.f737b.get();
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    /* renamed from: o */
    public /* synthetic */ boolean mo296o() {
        return false;
    }
}
