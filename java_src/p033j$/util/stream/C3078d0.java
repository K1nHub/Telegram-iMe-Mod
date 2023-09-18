package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.InterfaceC2908s;
import p033j$.util.function.InterfaceC2894y;
import p033j$.util.function.Predicate;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.d0 */
/* loaded from: classes2.dex */
public final class C3078d0 implements InterfaceC2995N4 {

    /* renamed from: a */
    private final EnumC3088e4 f990a;

    /* renamed from: b */
    final boolean f991b;

    /* renamed from: c */
    final Object f992c;

    /* renamed from: d */
    final Predicate f993d;

    /* renamed from: e */
    final InterfaceC2894y f994e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3078d0(boolean z, EnumC3088e4 enumC3088e4, Object obj, Predicate predicate, InterfaceC2894y interfaceC2894y) {
        this.f991b = z;
        this.f990a = enumC3088e4;
        this.f992c = obj;
        this.f993d = predicate;
        this.f994e = interfaceC2894y;
    }

    @Override // p033j$.util.stream.InterfaceC2995N4
    /* renamed from: b */
    public int mo380b() {
        return EnumC3082d4.f1010u | (this.f991b ? 0 : EnumC3082d4.f1007r);
    }

    @Override // p033j$.util.stream.InterfaceC2995N4
    /* renamed from: c */
    public Object mo379c(AbstractC3206y2 abstractC3206y2, InterfaceC2908s interfaceC2908s) {
        return new C3114j0(this, abstractC3206y2, interfaceC2908s).invoke();
    }

    @Override // p033j$.util.stream.InterfaceC2995N4
    /* renamed from: d */
    public Object mo378d(AbstractC3206y2 abstractC3206y2, InterfaceC2908s interfaceC2908s) {
        InterfaceC3001O4 interfaceC3001O4 = (InterfaceC3001O4) this.f994e.get();
        AbstractC3071c abstractC3071c = (AbstractC3071c) abstractC3206y2;
        Objects.requireNonNull(interfaceC3001O4);
        abstractC3071c.mo313n0(abstractC3071c.mo305v0(interfaceC3001O4), interfaceC2908s);
        Object obj = interfaceC3001O4.get();
        return obj != null ? obj : this.f992c;
    }
}
