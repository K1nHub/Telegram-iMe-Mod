package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2709p;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2708o;
import p034j$.util.function.InterfaceC2710q;
/* renamed from: j$.util.stream.Q2 */
/* loaded from: classes2.dex */
class C2835Q2 implements InterfaceC2845S2, InterfaceC2953l3 {

    /* renamed from: a */
    private long f823a;

    /* renamed from: b */
    final /* synthetic */ long f824b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2708o f825c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2835Q2(long j, InterfaceC2708o interfaceC2708o) {
        this.f824b = j;
        this.f825c = interfaceC2708o;
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    public /* synthetic */ void accept(double d) {
        AbstractC2969o1.m354f(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    public /* synthetic */ void accept(int i) {
        AbstractC2969o1.m356d(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2959m3, p034j$.util.stream.InterfaceC2953l3, p034j$.util.function.InterfaceC2710q
    public void accept(long j) {
        this.f823a = this.f825c.applyAsLong(this.f823a, j);
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Long l) {
        AbstractC2969o1.m357c(this, l);
    }

    @Override // p034j$.util.function.InterfaceC2710q
    /* renamed from: f */
    public InterfaceC2710q mo140f(InterfaceC2710q interfaceC2710q) {
        Objects.requireNonNull(interfaceC2710q);
        return new C2709p(this, interfaceC2710q);
    }

    @Override // p034j$.util.function.InterfaceC2718y
    public Object get() {
        return Long.valueOf(this.f823a);
    }

    @Override // p034j$.util.stream.InterfaceC2845S2
    /* renamed from: h */
    public void mo480h(InterfaceC2845S2 interfaceC2845S2) {
        accept(((C2835Q2) interfaceC2845S2).f823a);
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: m */
    public /* synthetic */ void mo321m() {
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: n */
    public void mo297n(long j) {
        this.f823a = this.f824b;
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: o */
    public /* synthetic */ boolean mo296o() {
        return false;
    }
}
