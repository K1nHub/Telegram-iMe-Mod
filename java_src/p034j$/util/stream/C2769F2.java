package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2698e;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2695b;
import p034j$.util.function.InterfaceC2699f;
import p034j$.util.function.InterfaceC2714u;
import p034j$.util.function.InterfaceC2718y;
/* renamed from: j$.util.stream.F2 */
/* loaded from: classes2.dex */
class C2769F2 extends AbstractC2850T2 implements InterfaceC2845S2, InterfaceC2941j3 {

    /* renamed from: b */
    final /* synthetic */ InterfaceC2718y f737b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2714u f738c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC2695b f739d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2769F2(InterfaceC2718y interfaceC2718y, InterfaceC2714u interfaceC2714u, InterfaceC2695b interfaceC2695b) {
        this.f737b = interfaceC2718y;
        this.f738c = interfaceC2714u;
        this.f739d = interfaceC2695b;
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    public void accept(double d) {
        this.f738c.accept(this.f845a, d);
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    public /* synthetic */ void accept(int i) {
        AbstractC2969o1.m356d(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2959m3, p034j$.util.stream.InterfaceC2953l3, p034j$.util.function.InterfaceC2710q
    public /* synthetic */ void accept(long j) {
        AbstractC2969o1.m355e(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Double d) {
        AbstractC2969o1.m359a(this, d);
    }

    @Override // p034j$.util.stream.InterfaceC2845S2
    /* renamed from: h */
    public void mo480h(InterfaceC2845S2 interfaceC2845S2) {
        this.f845a = this.f739d.apply(this.f845a, ((C2769F2) interfaceC2845S2).f845a);
    }

    @Override // p034j$.util.function.InterfaceC2699f
    /* renamed from: j */
    public InterfaceC2699f mo87j(InterfaceC2699f interfaceC2699f) {
        Objects.requireNonNull(interfaceC2699f);
        return new C2698e(this, interfaceC2699f);
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: m */
    public /* synthetic */ void mo321m() {
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: n */
    public void mo297n(long j) {
        this.f845a = this.f737b.get();
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: o */
    public /* synthetic */ boolean mo296o() {
        return false;
    }
}
