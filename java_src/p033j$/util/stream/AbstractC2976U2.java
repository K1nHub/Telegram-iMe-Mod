package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.InterfaceC2853s;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.U2 */
/* loaded from: classes2.dex */
public abstract class AbstractC2976U2 implements InterfaceC2940N4 {

    /* renamed from: a */
    private final EnumC3033e4 f933a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2976U2(EnumC3033e4 enumC3033e4) {
        this.f933a = enumC3033e4;
    }

    /* renamed from: a */
    public abstract InterfaceC2966S2 mo293a();

    @Override // p033j$.util.stream.InterfaceC2940N4
    /* renamed from: b */
    public /* synthetic */ int mo380b() {
        return 0;
    }

    @Override // p033j$.util.stream.InterfaceC2940N4
    /* renamed from: c */
    public Object mo379c(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s) {
        return ((InterfaceC2966S2) new C2981V2(this, abstractC3151y2, interfaceC2853s).invoke()).get();
    }

    @Override // p033j$.util.stream.InterfaceC2940N4
    /* renamed from: d */
    public Object mo378d(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s) {
        InterfaceC2966S2 mo293a = mo293a();
        AbstractC3016c abstractC3016c = (AbstractC3016c) abstractC3151y2;
        Objects.requireNonNull(mo293a);
        abstractC3016c.mo313n0(abstractC3016c.mo305v0(mo293a), interfaceC2853s);
        return mo293a.get();
    }
}
