package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.InterfaceC2839y;
import p033j$.util.function.Predicate;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.d0 */
/* loaded from: classes2.dex */
public final class C3023d0 implements InterfaceC2940N4 {

    /* renamed from: a */
    private final EnumC3033e4 f989a;

    /* renamed from: b */
    final boolean f990b;

    /* renamed from: c */
    final Object f991c;

    /* renamed from: d */
    final Predicate f992d;

    /* renamed from: e */
    final InterfaceC2839y f993e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3023d0(boolean z, EnumC3033e4 enumC3033e4, Object obj, Predicate predicate, InterfaceC2839y interfaceC2839y) {
        this.f990b = z;
        this.f989a = enumC3033e4;
        this.f991c = obj;
        this.f992d = predicate;
        this.f993e = interfaceC2839y;
    }

    @Override // p033j$.util.stream.InterfaceC2940N4
    /* renamed from: b */
    public int mo380b() {
        return EnumC3027d4.f1009u | (this.f990b ? 0 : EnumC3027d4.f1006r);
    }

    @Override // p033j$.util.stream.InterfaceC2940N4
    /* renamed from: c */
    public Object mo379c(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s) {
        return new C3059j0(this, abstractC3151y2, interfaceC2853s).invoke();
    }

    @Override // p033j$.util.stream.InterfaceC2940N4
    /* renamed from: d */
    public Object mo378d(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s) {
        InterfaceC2946O4 interfaceC2946O4 = (InterfaceC2946O4) this.f993e.get();
        AbstractC3016c abstractC3016c = (AbstractC3016c) abstractC3151y2;
        Objects.requireNonNull(interfaceC2946O4);
        abstractC3016c.mo313n0(abstractC3016c.mo305v0(interfaceC2946O4), interfaceC2853s);
        Object obj = interfaceC2946O4.get();
        return obj != null ? obj : this.f991c;
    }
}
