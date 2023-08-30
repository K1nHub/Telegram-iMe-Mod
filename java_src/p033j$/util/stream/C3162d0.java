package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.InterfaceC2978y;
import p033j$.util.function.Predicate;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.d0 */
/* loaded from: classes2.dex */
public final class C3162d0 implements InterfaceC3079N4 {

    /* renamed from: a */
    private final EnumC3172e4 f999a;

    /* renamed from: b */
    final boolean f1000b;

    /* renamed from: c */
    final Object f1001c;

    /* renamed from: d */
    final Predicate f1002d;

    /* renamed from: e */
    final InterfaceC2978y f1003e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3162d0(boolean z, EnumC3172e4 enumC3172e4, Object obj, Predicate predicate, InterfaceC2978y interfaceC2978y) {
        this.f1000b = z;
        this.f999a = enumC3172e4;
        this.f1001c = obj;
        this.f1002d = predicate;
        this.f1003e = interfaceC2978y;
    }

    @Override // p033j$.util.stream.InterfaceC3079N4
    /* renamed from: b */
    public int mo380b() {
        return EnumC3166d4.f1019u | (this.f1000b ? 0 : EnumC3166d4.f1016r);
    }

    @Override // p033j$.util.stream.InterfaceC3079N4
    /* renamed from: c */
    public Object mo379c(AbstractC3290y2 abstractC3290y2, InterfaceC2992s interfaceC2992s) {
        return new C3198j0(this, abstractC3290y2, interfaceC2992s).invoke();
    }

    @Override // p033j$.util.stream.InterfaceC3079N4
    /* renamed from: d */
    public Object mo378d(AbstractC3290y2 abstractC3290y2, InterfaceC2992s interfaceC2992s) {
        InterfaceC3085O4 interfaceC3085O4 = (InterfaceC3085O4) this.f1003e.get();
        AbstractC3155c abstractC3155c = (AbstractC3155c) abstractC3290y2;
        Objects.requireNonNull(interfaceC3085O4);
        abstractC3155c.mo313n0(abstractC3155c.mo305v0(interfaceC3085O4), interfaceC2992s);
        Object obj = interfaceC3085O4.get();
        return obj != null ? obj : this.f1001c;
    }
}
