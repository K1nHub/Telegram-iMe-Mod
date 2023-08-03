package p033j$.util.stream;

import p033j$.util.InterfaceC2853s;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.o0 */
/* loaded from: classes2.dex */
abstract class AbstractC3089o0 implements InterfaceC2940N4, InterfaceC2946O4 {

    /* renamed from: a */
    private final boolean f1095a;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC3089o0(boolean z) {
        this.f1095a = z;
    }

    public /* synthetic */ void accept(double d) {
        AbstractC3090o1.m372f(this);
        throw null;
    }

    public /* synthetic */ void accept(int i) {
        AbstractC3090o1.m374d(this);
        throw null;
    }

    public /* synthetic */ void accept(long j) {
        AbstractC3090o1.m373e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC2940N4
    /* renamed from: b */
    public int mo380b() {
        if (this.f1095a) {
            return 0;
        }
        return EnumC3027d4.f1006r;
    }

    @Override // p033j$.util.stream.InterfaceC2940N4
    /* renamed from: c */
    public Object mo379c(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s) {
        (this.f1095a ? new C3101q0(abstractC3151y2, interfaceC2853s, this) : new C3107r0(abstractC3151y2, interfaceC2853s, abstractC3151y2.mo305v0(this))).invoke();
        return null;
    }

    @Override // p033j$.util.stream.InterfaceC2940N4
    /* renamed from: d */
    public Object mo378d(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s) {
        AbstractC3016c abstractC3016c = (AbstractC3016c) abstractC3151y2;
        abstractC3016c.mo313n0(abstractC3016c.mo305v0(this), interfaceC2853s);
        return null;
    }

    @Override // p033j$.util.function.InterfaceC2839y
    public /* bridge */ /* synthetic */ Object get() {
        return null;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: m */
    public /* synthetic */ void mo339m() {
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public /* synthetic */ void mo315n(long j) {
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: o */
    public /* synthetic */ boolean mo314o() {
        return false;
    }
}
