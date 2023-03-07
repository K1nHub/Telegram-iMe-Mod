package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2478k;
import p034j$.util.function.C2464p;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2463o;
import p034j$.util.function.InterfaceC2465q;
/* renamed from: j$.util.stream.R2 */
/* loaded from: classes2.dex */
class C2595R2 implements InterfaceC2600S2, InterfaceC2708l3 {

    /* renamed from: a */
    private boolean f821a;

    /* renamed from: b */
    private long f822b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2463o f823c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2595R2(InterfaceC2463o interfaceC2463o) {
        this.f823c = interfaceC2463o;
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    public /* synthetic */ void accept(double d) {
        AbstractC2724o1.m369f(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    public /* synthetic */ void accept(int i) {
        AbstractC2724o1.m371d(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2714m3, p034j$.util.stream.InterfaceC2708l3, p034j$.util.function.InterfaceC2465q
    public void accept(long j) {
        if (this.f821a) {
            this.f821a = false;
        } else {
            j = this.f823c.applyAsLong(this.f822b, j);
        }
        this.f822b = j;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Long l) {
        AbstractC2724o1.m372c(this, l);
    }

    @Override // p034j$.util.function.InterfaceC2465q
    /* renamed from: f */
    public InterfaceC2465q mo155f(InterfaceC2465q interfaceC2465q) {
        Objects.requireNonNull(interfaceC2465q);
        return new C2464p(this, interfaceC2465q);
    }

    @Override // p034j$.util.function.InterfaceC2473y
    public Object get() {
        return this.f821a ? C2478k.m542a() : C2478k.m539d(this.f822b);
    }

    @Override // p034j$.util.stream.InterfaceC2600S2
    /* renamed from: h */
    public void mo495h(InterfaceC2600S2 interfaceC2600S2) {
        C2595R2 c2595r2 = (C2595R2) interfaceC2600S2;
        if (c2595r2.f821a) {
            return;
        }
        accept(c2595r2.f822b);
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: m */
    public /* synthetic */ void mo336m() {
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: n */
    public void mo312n(long j) {
        this.f821a = true;
        this.f822b = 0L;
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: o */
    public /* synthetic */ boolean mo311o() {
        return false;
    }
}
