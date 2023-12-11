package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2816e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2815d;
import p033j$.util.function.InterfaceC2817f;
/* renamed from: j$.util.stream.C2 */
/* loaded from: classes2.dex */
class C2865C2 implements InterfaceC2959S2, InterfaceC3055j3 {

    /* renamed from: a */
    private double f843a;

    /* renamed from: b */
    final /* synthetic */ double f844b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2815d f845c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2865C2(double d, InterfaceC2815d interfaceC2815d) {
        this.f844b = d;
        this.f845c = interfaceC2815d;
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    public void accept(double d) {
        this.f843a = this.f845c.applyAsDouble(this.f843a, d);
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
        return Double.valueOf(this.f843a);
    }

    @Override // p033j$.util.stream.InterfaceC2959S2
    /* renamed from: h */
    public void mo544h(InterfaceC2959S2 interfaceC2959S2) {
        accept(((C2865C2) interfaceC2959S2).f843a);
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
        this.f843a = this.f844b;
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: o */
    public /* synthetic */ boolean mo360o() {
        return false;
    }
}
