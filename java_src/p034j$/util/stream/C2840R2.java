package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2723k;
import p034j$.util.function.C2709p;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2708o;
import p034j$.util.function.InterfaceC2710q;
/* renamed from: j$.util.stream.R2 */
/* loaded from: classes2.dex */
class C2840R2 implements InterfaceC2845S2, InterfaceC2953l3 {

    /* renamed from: a */
    private boolean f830a;

    /* renamed from: b */
    private long f831b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2708o f832c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2840R2(InterfaceC2708o interfaceC2708o) {
        this.f832c = interfaceC2708o;
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
        if (this.f830a) {
            this.f830a = false;
        } else {
            j = this.f832c.applyAsLong(this.f831b, j);
        }
        this.f831b = j;
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
        return this.f830a ? C2723k.m527a() : C2723k.m524d(this.f831b);
    }

    @Override // p034j$.util.stream.InterfaceC2845S2
    /* renamed from: h */
    public void mo480h(InterfaceC2845S2 interfaceC2845S2) {
        C2840R2 c2840r2 = (C2840R2) interfaceC2845S2;
        if (c2840r2.f830a) {
            return;
        }
        accept(c2840r2.f831b);
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: m */
    public /* synthetic */ void mo321m() {
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: n */
    public void mo297n(long j) {
        this.f830a = true;
        this.f831b = 0L;
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: o */
    public /* synthetic */ boolean mo296o() {
        return false;
    }
}
