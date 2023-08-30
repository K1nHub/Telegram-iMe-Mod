package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.C2983k;
import p033j$.util.function.C2969p;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2968o;
import p033j$.util.function.InterfaceC2970q;
/* renamed from: j$.util.stream.R2 */
/* loaded from: classes2.dex */
class C3100R2 implements InterfaceC3105S2, InterfaceC3213l3 {

    /* renamed from: a */
    private boolean f925a;

    /* renamed from: b */
    private long f926b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2968o f927c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3100R2(InterfaceC2968o interfaceC2968o) {
        this.f927c = interfaceC2968o;
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    public /* synthetic */ void accept(double d) {
        AbstractC3229o1.m372f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    public /* synthetic */ void accept(int i) {
        AbstractC3229o1.m374d(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3219m3, p033j$.util.stream.InterfaceC3213l3, p033j$.util.function.InterfaceC2970q
    public void accept(long j) {
        if (this.f925a) {
            this.f925a = false;
        } else {
            j = this.f927c.applyAsLong(this.f926b, j);
        }
        this.f926b = j;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Long l) {
        AbstractC3229o1.m375c(this, l);
    }

    @Override // p033j$.util.function.InterfaceC2970q
    /* renamed from: f */
    public InterfaceC2970q mo158f(InterfaceC2970q interfaceC2970q) {
        Objects.requireNonNull(interfaceC2970q);
        return new C2969p(this, interfaceC2970q);
    }

    @Override // p033j$.util.function.InterfaceC2978y
    public Object get() {
        return this.f925a ? C2983k.m545a() : C2983k.m542d(this.f926b);
    }

    @Override // p033j$.util.stream.InterfaceC3105S2
    /* renamed from: h */
    public void mo498h(InterfaceC3105S2 interfaceC3105S2) {
        C3100R2 c3100r2 = (C3100R2) interfaceC3105S2;
        if (c3100r2.f925a) {
            return;
        }
        accept(c3100r2.f926b);
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: m */
    public /* synthetic */ void mo339m() {
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: n */
    public void mo315n(long j) {
        this.f925a = true;
        this.f926b = 0L;
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: o */
    public /* synthetic */ boolean mo314o() {
        return false;
    }
}
