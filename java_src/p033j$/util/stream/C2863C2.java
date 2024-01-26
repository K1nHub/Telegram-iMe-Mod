package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2814e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2813d;
import p033j$.util.function.InterfaceC2815f;
/* renamed from: j$.util.stream.C2 */
/* loaded from: classes2.dex */
class C2863C2 implements InterfaceC2957S2, InterfaceC3053j3 {

    /* renamed from: a */
    private double f843a;

    /* renamed from: b */
    final /* synthetic */ double f844b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2813d f845c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2863C2(double d, InterfaceC2813d interfaceC2813d) {
        this.f844b = d;
        this.f845c = interfaceC2813d;
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    public void accept(double d) {
        this.f843a = this.f845c.applyAsDouble(this.f843a, d);
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    public /* synthetic */ void accept(int i) {
        AbstractC3081o1.m423d(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3071m3, p033j$.util.stream.InterfaceC3065l3, p033j$.util.function.InterfaceC2825p
    public /* synthetic */ void accept(long j) {
        AbstractC3081o1.m422e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Double d) {
        AbstractC3081o1.m426a(this, d);
    }

    @Override // p033j$.util.function.InterfaceC2833x
    public Object get() {
        return Double.valueOf(this.f843a);
    }

    @Override // p033j$.util.stream.InterfaceC2957S2
    /* renamed from: h */
    public void mo547h(InterfaceC2957S2 interfaceC2957S2) {
        accept(((C2863C2) interfaceC2957S2).f843a);
    }

    @Override // p033j$.util.function.InterfaceC2815f
    /* renamed from: j */
    public InterfaceC2815f mo161j(InterfaceC2815f interfaceC2815f) {
        Objects.requireNonNull(interfaceC2815f);
        return new C2814e(this, interfaceC2815f);
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: l */
    public /* synthetic */ void mo388l() {
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: m */
    public void mo364m(long j) {
        this.f843a = this.f844b;
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: o */
    public /* synthetic */ boolean mo363o() {
        return false;
    }
}
