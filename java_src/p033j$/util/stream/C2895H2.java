package p033j$.util.stream;

import p033j$.util.Optional;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2813b;
/* renamed from: j$.util.stream.H2 */
/* loaded from: classes2.dex */
class C2895H2 implements InterfaceC2959S2 {

    /* renamed from: a */
    private boolean f888a;

    /* renamed from: b */
    private Object f889b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2813b f890c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2895H2(InterfaceC2813b interfaceC2813b) {
        this.f890c = interfaceC2813b;
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    public /* synthetic */ void accept(double d) {
        AbstractC3083o1.m418f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    public /* synthetic */ void accept(int i) {
        AbstractC3083o1.m420d(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3073m3, p033j$.util.stream.InterfaceC3067l3, p033j$.util.function.InterfaceC2827p
    public /* synthetic */ void accept(long j) {
        AbstractC3083o1.m419e(this);
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

    @Override // p033j$.util.function.InterfaceC2835x
    public Object get() {
        return this.f888a ? Optional.empty() : Optional.m670of(this.f889b);
    }

    @Override // p033j$.util.stream.InterfaceC2959S2
    /* renamed from: h */
    public void mo544h(InterfaceC2959S2 interfaceC2959S2) {
        C2895H2 c2895h2 = (C2895H2) interfaceC2959S2;
        if (c2895h2.f888a) {
            return;
        }
        accept(c2895h2.f889b);
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: l */
    public /* synthetic */ void mo385l() {
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: m */
    public void mo361m(long j) {
        this.f888a = true;
        this.f889b = null;
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: o */
    public /* synthetic */ boolean mo360o() {
        return false;
    }
}
