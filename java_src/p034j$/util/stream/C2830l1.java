package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.InterfaceC2597y;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.l1 */
/* loaded from: classes2.dex */
public final class C2830l1 implements InterfaceC2698N4 {

    /* renamed from: a */
    private final EnumC2791e4 f984a;

    /* renamed from: b */
    final EnumC2824k1 f985b;

    /* renamed from: c */
    final InterfaceC2597y f986c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2830l1(EnumC2791e4 enumC2791e4, EnumC2824k1 enumC2824k1, InterfaceC2597y interfaceC2597y) {
        this.f984a = enumC2791e4;
        this.f985b = enumC2824k1;
        this.f986c = interfaceC2597y;
    }

    @Override // p034j$.util.stream.InterfaceC2698N4
    /* renamed from: b */
    public int mo377b() {
        return EnumC2785d4.f920u | EnumC2785d4.f917r;
    }

    @Override // p034j$.util.stream.InterfaceC2698N4
    /* renamed from: c */
    public Object mo376c(AbstractC2909y2 abstractC2909y2, InterfaceC2611s interfaceC2611s) {
        return (Boolean) new C2836m1(this, abstractC2909y2, interfaceC2611s).invoke();
    }

    @Override // p034j$.util.stream.InterfaceC2698N4
    /* renamed from: d */
    public Object mo375d(AbstractC2909y2 abstractC2909y2, InterfaceC2611s interfaceC2611s) {
        AbstractC2818j1 abstractC2818j1 = (AbstractC2818j1) this.f986c.get();
        AbstractC2774c abstractC2774c = (AbstractC2774c) abstractC2909y2;
        Objects.requireNonNull(abstractC2818j1);
        abstractC2774c.mo310n0(abstractC2774c.mo302v0(abstractC2818j1), interfaceC2611s);
        return Boolean.valueOf(abstractC2818j1.f970b);
    }
}
