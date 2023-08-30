package p033j$.util.stream;

import p033j$.util.Optional;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2955b;
/* renamed from: j$.util.stream.H2 */
/* loaded from: classes2.dex */
class C3041H2 implements InterfaceC3105S2 {

    /* renamed from: a */
    private boolean f848a;

    /* renamed from: b */
    private Object f849b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2955b f850c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3041H2(InterfaceC2955b interfaceC2955b) {
        this.f850c = interfaceC2955b;
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    public /* synthetic */ void accept(double d) {
        AbstractC3229o1.m372f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    public /* synthetic */ void accept(int i) {
        AbstractC3229o1.m374d(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3219m3, p033j$.util.stream.InterfaceC3213l3, p033j$.util.function.InterfaceC2970q
    public /* synthetic */ void accept(long j) {
        AbstractC3229o1.m373e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        if (this.f848a) {
            this.f848a = false;
        } else {
            obj = this.f850c.apply(this.f849b, obj);
        }
        this.f849b = obj;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.InterfaceC2978y
    public Object get() {
        return this.f848a ? Optional.empty() : Optional.m629of(this.f849b);
    }

    @Override // p033j$.util.stream.InterfaceC3105S2
    /* renamed from: h */
    public void mo498h(InterfaceC3105S2 interfaceC3105S2) {
        C3041H2 c3041h2 = (C3041H2) interfaceC3105S2;
        if (c3041h2.f848a) {
            return;
        }
        accept(c3041h2.f849b);
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: m */
    public /* synthetic */ void mo339m() {
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: n */
    public void mo315n(long j) {
        this.f848a = true;
        this.f849b = null;
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: o */
    public /* synthetic */ boolean mo314o() {
        return false;
    }
}
