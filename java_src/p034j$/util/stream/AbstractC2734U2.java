package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2611s;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.U2 */
/* loaded from: classes2.dex */
public abstract class AbstractC2734U2 implements InterfaceC2698N4 {

    /* renamed from: a */
    private final EnumC2791e4 f844a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2734U2(EnumC2791e4 enumC2791e4) {
        this.f844a = enumC2791e4;
    }

    /* renamed from: a */
    public abstract InterfaceC2724S2 mo290a();

    @Override // p034j$.util.stream.InterfaceC2698N4
    /* renamed from: b */
    public /* synthetic */ int mo377b() {
        return 0;
    }

    @Override // p034j$.util.stream.InterfaceC2698N4
    /* renamed from: c */
    public Object mo376c(AbstractC2909y2 abstractC2909y2, InterfaceC2611s interfaceC2611s) {
        return ((InterfaceC2724S2) new C2739V2(this, abstractC2909y2, interfaceC2611s).invoke()).get();
    }

    @Override // p034j$.util.stream.InterfaceC2698N4
    /* renamed from: d */
    public Object mo375d(AbstractC2909y2 abstractC2909y2, InterfaceC2611s interfaceC2611s) {
        InterfaceC2724S2 mo290a = mo290a();
        AbstractC2774c abstractC2774c = (AbstractC2774c) abstractC2909y2;
        Objects.requireNonNull(mo290a);
        abstractC2774c.mo310n0(abstractC2774c.mo302v0(mo290a), interfaceC2611s);
        return mo290a.get();
    }
}
