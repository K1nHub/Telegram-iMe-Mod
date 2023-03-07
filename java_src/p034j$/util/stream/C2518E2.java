package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2476i;
import p034j$.util.function.C2453e;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2452d;
import p034j$.util.function.InterfaceC2454f;
/* renamed from: j$.util.stream.E2 */
/* loaded from: classes2.dex */
class C2518E2 implements InterfaceC2600S2, InterfaceC2696j3 {

    /* renamed from: a */
    private boolean f718a;

    /* renamed from: b */
    private double f719b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2452d f720c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2518E2(InterfaceC2452d interfaceC2452d) {
        this.f720c = interfaceC2452d;
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    public void accept(double d) {
        if (this.f718a) {
            this.f718a = false;
        } else {
            d = this.f720c.applyAsDouble(this.f719b, d);
        }
        this.f719b = d;
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
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Double d) {
        AbstractC2724o1.m374a(this, d);
    }

    @Override // p034j$.util.function.InterfaceC2473y
    public Object get() {
        return this.f718a ? C2476i.m550a() : C2476i.m547d(this.f719b);
    }

    @Override // p034j$.util.stream.InterfaceC2600S2
    /* renamed from: h */
    public void mo495h(InterfaceC2600S2 interfaceC2600S2) {
        C2518E2 c2518e2 = (C2518E2) interfaceC2600S2;
        if (c2518e2.f718a) {
            return;
        }
        accept(c2518e2.f719b);
    }

    @Override // p034j$.util.function.InterfaceC2454f
    /* renamed from: j */
    public InterfaceC2454f mo102j(InterfaceC2454f interfaceC2454f) {
        Objects.requireNonNull(interfaceC2454f);
        return new C2453e(this, interfaceC2454f);
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: m */
    public /* synthetic */ void mo336m() {
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: n */
    public void mo312n(long j) {
        this.f718a = true;
        this.f719b = 0.0d;
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: o */
    public /* synthetic */ boolean mo311o() {
        return false;
    }
}
