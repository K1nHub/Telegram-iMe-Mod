package p033j$.util.stream;

import p033j$.util.Optional;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2811b;
/* renamed from: j$.util.stream.H2 */
/* loaded from: classes2.dex */
class C2893H2 implements InterfaceC2957S2 {

    /* renamed from: a */
    private boolean f888a;

    /* renamed from: b */
    private Object f889b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2811b f890c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2893H2(InterfaceC2811b interfaceC2811b) {
        this.f890c = interfaceC2811b;
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    public /* synthetic */ void accept(double d) {
        AbstractC3081o1.m421f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    public /* synthetic */ void accept(int i) {
        AbstractC3081o1.m423d(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3071m3, p033j$.util.stream.InterfaceC3065l3, p033j$.util.function.InterfaceC2825p
    public /* synthetic */ void accept(long j) {
        AbstractC3081o1.m422e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        if (this.f888a) {
            this.f888a = false;
        } else {
            obj = this.f890c.apply(this.f889b, obj);
        }
        this.f889b = obj;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.InterfaceC2833x
    public Object get() {
        return this.f888a ? Optional.empty() : Optional.m673of(this.f889b);
    }

    @Override // p033j$.util.stream.InterfaceC2957S2
    /* renamed from: h */
    public void mo547h(InterfaceC2957S2 interfaceC2957S2) {
        C2893H2 c2893h2 = (C2893H2) interfaceC2957S2;
        if (c2893h2.f888a) {
            return;
        }
        accept(c2893h2.f889b);
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: l */
    public /* synthetic */ void mo388l() {
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: m */
    public void mo364m(long j) {
        this.f888a = true;
        this.f889b = null;
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: o */
    public /* synthetic */ boolean mo363o() {
        return false;
    }
}
