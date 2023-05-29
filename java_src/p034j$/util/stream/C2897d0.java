package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2727s;
import p034j$.util.function.InterfaceC2713y;
import p034j$.util.function.Predicate;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.d0 */
/* loaded from: classes2.dex */
public final class C2897d0 implements InterfaceC2814N4 {

    /* renamed from: a */
    private final EnumC2907e4 f904a;

    /* renamed from: b */
    final boolean f905b;

    /* renamed from: c */
    final Object f906c;

    /* renamed from: d */
    final Predicate f907d;

    /* renamed from: e */
    final InterfaceC2713y f908e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2897d0(boolean z, EnumC2907e4 enumC2907e4, Object obj, Predicate predicate, InterfaceC2713y interfaceC2713y) {
        this.f905b = z;
        this.f904a = enumC2907e4;
        this.f906c = obj;
        this.f907d = predicate;
        this.f908e = interfaceC2713y;
    }

    @Override // p034j$.util.stream.InterfaceC2814N4
    /* renamed from: b */
    public int mo362b() {
        return EnumC2901d4.f924u | (this.f905b ? 0 : EnumC2901d4.f921r);
    }

    @Override // p034j$.util.stream.InterfaceC2814N4
    /* renamed from: c */
    public Object mo361c(AbstractC3025y2 abstractC3025y2, InterfaceC2727s interfaceC2727s) {
        return new C2933j0(this, abstractC3025y2, interfaceC2727s).invoke();
    }

    @Override // p034j$.util.stream.InterfaceC2814N4
    /* renamed from: d */
    public Object mo360d(AbstractC3025y2 abstractC3025y2, InterfaceC2727s interfaceC2727s) {
        InterfaceC2820O4 interfaceC2820O4 = (InterfaceC2820O4) this.f908e.get();
        AbstractC2890c abstractC2890c = (AbstractC2890c) abstractC3025y2;
        Objects.requireNonNull(interfaceC2820O4);
        abstractC2890c.mo295n0(abstractC2890c.mo287v0(interfaceC2820O4), interfaceC2727s);
        Object obj = interfaceC2820O4.get();
        return obj != null ? obj : this.f906c;
    }
}
