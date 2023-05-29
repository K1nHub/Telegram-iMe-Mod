package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2698e;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2697d;
import p034j$.util.function.InterfaceC2699f;
/* renamed from: j$.util.stream.C2 */
/* loaded from: classes2.dex */
class C2751C2 implements InterfaceC2845S2, InterfaceC2941j3 {

    /* renamed from: a */
    private double f708a;

    /* renamed from: b */
    final /* synthetic */ double f709b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2697d f710c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2751C2(double d, InterfaceC2697d interfaceC2697d) {
        this.f709b = d;
        this.f710c = interfaceC2697d;
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    public void accept(double d) {
        this.f708a = this.f710c.applyAsDouble(this.f708a, d);
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

    @Override // p034j$.util.function.InterfaceC2718y
    public Object get() {
        return Double.valueOf(this.f708a);
    }

    @Override // p034j$.util.stream.InterfaceC2845S2
    /* renamed from: h */
    public void mo480h(InterfaceC2845S2 interfaceC2845S2) {
        accept(((C2751C2) interfaceC2845S2).f708a);
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
        this.f708a = this.f709b;
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: o */
    public /* synthetic */ boolean mo296o() {
        return false;
    }
}
