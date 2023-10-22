package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2815e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2814d;
import p033j$.util.function.InterfaceC2816f;
/* renamed from: j$.util.stream.C2 */
/* loaded from: classes2.dex */
class C2864C2 implements InterfaceC2958S2, InterfaceC3054j3 {

    /* renamed from: a */
    private double f843a;

    /* renamed from: b */
    final /* synthetic */ double f844b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2814d f845c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2864C2(double d, InterfaceC2814d interfaceC2814d) {
        this.f844b = d;
        this.f845c = interfaceC2814d;
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    public void accept(double d) {
        this.f843a = this.f845c.applyAsDouble(this.f843a, d);
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
        return Double.valueOf(this.f843a);
    }

    @Override // p033j$.util.stream.InterfaceC2958S2
    /* renamed from: h */
    public void mo543h(InterfaceC2958S2 interfaceC2958S2) {
        accept(((C2864C2) interfaceC2958S2).f843a);
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
        this.f843a = this.f844b;
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: o */
    public /* synthetic */ boolean mo359o() {
        return false;
    }
}
