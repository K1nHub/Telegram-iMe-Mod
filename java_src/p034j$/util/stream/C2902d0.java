package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.InterfaceC2718y;
import p034j$.util.function.Predicate;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.d0 */
/* loaded from: classes2.dex */
public final class C2902d0 implements InterfaceC2819N4 {

    /* renamed from: a */
    private final EnumC2912e4 f904a;

    /* renamed from: b */
    final boolean f905b;

    /* renamed from: c */
    final Object f906c;

    /* renamed from: d */
    final Predicate f907d;

    /* renamed from: e */
    final InterfaceC2718y f908e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2902d0(boolean z, EnumC2912e4 enumC2912e4, Object obj, Predicate predicate, InterfaceC2718y interfaceC2718y) {
        this.f905b = z;
        this.f904a = enumC2912e4;
        this.f906c = obj;
        this.f907d = predicate;
        this.f908e = interfaceC2718y;
    }

    @Override // p034j$.util.stream.InterfaceC2819N4
    /* renamed from: b */
    public int mo362b() {
        return EnumC2906d4.f924u | (this.f905b ? 0 : EnumC2906d4.f921r);
    }

    @Override // p034j$.util.stream.InterfaceC2819N4
    /* renamed from: c */
    public Object mo361c(AbstractC3030y2 abstractC3030y2, InterfaceC2732s interfaceC2732s) {
        return new C2938j0(this, abstractC3030y2, interfaceC2732s).invoke();
    }

    @Override // p034j$.util.stream.InterfaceC2819N4
    /* renamed from: d */
    public Object mo360d(AbstractC3030y2 abstractC3030y2, InterfaceC2732s interfaceC2732s) {
        InterfaceC2825O4 interfaceC2825O4 = (InterfaceC2825O4) this.f908e.get();
        AbstractC2895c abstractC2895c = (AbstractC2895c) abstractC3030y2;
        Objects.requireNonNull(interfaceC2825O4);
        abstractC2895c.mo295n0(abstractC2895c.mo287v0(interfaceC2825O4), interfaceC2732s);
        Object obj = interfaceC2825O4.get();
        return obj != null ? obj : this.f906c;
    }
}
