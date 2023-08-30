package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.InterfaceC2992s;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.U2 */
/* loaded from: classes2.dex */
public abstract class AbstractC3115U2 implements InterfaceC3079N4 {

    /* renamed from: a */
    private final EnumC3172e4 f943a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3115U2(EnumC3172e4 enumC3172e4) {
        this.f943a = enumC3172e4;
    }

    /* renamed from: a */
    public abstract InterfaceC3105S2 mo293a();

    @Override // p033j$.util.stream.InterfaceC3079N4
    /* renamed from: b */
    public /* synthetic */ int mo380b() {
        return 0;
    }

    @Override // p033j$.util.stream.InterfaceC3079N4
    /* renamed from: c */
    public Object mo379c(AbstractC3290y2 abstractC3290y2, InterfaceC2992s interfaceC2992s) {
        return ((InterfaceC3105S2) new C3120V2(this, abstractC3290y2, interfaceC2992s).invoke()).get();
    }

    @Override // p033j$.util.stream.InterfaceC3079N4
    /* renamed from: d */
    public Object mo378d(AbstractC3290y2 abstractC3290y2, InterfaceC2992s interfaceC2992s) {
        InterfaceC3105S2 mo293a = mo293a();
        AbstractC3155c abstractC3155c = (AbstractC3155c) abstractC3290y2;
        Objects.requireNonNull(mo293a);
        abstractC3155c.mo313n0(abstractC3155c.mo305v0(mo293a), interfaceC2992s);
        return mo293a.get();
    }
}
