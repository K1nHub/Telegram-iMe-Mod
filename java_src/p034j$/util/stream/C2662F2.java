package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2591e;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2588b;
import p034j$.util.function.InterfaceC2592f;
import p034j$.util.function.InterfaceC2607u;
import p034j$.util.function.InterfaceC2611y;
/* renamed from: j$.util.stream.F2 */
/* loaded from: classes2.dex */
class C2662F2 extends AbstractC2743T2 implements InterfaceC2738S2, InterfaceC2834j3 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2611y f734b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2607u f735c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2588b f736d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2662F2(InterfaceC2611y interfaceC2611y, InterfaceC2607u interfaceC2607u, InterfaceC2588b interfaceC2588b) {
        this.f734b = interfaceC2611y;
        this.f735c = interfaceC2607u;
        this.f736d = interfaceC2588b;
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    public void accept(double d) {
        this.f735c.accept(this.f842a, d);
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

    @Override // p034j$.util.stream.InterfaceC2738S2
    /* renamed from: h */
    public void mo494h(InterfaceC2738S2 interfaceC2738S2) {
        this.f842a = this.f736d.apply(this.f842a, ((C2662F2) interfaceC2738S2).f842a);
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
        this.f842a = this.f734b.get();
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: o */
    public /* synthetic */ boolean mo310o() {
        return false;
    }
}
