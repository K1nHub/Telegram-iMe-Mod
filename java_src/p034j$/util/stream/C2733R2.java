package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2616k;
import p034j$.util.function.C2602p;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2601o;
import p034j$.util.function.InterfaceC2603q;
/* renamed from: j$.util.stream.R2 */
/* loaded from: classes2.dex */
class C2733R2 implements InterfaceC2738S2, InterfaceC2846l3 {

    /* renamed from: a */
    private boolean f827a;

    /* renamed from: b */
    private long f828b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2601o f829c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2733R2(InterfaceC2601o interfaceC2601o) {
        this.f829c = interfaceC2601o;
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
    public void accept(long j) {
        if (this.f827a) {
            this.f827a = false;
        } else {
            j = this.f829c.applyAsLong(this.f828b, j);
        }
        this.f828b = j;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Long l) {
        AbstractC2862o1.m371c(this, l);
    }

    @Override // p034j$.util.function.InterfaceC2603q
    /* renamed from: f */
    public InterfaceC2603q mo154f(InterfaceC2603q interfaceC2603q) {
        Objects.requireNonNull(interfaceC2603q);
        return new C2602p(this, interfaceC2603q);
    }

    @Override // p034j$.util.function.InterfaceC2611y
    public Object get() {
        return this.f827a ? C2616k.m541a() : C2616k.m538d(this.f828b);
    }

    @Override // p034j$.util.stream.InterfaceC2738S2
    /* renamed from: h */
    public void mo494h(InterfaceC2738S2 interfaceC2738S2) {
        C2733R2 c2733r2 = (C2733R2) interfaceC2738S2;
        if (c2733r2.f827a) {
            return;
        }
        accept(c2733r2.f828b);
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: m */
    public /* synthetic */ void mo335m() {
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: n */
    public void mo311n(long j) {
        this.f827a = true;
        this.f828b = 0L;
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: o */
    public /* synthetic */ boolean mo310o() {
        return false;
    }
}
