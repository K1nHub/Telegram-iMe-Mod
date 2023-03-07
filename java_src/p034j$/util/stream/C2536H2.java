package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.Optional;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2450b;
/* renamed from: j$.util.stream.H2 */
/* loaded from: classes2.dex */
class C2536H2 implements InterfaceC2600S2 {

    /* renamed from: a */
    private boolean f744a;

    /* renamed from: b */
    private Object f745b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2450b f746c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2536H2(InterfaceC2450b interfaceC2450b) {
        this.f746c = interfaceC2450b;
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
    public /* synthetic */ void accept(long j) {
        AbstractC2724o1.m370e(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        if (this.f744a) {
            this.f744a = false;
        } else {
            obj = this.f746c.apply(this.f745b, obj);
        }
        this.f745b = obj;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.function.InterfaceC2473y
    public Object get() {
        return this.f744a ? Optional.empty() : Optional.m627of(this.f745b);
    }

    @Override // p034j$.util.stream.InterfaceC2600S2
    /* renamed from: h */
    public void mo495h(InterfaceC2600S2 interfaceC2600S2) {
        C2536H2 c2536h2 = (C2536H2) interfaceC2600S2;
        if (c2536h2.f744a) {
            return;
        }
        accept(c2536h2.f745b);
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: m */
    public /* synthetic */ void mo336m() {
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: n */
    public void mo312n(long j) {
        this.f744a = true;
        this.f745b = null;
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: o */
    public /* synthetic */ boolean mo311o() {
        return false;
    }
}
