package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2815e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2812b;
import p033j$.util.function.InterfaceC2816f;
import p033j$.util.function.InterfaceC2830t;
import p033j$.util.function.InterfaceC2834x;
/* renamed from: j$.util.stream.F2 */
/* loaded from: classes2.dex */
class C2882F2 extends AbstractC2963T2 implements InterfaceC2958S2, InterfaceC3054j3 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2834x f872b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2830t f873c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2812b f874d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2882F2(InterfaceC2834x interfaceC2834x, InterfaceC2830t interfaceC2830t, InterfaceC2812b interfaceC2812b) {
        this.f872b = interfaceC2834x;
        this.f873c = interfaceC2830t;
        this.f874d = interfaceC2812b;
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    public void accept(double d) {
        this.f873c.accept(this.f980a, d);
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

    @Override // p033j$.util.stream.InterfaceC2958S2
    /* renamed from: h */
    public void mo543h(InterfaceC2958S2 interfaceC2958S2) {
        this.f980a = this.f874d.apply(this.f980a, ((C2882F2) interfaceC2958S2).f980a);
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
        this.f980a = this.f872b.get();
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: o */
    public /* synthetic */ boolean mo359o() {
        return false;
    }
}
