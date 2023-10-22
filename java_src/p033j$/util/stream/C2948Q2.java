package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2825o;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2824n;
import p033j$.util.function.InterfaceC2826p;
/* renamed from: j$.util.stream.Q2 */
/* loaded from: classes2.dex */
class C2948Q2 implements InterfaceC2958S2, InterfaceC3066l3 {

    /* renamed from: a */
    private long f958a;

    /* renamed from: b */
    final /* synthetic */ long f959b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2824n f960c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2948Q2(long j, InterfaceC2824n interfaceC2824n) {
        this.f959b = j;
        this.f960c = interfaceC2824n;
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    public /* synthetic */ void accept(double d) {
        AbstractC3082o1.m417f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    public /* synthetic */ void accept(int i) {
        AbstractC3082o1.m419d(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3072m3, p033j$.util.stream.InterfaceC3066l3, p033j$.util.function.InterfaceC2826p
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
        AbstractC3082o1.m420c(this, l);
    }

    @Override // p033j$.util.function.InterfaceC2826p
    /* renamed from: f */
    public InterfaceC2826p mo212f(InterfaceC2826p interfaceC2826p) {
        Objects.requireNonNull(interfaceC2826p);
        return new C2825o(this, interfaceC2826p);
    }

    @Override // p033j$.util.function.InterfaceC2834x
    public Object get() {
        return Long.valueOf(this.f958a);
    }

    @Override // p033j$.util.stream.InterfaceC2958S2
    /* renamed from: h */
    public void mo543h(InterfaceC2958S2 interfaceC2958S2) {
        accept(((C2948Q2) interfaceC2958S2).f958a);
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: l */
    public /* synthetic */ void mo384l() {
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: m */
    public void mo360m(long j) {
        this.f958a = this.f959b;
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: o */
    public /* synthetic */ boolean mo359o() {
        return false;
    }
}
