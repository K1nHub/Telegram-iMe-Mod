package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2814e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2811b;
import p033j$.util.function.InterfaceC2815f;
import p033j$.util.function.InterfaceC2829t;
import p033j$.util.function.InterfaceC2833x;
/* renamed from: j$.util.stream.F2 */
/* loaded from: classes2.dex */
class C2881F2 extends AbstractC2962T2 implements InterfaceC2957S2, InterfaceC3053j3 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2833x f872b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2829t f873c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2811b f874d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2881F2(InterfaceC2833x interfaceC2833x, InterfaceC2829t interfaceC2829t, InterfaceC2811b interfaceC2811b) {
        this.f872b = interfaceC2833x;
        this.f873c = interfaceC2829t;
        this.f874d = interfaceC2811b;
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    public void accept(double d) {
        this.f873c.accept(this.f980a, d);
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

    @Override // p033j$.util.stream.InterfaceC2957S2
    /* renamed from: h */
    public void mo547h(InterfaceC2957S2 interfaceC2957S2) {
        this.f980a = this.f874d.apply(this.f980a, ((C2881F2) interfaceC2957S2).f980a);
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
        this.f980a = this.f872b.get();
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: o */
    public /* synthetic */ boolean mo363o() {
        return false;
    }
}
