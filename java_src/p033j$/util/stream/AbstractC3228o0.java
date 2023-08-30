package p033j$.util.stream;

import p033j$.util.InterfaceC2992s;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.o0 */
/* loaded from: classes2.dex */
abstract class AbstractC3228o0 implements InterfaceC3079N4, InterfaceC3085O4 {

    /* renamed from: a */
    private final boolean f1105a;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC3228o0(boolean z) {
        this.f1105a = z;
    }

    public /* synthetic */ void accept(double d) {
        AbstractC3229o1.m372f(this);
        throw null;
    }

    public /* synthetic */ void accept(int i) {
        AbstractC3229o1.m374d(this);
        throw null;
    }

    public /* synthetic */ void accept(long j) {
        AbstractC3229o1.m373e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC3079N4
    /* renamed from: b */
    public int mo380b() {
        if (this.f1105a) {
            return 0;
        }
        return EnumC3166d4.f1016r;
    }

    @Override // p033j$.util.stream.InterfaceC3079N4
    /* renamed from: c */
    public Object mo379c(AbstractC3290y2 abstractC3290y2, InterfaceC2992s interfaceC2992s) {
        (this.f1105a ? new C3240q0(abstractC3290y2, interfaceC2992s, this) : new C3246r0(abstractC3290y2, interfaceC2992s, abstractC3290y2.mo305v0(this))).invoke();
        return null;
    }

    @Override // p033j$.util.stream.InterfaceC3079N4
    /* renamed from: d */
    public Object mo378d(AbstractC3290y2 abstractC3290y2, InterfaceC2992s interfaceC2992s) {
        AbstractC3155c abstractC3155c = (AbstractC3155c) abstractC3290y2;
        abstractC3155c.mo313n0(abstractC3155c.mo305v0(this), interfaceC2992s);
        return null;
    }

    @Override // p033j$.util.function.InterfaceC2978y
    public /* bridge */ /* synthetic */ Object get() {
        return null;
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: m */
    public /* synthetic */ void mo339m() {
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: n */
    public /* synthetic */ void mo315n(long j) {
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: o */
    public /* synthetic */ boolean mo314o() {
        return false;
    }
}
