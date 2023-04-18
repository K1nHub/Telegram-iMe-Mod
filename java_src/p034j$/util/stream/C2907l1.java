package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.InterfaceC2674y;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.l1 */
/* loaded from: classes2.dex */
public final class C2907l1 implements InterfaceC2775N4 {

    /* renamed from: a */
    private final EnumC2868e4 f985a;

    /* renamed from: b */
    final EnumC2901k1 f986b;

    /* renamed from: c */
    final InterfaceC2674y f987c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2907l1(EnumC2868e4 enumC2868e4, EnumC2901k1 enumC2901k1, InterfaceC2674y interfaceC2674y) {
        this.f985a = enumC2868e4;
        this.f986b = enumC2901k1;
        this.f987c = interfaceC2674y;
    }

    @Override // p034j$.util.stream.InterfaceC2775N4
    /* renamed from: b */
    public int mo357b() {
        return EnumC2862d4.f921u | EnumC2862d4.f918r;
    }

    @Override // p034j$.util.stream.InterfaceC2775N4
    /* renamed from: c */
    public Object mo356c(AbstractC2986y2 abstractC2986y2, InterfaceC2688s interfaceC2688s) {
        return (Boolean) new C2913m1(this, abstractC2986y2, interfaceC2688s).invoke();
    }

    @Override // p034j$.util.stream.InterfaceC2775N4
    /* renamed from: d */
    public Object mo355d(AbstractC2986y2 abstractC2986y2, InterfaceC2688s interfaceC2688s) {
        AbstractC2895j1 abstractC2895j1 = (AbstractC2895j1) this.f987c.get();
        AbstractC2851c abstractC2851c = (AbstractC2851c) abstractC2986y2;
        Objects.requireNonNull(abstractC2895j1);
        abstractC2851c.mo290n0(abstractC2851c.mo282v0(abstractC2895j1), interfaceC2688s);
        return Boolean.valueOf(abstractC2895j1.f971b);
    }
}
