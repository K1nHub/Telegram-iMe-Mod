package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2487s;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.U2 */
/* loaded from: classes2.dex */
public abstract class AbstractC2610U2 implements InterfaceC2574N4 {

    /* renamed from: a */
    private final EnumC2667e4 f839a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2610U2(EnumC2667e4 enumC2667e4) {
        this.f839a = enumC2667e4;
    }

    /* renamed from: a */
    public abstract InterfaceC2600S2 mo290a();

    @Override // p034j$.util.stream.InterfaceC2574N4
    /* renamed from: b */
    public /* synthetic */ int mo377b() {
        return 0;
    }

    @Override // p034j$.util.stream.InterfaceC2574N4
    /* renamed from: c */
    public Object mo376c(AbstractC2785y2 abstractC2785y2, InterfaceC2487s interfaceC2487s) {
        return ((InterfaceC2600S2) new C2615V2(this, abstractC2785y2, interfaceC2487s).invoke()).get();
    }

    @Override // p034j$.util.stream.InterfaceC2574N4
    /* renamed from: d */
    public Object mo375d(AbstractC2785y2 abstractC2785y2, InterfaceC2487s interfaceC2487s) {
        InterfaceC2600S2 mo290a = mo290a();
        AbstractC2650c abstractC2650c = (AbstractC2650c) abstractC2785y2;
        Objects.requireNonNull(mo290a);
        abstractC2650c.mo310n0(abstractC2650c.mo302v0(mo290a), interfaceC2487s);
        return mo290a.get();
    }
}
