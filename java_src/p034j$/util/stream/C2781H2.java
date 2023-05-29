package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.Optional;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2695b;
/* renamed from: j$.util.stream.H2 */
/* loaded from: classes2.dex */
class C2781H2 implements InterfaceC2845S2 {

    /* renamed from: a */
    private boolean f753a;

    /* renamed from: b */
    private Object f754b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2695b f755c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2781H2(InterfaceC2695b interfaceC2695b) {
        this.f755c = interfaceC2695b;
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
    public /* synthetic */ void accept(long j) {
        AbstractC2969o1.m355e(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        if (this.f753a) {
            this.f753a = false;
        } else {
            obj = this.f755c.apply(this.f754b, obj);
        }
        this.f754b = obj;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.function.InterfaceC2718y
    public Object get() {
        return this.f753a ? Optional.empty() : Optional.m611of(this.f754b);
    }

    @Override // p034j$.util.stream.InterfaceC2845S2
    /* renamed from: h */
    public void mo480h(InterfaceC2845S2 interfaceC2845S2) {
        C2781H2 c2781h2 = (C2781H2) interfaceC2845S2;
        if (c2781h2.f753a) {
            return;
        }
        accept(c2781h2.f754b);
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: m */
    public /* synthetic */ void mo321m() {
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: n */
    public void mo297n(long j) {
        this.f753a = true;
        this.f754b = null;
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: o */
    public /* synthetic */ boolean mo296o() {
        return false;
    }
}
