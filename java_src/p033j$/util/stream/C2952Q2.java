package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2829o;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2828n;
import p033j$.util.function.InterfaceC2830p;
/* renamed from: j$.util.stream.Q2 */
/* loaded from: classes2.dex */
class C2952Q2 implements InterfaceC2962S2, InterfaceC3070l3 {

    /* renamed from: a */
    private long f958a;

    /* renamed from: b */
    final /* synthetic */ long f959b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2828n f960c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2952Q2(long j, InterfaceC2828n interfaceC2828n) {
        this.f959b = j;
        this.f960c = interfaceC2828n;
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
        this.f958a = this.f960c.applyAsLong(this.f958a, j);
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

    @Override // p033j$.util.function.InterfaceC2838x
    public Object get() {
        return Long.valueOf(this.f958a);
    }

    @Override // p033j$.util.stream.InterfaceC2962S2
    /* renamed from: h */
    public void mo544h(InterfaceC2962S2 interfaceC2962S2) {
        accept(((C2952Q2) interfaceC2962S2).f958a);
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: l */
    public /* synthetic */ void mo385l() {
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: m */
    public void mo361m(long j) {
        this.f958a = this.f959b;
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: o */
    public /* synthetic */ boolean mo360o() {
        return false;
    }
}
