package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2591e;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2590d;
import p034j$.util.function.InterfaceC2592f;
/* renamed from: j$.util.stream.C2 */
/* loaded from: classes2.dex */
class C2644C2 implements InterfaceC2738S2, InterfaceC2834j3 {

    /* renamed from: a */
    private double f705a;

    /* renamed from: b */
    final /* synthetic */ double f706b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2590d f707c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2644C2(double d, InterfaceC2590d interfaceC2590d) {
        this.f706b = d;
        this.f707c = interfaceC2590d;
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    public void accept(double d) {
        this.f705a = this.f707c.applyAsDouble(this.f705a, d);
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    public /* synthetic */ void accept(int i) {
        AbstractC2862o1.m370d(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2852m3, p034j$.util.stream.InterfaceC2846l3, p034j$.util.function.InterfaceC2603q
    public /* synthetic */ void accept(long j) {
        AbstractC2862o1.m369e(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Double d) {
        AbstractC2862o1.m373a(this, d);
    }

    @Override // p034j$.util.function.InterfaceC2611y
    public Object get() {
        return Double.valueOf(this.f705a);
    }

    @Override // p034j$.util.stream.InterfaceC2738S2
    /* renamed from: h */
    public void mo494h(InterfaceC2738S2 interfaceC2738S2) {
        accept(((C2644C2) interfaceC2738S2).f705a);
    }

    @Override // p034j$.util.function.InterfaceC2592f
    /* renamed from: j */
    public InterfaceC2592f mo101j(InterfaceC2592f interfaceC2592f) {
        Objects.requireNonNull(interfaceC2592f);
        return new C2591e(this, interfaceC2592f);
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: m */
    public /* synthetic */ void mo335m() {
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: n */
    public void mo311n(long j) {
        this.f705a = this.f706b;
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: o */
    public /* synthetic */ boolean mo310o() {
        return false;
    }
}
