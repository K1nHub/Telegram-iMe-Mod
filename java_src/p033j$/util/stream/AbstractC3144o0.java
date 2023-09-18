package p033j$.util.stream;

import p033j$.util.InterfaceC2908s;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.o0 */
/* loaded from: classes2.dex */
abstract class AbstractC3144o0 implements InterfaceC2995N4, InterfaceC3001O4 {

    /* renamed from: a */
    private final boolean f1096a;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC3144o0(boolean z) {
        this.f1096a = z;
    }

    public /* synthetic */ void accept(double d) {
        AbstractC3145o1.m372f(this);
        throw null;
    }

    public /* synthetic */ void accept(int i) {
        AbstractC3145o1.m374d(this);
        throw null;
    }

    public /* synthetic */ void accept(long j) {
        AbstractC3145o1.m373e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2995N4
    /* renamed from: b */
    public int mo380b() {
        if (this.f1096a) {
            return 0;
        }
        return EnumC3082d4.f1007r;
    }

    @Override // p033j$.util.stream.InterfaceC2995N4
    /* renamed from: c */
    public Object mo379c(AbstractC3206y2 abstractC3206y2, InterfaceC2908s interfaceC2908s) {
        (this.f1096a ? new C3156q0(abstractC3206y2, interfaceC2908s, this) : new C3162r0(abstractC3206y2, interfaceC2908s, abstractC3206y2.mo305v0(this))).invoke();
        return null;
    }

    @Override // p033j$.util.stream.InterfaceC2995N4
    /* renamed from: d */
    public Object mo378d(AbstractC3206y2 abstractC3206y2, InterfaceC2908s interfaceC2908s) {
        AbstractC3071c abstractC3071c = (AbstractC3071c) abstractC3206y2;
        abstractC3071c.mo313n0(abstractC3071c.mo305v0(this), interfaceC2908s);
        return null;
    }

    @Override // p033j$.util.function.InterfaceC2894y
    public /* bridge */ /* synthetic */ Object get() {
        return null;
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: m */
    public /* synthetic */ void mo339m() {
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: n */
    public /* synthetic */ void mo315n(long j) {
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: o */
    public /* synthetic */ boolean mo314o() {
        return false;
    }
}
