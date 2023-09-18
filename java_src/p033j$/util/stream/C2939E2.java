package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.C2897i;
import p033j$.util.function.C2874e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2873d;
import p033j$.util.function.InterfaceC2875f;
/* renamed from: j$.util.stream.E2 */
/* loaded from: classes2.dex */
class C2939E2 implements InterfaceC3021S2, InterfaceC3117j3 {

    /* renamed from: a */
    private boolean f813a;

    /* renamed from: b */
    private double f814b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2873d f815c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2939E2(InterfaceC2873d interfaceC2873d) {
        this.f815c = interfaceC2873d;
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    public void accept(double d) {
        if (this.f813a) {
            this.f813a = false;
        } else {
            d = this.f815c.applyAsDouble(this.f814b, d);
        }
        this.f814b = d;
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    public /* synthetic */ void accept(int i) {
        AbstractC3145o1.m374d(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3135m3, p033j$.util.stream.InterfaceC3129l3, p033j$.util.function.InterfaceC2886q
    public /* synthetic */ void accept(long j) {
        AbstractC3145o1.m373e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Double d) {
        AbstractC3145o1.m377a(this, d);
    }

    @Override // p033j$.util.function.InterfaceC2894y
    public Object get() {
        return this.f813a ? C2897i.m553a() : C2897i.m550d(this.f814b);
    }

    @Override // p033j$.util.stream.InterfaceC3021S2
    /* renamed from: h */
    public void mo498h(InterfaceC3021S2 interfaceC3021S2) {
        C2939E2 c2939e2 = (C2939E2) interfaceC3021S2;
        if (c2939e2.f813a) {
            return;
        }
        accept(c2939e2.f814b);
    }

    @Override // p033j$.util.function.InterfaceC2875f
    /* renamed from: j */
    public InterfaceC2875f mo105j(InterfaceC2875f interfaceC2875f) {
        Objects.requireNonNull(interfaceC2875f);
        return new C2874e(this, interfaceC2875f);
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: m */
    public /* synthetic */ void mo339m() {
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: n */
    public void mo315n(long j) {
        this.f813a = true;
        this.f814b = 0.0d;
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: o */
    public /* synthetic */ boolean mo314o() {
        return false;
    }
}
