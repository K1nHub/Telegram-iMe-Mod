package p033j$.util.stream;

import p033j$.util.Optional;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2816b;
/* renamed from: j$.util.stream.H2 */
/* loaded from: classes2.dex */
class C2898H2 implements InterfaceC2962S2 {

    /* renamed from: a */
    private boolean f888a;

    /* renamed from: b */
    private Object f889b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2816b f890c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2898H2(InterfaceC2816b interfaceC2816b) {
        this.f890c = interfaceC2816b;
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    public /* synthetic */ void accept(double d) {
        AbstractC3086o1.m418f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    public /* synthetic */ void accept(int i) {
        AbstractC3086o1.m420d(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3076m3, p033j$.util.stream.InterfaceC3070l3, p033j$.util.function.InterfaceC2830p
    public /* synthetic */ void accept(long j) {
        AbstractC3086o1.m419e(this);
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

    @Override // p033j$.util.function.InterfaceC2838x
    public Object get() {
        return this.f888a ? Optional.empty() : Optional.m670of(this.f889b);
    }

    @Override // p033j$.util.stream.InterfaceC2962S2
    /* renamed from: h */
    public void mo544h(InterfaceC2962S2 interfaceC2962S2) {
        C2898H2 c2898h2 = (C2898H2) interfaceC2962S2;
        if (c2898h2.f888a) {
            return;
        }
        accept(c2898h2.f889b);
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: l */
    public /* synthetic */ void mo385l() {
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: m */
    public void mo361m(long j) {
        this.f888a = true;
        this.f889b = null;
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: o */
    public /* synthetic */ boolean mo360o() {
        return false;
    }
}
