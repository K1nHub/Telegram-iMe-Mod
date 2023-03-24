package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.Optional;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2588b;
/* renamed from: j$.util.stream.H2 */
/* loaded from: classes2.dex */
class C2674H2 implements InterfaceC2738S2 {

    /* renamed from: a */
    private boolean f750a;

    /* renamed from: b */
    private Object f751b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2588b f752c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2674H2(InterfaceC2588b interfaceC2588b) {
        this.f752c = interfaceC2588b;
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    public /* synthetic */ void accept(double d) {
        AbstractC2862o1.m368f(this);
        throw null;
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
    public void accept(Object obj) {
        if (this.f750a) {
            this.f750a = false;
        } else {
            obj = this.f752c.apply(this.f751b, obj);
        }
        this.f751b = obj;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.function.InterfaceC2611y
    public Object get() {
        return this.f750a ? Optional.empty() : Optional.m626of(this.f751b);
    }

    @Override // p034j$.util.stream.InterfaceC2738S2
    /* renamed from: h */
    public void mo494h(InterfaceC2738S2 interfaceC2738S2) {
        C2674H2 c2674h2 = (C2674H2) interfaceC2738S2;
        if (c2674h2.f750a) {
            return;
        }
        accept(c2674h2.f751b);
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: m */
    public /* synthetic */ void mo335m() {
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: n */
    public void mo311n(long j) {
        this.f750a = true;
        this.f751b = null;
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: o */
    public /* synthetic */ boolean mo310o() {
        return false;
    }
}
