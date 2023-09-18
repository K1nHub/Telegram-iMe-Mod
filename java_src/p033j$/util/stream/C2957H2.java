package p033j$.util.stream;

import p033j$.util.Optional;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2871b;
/* renamed from: j$.util.stream.H2 */
/* loaded from: classes2.dex */
class C2957H2 implements InterfaceC3021S2 {

    /* renamed from: a */
    private boolean f839a;

    /* renamed from: b */
    private Object f840b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2871b f841c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2957H2(InterfaceC2871b interfaceC2871b) {
        this.f841c = interfaceC2871b;
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    public /* synthetic */ void accept(double d) {
        AbstractC3145o1.m372f(this);
        throw null;
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
    public void accept(Object obj) {
        if (this.f839a) {
            this.f839a = false;
        } else {
            obj = this.f841c.apply(this.f840b, obj);
        }
        this.f840b = obj;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.InterfaceC2894y
    public Object get() {
        return this.f839a ? Optional.empty() : Optional.m629of(this.f840b);
    }

    @Override // p033j$.util.stream.InterfaceC3021S2
    /* renamed from: h */
    public void mo498h(InterfaceC3021S2 interfaceC3021S2) {
        C2957H2 c2957h2 = (C2957H2) interfaceC3021S2;
        if (c2957h2.f839a) {
            return;
        }
        accept(c2957h2.f840b);
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: m */
    public /* synthetic */ void mo339m() {
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: n */
    public void mo315n(long j) {
        this.f839a = true;
        this.f840b = null;
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: o */
    public /* synthetic */ boolean mo314o() {
        return false;
    }
}
