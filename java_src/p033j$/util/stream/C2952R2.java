package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.C2836i;
import p033j$.util.function.C2824o;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2823n;
import p033j$.util.function.InterfaceC2825p;
/* renamed from: j$.util.stream.R2 */
/* loaded from: classes2.dex */
class C2952R2 implements InterfaceC2957S2, InterfaceC3065l3 {

    /* renamed from: a */
    private boolean f965a;

    /* renamed from: b */
    private long f966b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2823n f967c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2952R2(InterfaceC2823n interfaceC2823n) {
        this.f967c = interfaceC2823n;
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    public /* synthetic */ void accept(double d) {
        AbstractC3081o1.m421f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    public /* synthetic */ void accept(int i) {
        AbstractC3081o1.m423d(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3071m3, p033j$.util.stream.InterfaceC3065l3, p033j$.util.function.InterfaceC2825p
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
        AbstractC3081o1.m424c(this, l);
    }

    @Override // p033j$.util.function.InterfaceC2825p
    /* renamed from: f */
    public InterfaceC2825p mo216f(InterfaceC2825p interfaceC2825p) {
        Objects.requireNonNull(interfaceC2825p);
        return new C2824o(this, interfaceC2825p);
    }

    @Override // p033j$.util.function.InterfaceC2833x
    public Object get() {
        return this.f965a ? C2836i.m612a() : C2836i.m609d(this.f966b);
    }

    @Override // p033j$.util.stream.InterfaceC2957S2
    /* renamed from: h */
    public void mo547h(InterfaceC2957S2 interfaceC2957S2) {
        C2952R2 c2952r2 = (C2952R2) interfaceC2957S2;
        if (c2952r2.f965a) {
            return;
        }
        accept(c2952r2.f966b);
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: l */
    public /* synthetic */ void mo388l() {
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: m */
    public void mo364m(long j) {
        this.f965a = true;
        this.f966b = 0L;
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: o */
    public /* synthetic */ boolean mo363o() {
        return false;
    }
}
