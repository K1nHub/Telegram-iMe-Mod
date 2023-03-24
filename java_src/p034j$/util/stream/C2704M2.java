package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2597k;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2596j;
import p034j$.util.function.InterfaceC2598l;
/* renamed from: j$.util.stream.M2 */
/* loaded from: classes2.dex */
class C2704M2 implements InterfaceC2738S2, InterfaceC2840k3 {

    /* renamed from: a */
    private int f789a;

    /* renamed from: b */
    final /* synthetic */ int f790b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2596j f791c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2704M2(int i, InterfaceC2596j interfaceC2596j) {
        this.f790b = i;
        this.f791c = interfaceC2596j;
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    public /* synthetic */ void accept(double d) {
        AbstractC2862o1.m368f(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    public void accept(int i) {
        this.f789a = this.f791c.applyAsInt(this.f789a, i);
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
    public /* synthetic */ void accept(Integer num) {
        AbstractC2862o1.m372b(this, num);
    }

    @Override // p034j$.util.function.InterfaceC2611y
    public Object get() {
        return Integer.valueOf(this.f789a);
    }

    @Override // p034j$.util.stream.InterfaceC2738S2
    /* renamed from: h */
    public void mo494h(InterfaceC2738S2 interfaceC2738S2) {
        accept(((C2704M2) interfaceC2738S2).f789a);
    }

    @Override // p034j$.util.function.InterfaceC2598l
    /* renamed from: l */
    public InterfaceC2598l mo179l(InterfaceC2598l interfaceC2598l) {
        Objects.requireNonNull(interfaceC2598l);
        return new C2597k(this, interfaceC2598l);
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: m */
    public /* synthetic */ void mo335m() {
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: n */
    public void mo311n(long j) {
        this.f789a = this.f790b;
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: o */
    public /* synthetic */ boolean mo310o() {
        return false;
    }
}
