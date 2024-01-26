package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.C2835h;
import p033j$.util.function.C2820k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2819j;
import p033j$.util.function.InterfaceC2821l;
/* renamed from: j$.util.stream.N2 */
/* loaded from: classes2.dex */
class C2929N2 implements InterfaceC2957S2, InterfaceC3059k3 {

    /* renamed from: a */
    private boolean f940a;

    /* renamed from: b */
    private int f941b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2819j f942c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2929N2(InterfaceC2819j interfaceC2819j) {
        this.f942c = interfaceC2819j;
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    public /* synthetic */ void accept(double d) {
        AbstractC3081o1.m421f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    public void accept(int i) {
        if (this.f940a) {
            this.f940a = false;
        } else {
            i = this.f942c.applyAsInt(this.f941b, i);
        }
        this.f941b = i;
    }

    @Override // p033j$.util.stream.InterfaceC3071m3, p033j$.util.stream.InterfaceC3065l3, p033j$.util.function.InterfaceC2825p
    public /* synthetic */ void accept(long j) {
        AbstractC3081o1.m422e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Integer num) {
        AbstractC3081o1.m425b(this, num);
    }

    @Override // p033j$.util.function.InterfaceC2833x
    public Object get() {
        return this.f940a ? C2835h.m616a() : C2835h.m613d(this.f941b);
    }

    @Override // p033j$.util.stream.InterfaceC2957S2
    /* renamed from: h */
    public void mo547h(InterfaceC2957S2 interfaceC2957S2) {
        C2929N2 c2929n2 = (C2929N2) interfaceC2957S2;
        if (c2929n2.f940a) {
            return;
        }
        accept(c2929n2.f941b);
    }

    @Override // p033j$.util.function.InterfaceC2821l
    /* renamed from: k */
    public InterfaceC2821l mo238k(InterfaceC2821l interfaceC2821l) {
        Objects.requireNonNull(interfaceC2821l);
        return new C2820k(this, interfaceC2821l);
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: l */
    public /* synthetic */ void mo388l() {
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: m */
    public void mo364m(long j) {
        this.f940a = true;
        this.f941b = 0;
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: o */
    public /* synthetic */ boolean mo363o() {
        return false;
    }
}
