package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.InterfaceC2473y;
import p034j$.util.function.Predicate;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.d0 */
/* loaded from: classes2.dex */
public final class C2657d0 implements InterfaceC2574N4 {

    /* renamed from: a */
    private final EnumC2667e4 f895a;

    /* renamed from: b */
    final boolean f896b;

    /* renamed from: c */
    final Object f897c;

    /* renamed from: d */
    final Predicate f898d;

    /* renamed from: e */
    final InterfaceC2473y f899e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2657d0(boolean z, EnumC2667e4 enumC2667e4, Object obj, Predicate predicate, InterfaceC2473y interfaceC2473y) {
        this.f896b = z;
        this.f895a = enumC2667e4;
        this.f897c = obj;
        this.f898d = predicate;
        this.f899e = interfaceC2473y;
    }

    @Override // p034j$.util.stream.InterfaceC2574N4
    /* renamed from: b */
    public int mo377b() {
        return EnumC2661d4.f915u | (this.f896b ? 0 : EnumC2661d4.f912r);
    }

    @Override // p034j$.util.stream.InterfaceC2574N4
    /* renamed from: c */
    public Object mo376c(AbstractC2785y2 abstractC2785y2, InterfaceC2487s interfaceC2487s) {
        return new C2693j0(this, abstractC2785y2, interfaceC2487s).invoke();
    }

    @Override // p034j$.util.stream.InterfaceC2574N4
    /* renamed from: d */
    public Object mo375d(AbstractC2785y2 abstractC2785y2, InterfaceC2487s interfaceC2487s) {
        InterfaceC2580O4 interfaceC2580O4 = (InterfaceC2580O4) this.f899e.get();
        AbstractC2650c abstractC2650c = (AbstractC2650c) abstractC2785y2;
        Objects.requireNonNull(interfaceC2580O4);
        abstractC2650c.mo310n0(abstractC2650c.mo302v0(interfaceC2580O4), interfaceC2487s);
        Object obj = interfaceC2580O4.get();
        return obj != null ? obj : this.f897c;
    }
}
