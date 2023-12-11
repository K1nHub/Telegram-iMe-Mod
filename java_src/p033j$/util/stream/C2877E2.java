package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.C2836g;
import p033j$.util.function.C2816e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2815d;
import p033j$.util.function.InterfaceC2817f;
/* renamed from: j$.util.stream.E2 */
/* loaded from: classes2.dex */
class C2877E2 implements InterfaceC2959S2, InterfaceC3055j3 {

    /* renamed from: a */
    private boolean f862a;

    /* renamed from: b */
    private double f863b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2815d f864c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2877E2(InterfaceC2815d interfaceC2815d) {
        this.f864c = interfaceC2815d;
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    public void accept(double d) {
        if (this.f862a) {
            this.f862a = false;
        } else {
            d = this.f864c.applyAsDouble(this.f863b, d);
        }
        this.f863b = d;
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    public /* synthetic */ void accept(int i) {
        AbstractC3083o1.m420d(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3073m3, p033j$.util.stream.InterfaceC3067l3, p033j$.util.function.InterfaceC2827p
    public /* synthetic */ void accept(long j) {
        AbstractC3083o1.m419e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Double d) {
        AbstractC3083o1.m423a(this, d);
    }

    @Override // p033j$.util.function.InterfaceC2835x
    public Object get() {
        return this.f862a ? C2836g.m617a() : C2836g.m614d(this.f863b);
    }

    @Override // p033j$.util.stream.InterfaceC2959S2
    /* renamed from: h */
    public void mo544h(InterfaceC2959S2 interfaceC2959S2) {
        C2877E2 c2877e2 = (C2877E2) interfaceC2959S2;
        if (c2877e2.f862a) {
            return;
        }
        accept(c2877e2.f863b);
    }

    @Override // p033j$.util.function.InterfaceC2817f
    /* renamed from: j */
    public InterfaceC2817f mo158j(InterfaceC2817f interfaceC2817f) {
        Objects.requireNonNull(interfaceC2817f);
        return new C2816e(this, interfaceC2817f);
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: l */
    public /* synthetic */ void mo385l() {
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: m */
    public void mo361m(long j) {
        this.f862a = true;
        this.f863b = 0.0d;
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: o */
    public /* synthetic */ boolean mo360o() {
        return false;
    }
}
