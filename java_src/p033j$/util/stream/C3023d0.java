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
    private final EnumC3033e4 f986a;

    /* renamed from: b */
    final boolean f987b;

    /* renamed from: c */
    final Object f988c;

    /* renamed from: d */
    final Predicate f989d;

    /* renamed from: e */
    final InterfaceC2839y f990e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3023d0(boolean z, EnumC3033e4 enumC3033e4, Object obj, Predicate predicate, InterfaceC2839y interfaceC2839y) {
        this.f987b = z;
        this.f986a = enumC3033e4;
        this.f988c = obj;
        this.f989d = predicate;
        this.f990e = interfaceC2839y;
    }

    @Override // p033j$.util.stream.InterfaceC2940N4
    /* renamed from: b */
    public int mo362b() {
        return EnumC3027d4.f1006u | (this.f987b ? 0 : EnumC3027d4.f1003r);
    }

    @Override // p033j$.util.stream.InterfaceC2940N4
    /* renamed from: c */
    public Object mo361c(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s) {
        return new C3059j0(this, abstractC3151y2, interfaceC2853s).invoke();
    }

    @Override // p033j$.util.stream.InterfaceC2940N4
    /* renamed from: d */
    public Object mo360d(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s) {
        InterfaceC2946O4 interfaceC2946O4 = (InterfaceC2946O4) this.f990e.get();
        AbstractC3016c abstractC3016c = (AbstractC3016c) abstractC3151y2;
        Objects.requireNonNull(interfaceC2946O4);
        abstractC3016c.mo295n0(abstractC3016c.mo287v0(interfaceC2946O4), interfaceC2853s);
        Object obj = interfaceC2946O4.get();
        return obj != null ? obj : this.f988c;
    }
}
