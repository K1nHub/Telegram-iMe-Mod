package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2688s;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.U2 */
/* loaded from: classes2.dex */
public abstract class AbstractC2811U2 implements InterfaceC2775N4 {

    /* renamed from: a */
    private final EnumC2868e4 f845a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2811U2(EnumC2868e4 enumC2868e4) {
        this.f845a = enumC2868e4;
    }

    /* renamed from: a */
    public abstract InterfaceC2801S2 mo270a();

    @Override // p034j$.util.stream.InterfaceC2775N4
    /* renamed from: b */
    public /* synthetic */ int mo357b() {
        return 0;
    }

    @Override // p034j$.util.stream.InterfaceC2775N4
    /* renamed from: c */
    public Object mo356c(AbstractC2986y2 abstractC2986y2, InterfaceC2688s interfaceC2688s) {
        return ((InterfaceC2801S2) new C2816V2(this, abstractC2986y2, interfaceC2688s).invoke()).get();
    }

    @Override // p034j$.util.stream.InterfaceC2775N4
    /* renamed from: d */
    public Object mo355d(AbstractC2986y2 abstractC2986y2, InterfaceC2688s interfaceC2688s) {
        InterfaceC2801S2 mo270a = mo270a();
        AbstractC2851c abstractC2851c = (AbstractC2851c) abstractC2986y2;
        Objects.requireNonNull(mo270a);
        abstractC2851c.mo290n0(abstractC2851c.mo282v0(mo270a), interfaceC2688s);
        return mo270a.get();
    }
}
