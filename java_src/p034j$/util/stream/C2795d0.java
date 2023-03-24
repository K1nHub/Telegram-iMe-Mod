package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.InterfaceC2611y;
import p034j$.util.function.Predicate;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.d0 */
/* loaded from: classes2.dex */
public final class C2795d0 implements InterfaceC2712N4 {

    /* renamed from: a */
    private final EnumC2805e4 f901a;

    /* renamed from: b */
    final boolean f902b;

    /* renamed from: c */
    final Object f903c;

    /* renamed from: d */
    final Predicate f904d;

    /* renamed from: e */
    final InterfaceC2611y f905e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2795d0(boolean z, EnumC2805e4 enumC2805e4, Object obj, Predicate predicate, InterfaceC2611y interfaceC2611y) {
        this.f902b = z;
        this.f901a = enumC2805e4;
        this.f903c = obj;
        this.f904d = predicate;
        this.f905e = interfaceC2611y;
    }

    @Override // p034j$.util.stream.InterfaceC2712N4
    /* renamed from: b */
    public int mo376b() {
        return EnumC2799d4.f921u | (this.f902b ? 0 : EnumC2799d4.f918r);
    }

    @Override // p034j$.util.stream.InterfaceC2712N4
    /* renamed from: c */
    public Object mo375c(AbstractC2923y2 abstractC2923y2, InterfaceC2625s interfaceC2625s) {
        return new C2831j0(this, abstractC2923y2, interfaceC2625s).invoke();
    }

    @Override // p034j$.util.stream.InterfaceC2712N4
    /* renamed from: d */
    public Object mo374d(AbstractC2923y2 abstractC2923y2, InterfaceC2625s interfaceC2625s) {
        InterfaceC2718O4 interfaceC2718O4 = (InterfaceC2718O4) this.f905e.get();
        AbstractC2788c abstractC2788c = (AbstractC2788c) abstractC2923y2;
        Objects.requireNonNull(interfaceC2718O4);
        abstractC2788c.mo309n0(abstractC2788c.mo301v0(interfaceC2718O4), interfaceC2625s);
        Object obj = interfaceC2718O4.get();
        return obj != null ? obj : this.f903c;
    }
}
