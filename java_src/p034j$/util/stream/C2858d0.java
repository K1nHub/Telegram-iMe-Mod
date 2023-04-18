package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.InterfaceC2674y;
import p034j$.util.function.Predicate;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.d0 */
/* loaded from: classes2.dex */
public final class C2858d0 implements InterfaceC2775N4 {

    /* renamed from: a */
    private final EnumC2868e4 f901a;

    /* renamed from: b */
    final boolean f902b;

    /* renamed from: c */
    final Object f903c;

    /* renamed from: d */
    final Predicate f904d;

    /* renamed from: e */
    final InterfaceC2674y f905e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2858d0(boolean z, EnumC2868e4 enumC2868e4, Object obj, Predicate predicate, InterfaceC2674y interfaceC2674y) {
        this.f902b = z;
        this.f901a = enumC2868e4;
        this.f903c = obj;
        this.f904d = predicate;
        this.f905e = interfaceC2674y;
    }

    @Override // p034j$.util.stream.InterfaceC2775N4
    /* renamed from: b */
    public int mo357b() {
        return EnumC2862d4.f921u | (this.f902b ? 0 : EnumC2862d4.f918r);
    }

    @Override // p034j$.util.stream.InterfaceC2775N4
    /* renamed from: c */
    public Object mo356c(AbstractC2986y2 abstractC2986y2, InterfaceC2688s interfaceC2688s) {
        return new C2894j0(this, abstractC2986y2, interfaceC2688s).invoke();
    }

    @Override // p034j$.util.stream.InterfaceC2775N4
    /* renamed from: d */
    public Object mo355d(AbstractC2986y2 abstractC2986y2, InterfaceC2688s interfaceC2688s) {
        InterfaceC2781O4 interfaceC2781O4 = (InterfaceC2781O4) this.f905e.get();
        AbstractC2851c abstractC2851c = (AbstractC2851c) abstractC2986y2;
        Objects.requireNonNull(interfaceC2781O4);
        abstractC2851c.mo290n0(abstractC2851c.mo282v0(interfaceC2781O4), interfaceC2688s);
        Object obj = interfaceC2781O4.get();
        return obj != null ? obj : this.f903c;
    }
}
