package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2829o;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2816b;
import p033j$.util.function.InterfaceC2830p;
import p033j$.util.function.InterfaceC2836v;
import p033j$.util.function.InterfaceC2838x;
/* renamed from: j$.util.stream.A2 */
/* loaded from: classes2.dex */
class C2856A2 extends AbstractC2967T2 implements InterfaceC2962S2, InterfaceC3070l3 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2838x f820b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2836v f821c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2816b f822d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2856A2(InterfaceC2838x interfaceC2838x, InterfaceC2836v interfaceC2836v, InterfaceC2816b interfaceC2816b) {
        this.f820b = interfaceC2838x;
        this.f821c = interfaceC2836v;
        this.f822d = interfaceC2816b;
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    public /* synthetic */ void accept(double d) {
        AbstractC3086o1.m418f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    public /* synthetic */ void accept(int i) {
        AbstractC3086o1.m420d(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3076m3, p033j$.util.stream.InterfaceC3070l3, p033j$.util.function.InterfaceC2830p
    public void accept(long j) {
        this.f821c.accept(this.f980a, j);
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Long l) {
        AbstractC3086o1.m421c(this, l);
    }

    @Override // p033j$.util.function.InterfaceC2830p
    /* renamed from: f */
    public InterfaceC2830p mo213f(InterfaceC2830p interfaceC2830p) {
        Objects.requireNonNull(interfaceC2830p);
        return new C2829o(this, interfaceC2830p);
    }

    @Override // p033j$.util.stream.InterfaceC2962S2
    /* renamed from: h */
    public void mo544h(InterfaceC2962S2 interfaceC2962S2) {
        this.f980a = this.f822d.apply(this.f980a, ((C2856A2) interfaceC2962S2).f980a);
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: l */
    public /* synthetic */ void mo385l() {
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: m */
    public void mo361m(long j) {
        this.f980a = this.f820b.get();
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: o */
    public /* synthetic */ boolean mo360o() {
        return false;
    }
}
