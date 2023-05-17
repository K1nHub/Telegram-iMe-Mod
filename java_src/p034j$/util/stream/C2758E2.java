package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2716i;
import p034j$.util.function.C2693e;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2692d;
import p034j$.util.function.InterfaceC2694f;
/* renamed from: j$.util.stream.E2 */
/* loaded from: classes2.dex */
class C2758E2 implements InterfaceC2840S2, InterfaceC2936j3 {

    /* renamed from: a */
    private boolean f727a;

    /* renamed from: b */
    private double f728b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2692d f729c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2758E2(InterfaceC2692d interfaceC2692d) {
        this.f729c = interfaceC2692d;
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    public void accept(double d) {
        if (this.f727a) {
            this.f727a = false;
        } else {
            d = this.f729c.applyAsDouble(this.f728b, d);
        }
        this.f728b = d;
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
        return this.f727a ? C2716i.m535a() : C2716i.m532d(this.f728b);
    }

    @Override // p034j$.util.stream.InterfaceC2840S2
    /* renamed from: h */
    public void mo480h(InterfaceC2840S2 interfaceC2840S2) {
        C2758E2 c2758e2 = (C2758E2) interfaceC2840S2;
        if (c2758e2.f727a) {
            return;
        }
        accept(c2758e2.f728b);
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
        this.f727a = true;
        this.f728b = 0.0d;
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    /* renamed from: o */
    public /* synthetic */ boolean mo296o() {
        return false;
    }
}
