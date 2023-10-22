package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.C2835g;
import p033j$.util.function.C2815e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2814d;
import p033j$.util.function.InterfaceC2816f;
/* renamed from: j$.util.stream.E2 */
/* loaded from: classes2.dex */
class C2876E2 implements InterfaceC2958S2, InterfaceC3054j3 {

    /* renamed from: a */
    private boolean f862a;

    /* renamed from: b */
    private double f863b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2814d f864c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2876E2(InterfaceC2814d interfaceC2814d) {
        this.f864c = interfaceC2814d;
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    public void accept(double d) {
        if (this.f862a) {
            this.f862a = false;
        } else {
            d = this.f864c.applyAsDouble(this.f863b, d);
        }
        this.f863b = d;
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    public /* synthetic */ void accept(int i) {
        AbstractC3082o1.m419d(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3072m3, p033j$.util.stream.InterfaceC3066l3, p033j$.util.function.InterfaceC2826p
    public /* synthetic */ void accept(long j) {
        AbstractC3082o1.m418e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Double d) {
        AbstractC3082o1.m422a(this, d);
    }

    @Override // p033j$.util.function.InterfaceC2834x
    public Object get() {
        return this.f862a ? C2835g.m616a() : C2835g.m613d(this.f863b);
    }

    @Override // p033j$.util.stream.InterfaceC2958S2
    /* renamed from: h */
    public void mo543h(InterfaceC2958S2 interfaceC2958S2) {
        C2876E2 c2876e2 = (C2876E2) interfaceC2958S2;
        if (c2876e2.f862a) {
            return;
        }
        accept(c2876e2.f863b);
    }

    @Override // p033j$.util.function.InterfaceC2816f
    /* renamed from: j */
    public InterfaceC2816f mo156j(InterfaceC2816f interfaceC2816f) {
        Objects.requireNonNull(interfaceC2816f);
        return new C2815e(this, interfaceC2816f);
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: l */
    public /* synthetic */ void mo384l() {
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: m */
    public void mo360m(long j) {
        this.f862a = true;
        this.f863b = 0.0d;
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: o */
    public /* synthetic */ boolean mo359o() {
        return false;
    }
}
