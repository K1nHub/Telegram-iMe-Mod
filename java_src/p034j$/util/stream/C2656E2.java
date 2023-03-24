package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.C2614i;
import p034j$.util.function.C2591e;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2590d;
import p034j$.util.function.InterfaceC2592f;
/* renamed from: j$.util.stream.E2 */
/* loaded from: classes2.dex */
class C2656E2 implements InterfaceC2738S2, InterfaceC2834j3 {

    /* renamed from: a */
    private boolean f724a;

    /* renamed from: b */
    private double f725b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2590d f726c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2656E2(InterfaceC2590d interfaceC2590d) {
        this.f726c = interfaceC2590d;
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    public void accept(double d) {
        if (this.f724a) {
            this.f724a = false;
        } else {
            d = this.f726c.applyAsDouble(this.f725b, d);
        }
        this.f725b = d;
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
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Double d) {
        AbstractC2862o1.m373a(this, d);
    }

    @Override // p034j$.util.function.InterfaceC2611y
    public Object get() {
        return this.f724a ? C2614i.m549a() : C2614i.m546d(this.f725b);
    }

    @Override // p034j$.util.stream.InterfaceC2738S2
    /* renamed from: h */
    public void mo494h(InterfaceC2738S2 interfaceC2738S2) {
        C2656E2 c2656e2 = (C2656E2) interfaceC2738S2;
        if (c2656e2.f724a) {
            return;
        }
        accept(c2656e2.f725b);
    }

    @Override // p034j$.util.function.InterfaceC2592f
    /* renamed from: j */
    public InterfaceC2592f mo101j(InterfaceC2592f interfaceC2592f) {
        Objects.requireNonNull(interfaceC2592f);
        return new C2591e(this, interfaceC2592f);
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: m */
    public /* synthetic */ void mo335m() {
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: n */
    public void mo311n(long j) {
        this.f724a = true;
        this.f725b = 0.0d;
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: o */
    public /* synthetic */ boolean mo310o() {
        return false;
    }
}
