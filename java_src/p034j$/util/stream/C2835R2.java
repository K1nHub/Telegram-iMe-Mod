package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2718k;
import p034j$.util.function.C2704p;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2703o;
import p034j$.util.function.InterfaceC2705q;
/* renamed from: j$.util.stream.R2 */
/* loaded from: classes2.dex */
class C2835R2 implements InterfaceC2840S2, InterfaceC2948l3 {

    /* renamed from: a */
    private boolean f830a;

    /* renamed from: b */
    private long f831b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2703o f832c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2835R2(InterfaceC2703o interfaceC2703o) {
        this.f832c = interfaceC2703o;
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    public /* synthetic */ void accept(double d) {
        AbstractC2964o1.m354f(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    public /* synthetic */ void accept(int i) {
        AbstractC2964o1.m356d(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2954m3, p034j$.util.stream.InterfaceC2948l3, p034j$.util.function.InterfaceC2705q
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
        AbstractC2964o1.m357c(this, l);
    }

    @Override // p034j$.util.function.InterfaceC2705q
    /* renamed from: f */
    public InterfaceC2705q mo140f(InterfaceC2705q interfaceC2705q) {
        Objects.requireNonNull(interfaceC2705q);
        return new C2704p(this, interfaceC2705q);
    }

    @Override // p034j$.util.function.InterfaceC2713y
    public Object get() {
        return this.f830a ? C2718k.m527a() : C2718k.m524d(this.f831b);
    }

    @Override // p034j$.util.stream.InterfaceC2840S2
    /* renamed from: h */
    public void mo480h(InterfaceC2840S2 interfaceC2840S2) {
        C2835R2 c2835r2 = (C2835R2) interfaceC2840S2;
        if (c2835r2.f830a) {
            return;
        }
        accept(c2835r2.f831b);
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    /* renamed from: m */
    public /* synthetic */ void mo321m() {
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    /* renamed from: n */
    public void mo297n(long j) {
        this.f830a = true;
        this.f831b = 0L;
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    /* renamed from: o */
    public /* synthetic */ boolean mo296o() {
        return false;
    }
}
