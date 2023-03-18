package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.InterfaceC2597y;
import p034j$.util.function.Predicate;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.d0 */
/* loaded from: classes2.dex */
public final class C2781d0 implements InterfaceC2698N4 {

    /* renamed from: a */
    private final EnumC2791e4 f900a;

    /* renamed from: b */
    final boolean f901b;

    /* renamed from: c */
    final Object f902c;

    /* renamed from: d */
    final Predicate f903d;

    /* renamed from: e */
    final InterfaceC2597y f904e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2781d0(boolean z, EnumC2791e4 enumC2791e4, Object obj, Predicate predicate, InterfaceC2597y interfaceC2597y) {
        this.f901b = z;
        this.f900a = enumC2791e4;
        this.f902c = obj;
        this.f903d = predicate;
        this.f904e = interfaceC2597y;
    }

    @Override // p034j$.util.stream.InterfaceC2698N4
    /* renamed from: b */
    public int mo377b() {
        return EnumC2785d4.f920u | (this.f901b ? 0 : EnumC2785d4.f917r);
    }

    @Override // p034j$.util.stream.InterfaceC2698N4
    /* renamed from: c */
    public Object mo376c(AbstractC2909y2 abstractC2909y2, InterfaceC2611s interfaceC2611s) {
        return new C2817j0(this, abstractC2909y2, interfaceC2611s).invoke();
    }

    @Override // p034j$.util.stream.InterfaceC2698N4
    /* renamed from: d */
    public Object mo375d(AbstractC2909y2 abstractC2909y2, InterfaceC2611s interfaceC2611s) {
        InterfaceC2704O4 interfaceC2704O4 = (InterfaceC2704O4) this.f904e.get();
        AbstractC2774c abstractC2774c = (AbstractC2774c) abstractC2909y2;
        Objects.requireNonNull(interfaceC2704O4);
        abstractC2774c.mo310n0(abstractC2774c.mo302v0(interfaceC2704O4), interfaceC2611s);
        Object obj = interfaceC2704O4.get();
        return obj != null ? obj : this.f902c;
    }
}
