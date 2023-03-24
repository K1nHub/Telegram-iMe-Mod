package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2615j;
import p034j$.util.function.C2597k;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2596j;
import p034j$.util.function.InterfaceC2598l;
/* renamed from: j$.util.stream.N2 */
/* loaded from: classes2.dex */
class C2710N2 implements InterfaceC2738S2, InterfaceC2840k3 {

    /* renamed from: a */
    private boolean f802a;

    /* renamed from: b */
    private int f803b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2596j f804c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2710N2(InterfaceC2596j interfaceC2596j) {
        this.f804c = interfaceC2596j;
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    public /* synthetic */ void accept(double d) {
        AbstractC2862o1.m368f(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    public void accept(int i) {
        if (this.f802a) {
            this.f802a = false;
        } else {
            i = this.f804c.applyAsInt(this.f803b, i);
        }
        this.f803b = i;
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
        return this.f802a ? C2615j.m545a() : C2615j.m542d(this.f803b);
    }

    @Override // p034j$.util.stream.InterfaceC2738S2
    /* renamed from: h */
    public void mo494h(InterfaceC2738S2 interfaceC2738S2) {
        C2710N2 c2710n2 = (C2710N2) interfaceC2738S2;
        if (c2710n2.f802a) {
            return;
        }
        accept(c2710n2.f803b);
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
        this.f802a = true;
        this.f803b = 0;
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: o */
    public /* synthetic */ boolean mo310o() {
        return false;
    }
}
