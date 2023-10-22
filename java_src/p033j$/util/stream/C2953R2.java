package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.C2837i;
import p033j$.util.function.C2825o;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2824n;
import p033j$.util.function.InterfaceC2826p;
/* renamed from: j$.util.stream.R2 */
/* loaded from: classes2.dex */
class C2953R2 implements InterfaceC2958S2, InterfaceC3066l3 {

    /* renamed from: a */
    private boolean f965a;

    /* renamed from: b */
    private long f966b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2824n f967c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2953R2(InterfaceC2824n interfaceC2824n) {
        this.f967c = interfaceC2824n;
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
        return this.f965a ? C2837i.m608a() : C2837i.m605d(this.f966b);
    }

    @Override // p033j$.util.stream.InterfaceC2958S2
    /* renamed from: h */
    public void mo543h(InterfaceC2958S2 interfaceC2958S2) {
        C2953R2 c2953r2 = (C2953R2) interfaceC2958S2;
        if (c2953r2.f965a) {
            return;
        }
        accept(c2953r2.f966b);
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: l */
    public /* synthetic */ void mo384l() {
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: m */
    public void mo360m(long j) {
        this.f965a = true;
        this.f966b = 0L;
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: o */
    public /* synthetic */ boolean mo359o() {
        return false;
    }
}
