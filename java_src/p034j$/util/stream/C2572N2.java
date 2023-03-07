package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2477j;
import p034j$.util.function.C2459k;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2458j;
import p034j$.util.function.InterfaceC2460l;
/* renamed from: j$.util.stream.N2 */
/* loaded from: classes2.dex */
class C2572N2 implements InterfaceC2600S2, InterfaceC2702k3 {

    /* renamed from: a */
    private boolean f796a;

    /* renamed from: b */
    private int f797b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2458j f798c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2572N2(InterfaceC2458j interfaceC2458j) {
        this.f798c = interfaceC2458j;
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    public /* synthetic */ void accept(double d) {
        AbstractC2724o1.m369f(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    public void accept(int i) {
        if (this.f796a) {
            this.f796a = false;
        } else {
            i = this.f798c.applyAsInt(this.f797b, i);
        }
        this.f797b = i;
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
    public /* synthetic */ void accept(Integer num) {
        AbstractC2724o1.m373b(this, num);
    }

    @Override // p034j$.util.function.InterfaceC2473y
    public Object get() {
        return this.f796a ? C2477j.m546a() : C2477j.m543d(this.f797b);
    }

    @Override // p034j$.util.stream.InterfaceC2600S2
    /* renamed from: h */
    public void mo495h(InterfaceC2600S2 interfaceC2600S2) {
        C2572N2 c2572n2 = (C2572N2) interfaceC2600S2;
        if (c2572n2.f796a) {
            return;
        }
        accept(c2572n2.f797b);
    }

    @Override // p034j$.util.function.InterfaceC2460l
    /* renamed from: l */
    public InterfaceC2460l mo180l(InterfaceC2460l interfaceC2460l) {
        Objects.requireNonNull(interfaceC2460l);
        return new C2459k(this, interfaceC2460l);
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: m */
    public /* synthetic */ void mo336m() {
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: n */
    public void mo312n(long j) {
        this.f796a = true;
        this.f797b = 0;
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: o */
    public /* synthetic */ boolean mo311o() {
        return false;
    }
}
