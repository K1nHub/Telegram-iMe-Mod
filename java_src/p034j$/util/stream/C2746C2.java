package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2693e;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2692d;
import p034j$.util.function.InterfaceC2694f;
/* renamed from: j$.util.stream.C2 */
/* loaded from: classes2.dex */
class C2746C2 implements InterfaceC2840S2, InterfaceC2936j3 {

    /* renamed from: a */
    private double f708a;

    /* renamed from: b */
    final /* synthetic */ double f709b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2692d f710c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2746C2(double d, InterfaceC2692d interfaceC2692d) {
        this.f709b = d;
        this.f710c = interfaceC2692d;
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    public void accept(double d) {
        this.f708a = this.f710c.applyAsDouble(this.f708a, d);
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

    @Override // p034j$.util.function.InterfaceC2713y
    public Object get() {
        return Double.valueOf(this.f708a);
    }

    @Override // p034j$.util.stream.InterfaceC2840S2
    /* renamed from: h */
    public void mo480h(InterfaceC2840S2 interfaceC2840S2) {
        accept(((C2746C2) interfaceC2840S2).f708a);
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
        this.f708a = this.f709b;
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    /* renamed from: o */
    public /* synthetic */ boolean mo296o() {
        return false;
    }
}
