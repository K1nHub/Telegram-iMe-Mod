package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2826o;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2825n;
import p033j$.util.function.InterfaceC2827p;
/* renamed from: j$.util.stream.Q2 */
/* loaded from: classes2.dex */
class C2949Q2 implements InterfaceC2959S2, InterfaceC3067l3 {

    /* renamed from: a */
    private long f958a;

    /* renamed from: b */
    final /* synthetic */ long f959b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2825n f960c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2949Q2(long j, InterfaceC2825n interfaceC2825n) {
        this.f959b = j;
        this.f960c = interfaceC2825n;
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    public /* synthetic */ void accept(double d) {
        AbstractC3083o1.m418f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    public /* synthetic */ void accept(int i) {
        AbstractC3083o1.m420d(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3073m3, p033j$.util.stream.InterfaceC3067l3, p033j$.util.function.InterfaceC2827p
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
        AbstractC3083o1.m421c(this, l);
    }

    @Override // p033j$.util.function.InterfaceC2827p
    /* renamed from: f */
    public InterfaceC2827p mo213f(InterfaceC2827p interfaceC2827p) {
        Objects.requireNonNull(interfaceC2827p);
        return new C2826o(this, interfaceC2827p);
    }

    @Override // p033j$.util.function.InterfaceC2835x
    public Object get() {
        return Long.valueOf(this.f958a);
    }

    @Override // p033j$.util.stream.InterfaceC2959S2
    /* renamed from: h */
    public void mo544h(InterfaceC2959S2 interfaceC2959S2) {
        accept(((C2949Q2) interfaceC2959S2).f958a);
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: l */
    public /* synthetic */ void mo385l() {
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: m */
    public void mo361m(long j) {
        this.f958a = this.f959b;
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: o */
    public /* synthetic */ boolean mo360o() {
        return false;
    }
}
