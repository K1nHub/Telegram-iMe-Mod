package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.InterfaceC2687y;
import p035j$.util.function.Predicate;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.d0 */
/* loaded from: classes2.dex */
public final class C2871d0 implements InterfaceC2788N4 {

    /* renamed from: a */
    private final EnumC2881e4 f906a;

    /* renamed from: b */
    final boolean f907b;

    /* renamed from: c */
    final Object f908c;

    /* renamed from: d */
    final Predicate f909d;

    /* renamed from: e */
    final InterfaceC2687y f910e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2871d0(boolean z, EnumC2881e4 enumC2881e4, Object obj, Predicate predicate, InterfaceC2687y interfaceC2687y) {
        this.f907b = z;
        this.f906a = enumC2881e4;
        this.f908c = obj;
        this.f909d = predicate;
        this.f910e = interfaceC2687y;
    }

    @Override // p035j$.util.stream.InterfaceC2788N4
    /* renamed from: b */
    public int mo371b() {
        return EnumC2875d4.f926u | (this.f907b ? 0 : EnumC2875d4.f923r);
    }

    @Override // p035j$.util.stream.InterfaceC2788N4
    /* renamed from: c */
    public Object mo370c(AbstractC2999y2 abstractC2999y2, InterfaceC2701s interfaceC2701s) {
        return new C2907j0(this, abstractC2999y2, interfaceC2701s).invoke();
    }

    @Override // p035j$.util.stream.InterfaceC2788N4
    /* renamed from: d */
    public Object mo369d(AbstractC2999y2 abstractC2999y2, InterfaceC2701s interfaceC2701s) {
        InterfaceC2794O4 interfaceC2794O4 = (InterfaceC2794O4) this.f910e.get();
        AbstractC2864c abstractC2864c = (AbstractC2864c) abstractC2999y2;
        Objects.requireNonNull(interfaceC2794O4);
        abstractC2864c.mo304n0(abstractC2864c.mo296v0(interfaceC2794O4), interfaceC2701s);
        Object obj = interfaceC2794O4.get();
        return obj != null ? obj : this.f908c;
    }
}
