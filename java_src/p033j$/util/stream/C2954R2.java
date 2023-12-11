package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.C2838i;
import p033j$.util.function.C2826o;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2825n;
import p033j$.util.function.InterfaceC2827p;
/* renamed from: j$.util.stream.R2 */
/* loaded from: classes2.dex */
class C2954R2 implements InterfaceC2959S2, InterfaceC3067l3 {

    /* renamed from: a */
    private boolean f965a;

    /* renamed from: b */
    private long f966b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2825n f967c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2954R2(InterfaceC2825n interfaceC2825n) {
        this.f967c = interfaceC2825n;
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
        if (this.f965a) {
            this.f965a = false;
        } else {
            j = this.f967c.applyAsLong(this.f966b, j);
        }
        this.f966b = j;
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
        return this.f965a ? C2838i.m609a() : C2838i.m606d(this.f966b);
    }

    @Override // p033j$.util.stream.InterfaceC2959S2
    /* renamed from: h */
    public void mo544h(InterfaceC2959S2 interfaceC2959S2) {
        C2954R2 c2954r2 = (C2954R2) interfaceC2959S2;
        if (c2954r2.f965a) {
            return;
        }
        accept(c2954r2.f966b);
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: l */
    public /* synthetic */ void mo385l() {
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: m */
    public void mo361m(long j) {
        this.f965a = true;
        this.f966b = 0L;
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: o */
    public /* synthetic */ boolean mo360o() {
        return false;
    }
}
