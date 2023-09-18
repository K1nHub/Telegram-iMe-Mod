package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.InterfaceC2908s;
import p033j$.util.function.InterfaceC2894y;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.l1 */
/* loaded from: classes2.dex */
public final class C3127l1 implements InterfaceC2995N4 {

    /* renamed from: a */
    private final EnumC3088e4 f1074a;

    /* renamed from: b */
    final EnumC3121k1 f1075b;

    /* renamed from: c */
    final InterfaceC2894y f1076c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3127l1(EnumC3088e4 enumC3088e4, EnumC3121k1 enumC3121k1, InterfaceC2894y interfaceC2894y) {
        this.f1074a = enumC3088e4;
        this.f1075b = enumC3121k1;
        this.f1076c = interfaceC2894y;
    }

    @Override // p033j$.util.stream.InterfaceC2995N4
    /* renamed from: b */
    public int mo380b() {
        return EnumC3082d4.f1010u | EnumC3082d4.f1007r;
    }

    @Override // p033j$.util.stream.InterfaceC2995N4
    /* renamed from: c */
    public Object mo379c(AbstractC3206y2 abstractC3206y2, InterfaceC2908s interfaceC2908s) {
        return (Boolean) new C3133m1(this, abstractC3206y2, interfaceC2908s).invoke();
    }

    @Override // p033j$.util.stream.InterfaceC2995N4
    /* renamed from: d */
    public Object mo378d(AbstractC3206y2 abstractC3206y2, InterfaceC2908s interfaceC2908s) {
        AbstractC3115j1 abstractC3115j1 = (AbstractC3115j1) this.f1076c.get();
        AbstractC3071c abstractC3071c = (AbstractC3071c) abstractC3206y2;
        Objects.requireNonNull(abstractC3115j1);
        abstractC3071c.mo313n0(abstractC3071c.mo305v0(abstractC3115j1), interfaceC2908s);
        return Boolean.valueOf(abstractC3115j1.f1060b);
    }
}
