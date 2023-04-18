package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2677i;
import p034j$.util.function.C2654e;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2653d;
import p034j$.util.function.InterfaceC2655f;
/* renamed from: j$.util.stream.E2 */
/* loaded from: classes2.dex */
class C2719E2 implements InterfaceC2801S2, InterfaceC2897j3 {

    /* renamed from: a */
    private boolean f724a;

    /* renamed from: b */
    private double f725b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2653d f726c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2719E2(InterfaceC2653d interfaceC2653d) {
        this.f726c = interfaceC2653d;
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    public void accept(double d) {
        if (this.f724a) {
            this.f724a = false;
        } else {
            d = this.f726c.applyAsDouble(this.f725b, d);
        }
        this.f725b = d;
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    public /* synthetic */ void accept(int i) {
        AbstractC2925o1.m351d(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2915m3, p034j$.util.stream.InterfaceC2909l3, p034j$.util.function.InterfaceC2666q
    public /* synthetic */ void accept(long j) {
        AbstractC2925o1.m350e(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Double d) {
        AbstractC2925o1.m354a(this, d);
    }

    @Override // p034j$.util.function.InterfaceC2674y
    public Object get() {
        return this.f724a ? C2677i.m530a() : C2677i.m527d(this.f725b);
    }

    @Override // p034j$.util.stream.InterfaceC2801S2
    /* renamed from: h */
    public void mo475h(InterfaceC2801S2 interfaceC2801S2) {
        C2719E2 c2719e2 = (C2719E2) interfaceC2801S2;
        if (c2719e2.f724a) {
            return;
        }
        accept(c2719e2.f725b);
    }

    @Override // p034j$.util.function.InterfaceC2655f
    /* renamed from: j */
    public InterfaceC2655f mo82j(InterfaceC2655f interfaceC2655f) {
        Objects.requireNonNull(interfaceC2655f);
        return new C2654e(this, interfaceC2655f);
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: m */
    public /* synthetic */ void mo316m() {
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: n */
    public void mo292n(long j) {
        this.f724a = true;
        this.f725b = 0.0d;
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: o */
    public /* synthetic */ boolean mo291o() {
        return false;
    }
}
