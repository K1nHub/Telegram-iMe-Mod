package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2816e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2813b;
import p033j$.util.function.InterfaceC2817f;
import p033j$.util.function.InterfaceC2831t;
import p033j$.util.function.InterfaceC2835x;
/* renamed from: j$.util.stream.F2 */
/* loaded from: classes2.dex */
class C2883F2 extends AbstractC2964T2 implements InterfaceC2959S2, InterfaceC3055j3 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2835x f872b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2831t f873c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2813b f874d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2883F2(InterfaceC2835x interfaceC2835x, InterfaceC2831t interfaceC2831t, InterfaceC2813b interfaceC2813b) {
        this.f872b = interfaceC2835x;
        this.f873c = interfaceC2831t;
        this.f874d = interfaceC2813b;
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    public void accept(double d) {
        this.f873c.accept(this.f980a, d);
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

    @Override // p033j$.util.stream.InterfaceC2959S2
    /* renamed from: h */
    public void mo544h(InterfaceC2959S2 interfaceC2959S2) {
        this.f980a = this.f874d.apply(this.f980a, ((C2883F2) interfaceC2959S2).f980a);
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
        this.f980a = this.f872b.get();
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: o */
    public /* synthetic */ boolean mo360o() {
        return false;
    }
}
