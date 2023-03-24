package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2602p;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2601o;
import p034j$.util.function.InterfaceC2603q;
/* renamed from: j$.util.stream.Q2 */
/* loaded from: classes2.dex */
class C2728Q2 implements InterfaceC2738S2, InterfaceC2846l3 {

    /* renamed from: a */
    private long f820a;

    /* renamed from: b */
    final /* synthetic */ long f821b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2601o f822c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2728Q2(long j, InterfaceC2601o interfaceC2601o) {
        this.f821b = j;
        this.f822c = interfaceC2601o;
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
        this.f820a = this.f822c.applyAsLong(this.f820a, j);
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
        return Long.valueOf(this.f820a);
    }

    @Override // p034j$.util.stream.InterfaceC2738S2
    /* renamed from: h */
    public void mo494h(InterfaceC2738S2 interfaceC2738S2) {
        accept(((C2728Q2) interfaceC2738S2).f820a);
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: m */
    public /* synthetic */ void mo335m() {
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: n */
    public void mo311n(long j) {
        this.f820a = this.f821b;
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: o */
    public /* synthetic */ boolean mo310o() {
        return false;
    }
}
