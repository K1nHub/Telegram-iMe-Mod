package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.InterfaceC2908s;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.U2 */
/* loaded from: classes2.dex */
public abstract class AbstractC3031U2 implements InterfaceC2995N4 {

    /* renamed from: a */
    private final EnumC3088e4 f934a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3031U2(EnumC3088e4 enumC3088e4) {
        this.f934a = enumC3088e4;
    }

    /* renamed from: a */
    public abstract InterfaceC3021S2 mo293a();

    @Override // p033j$.util.stream.InterfaceC2995N4
    /* renamed from: b */
    public /* synthetic */ int mo380b() {
        return 0;
    }

    @Override // p033j$.util.stream.InterfaceC2995N4
    /* renamed from: c */
    public Object mo379c(AbstractC3206y2 abstractC3206y2, InterfaceC2908s interfaceC2908s) {
        return ((InterfaceC3021S2) new C3036V2(this, abstractC3206y2, interfaceC2908s).invoke()).get();
    }

    @Override // p033j$.util.stream.InterfaceC2995N4
    /* renamed from: d */
    public Object mo378d(AbstractC3206y2 abstractC3206y2, InterfaceC2908s interfaceC2908s) {
        InterfaceC3021S2 mo293a = mo293a();
        AbstractC3071c abstractC3071c = (AbstractC3071c) abstractC3206y2;
        Objects.requireNonNull(mo293a);
        abstractC3071c.mo313n0(abstractC3071c.mo305v0(mo293a), interfaceC2908s);
        return mo293a.get();
    }
}
