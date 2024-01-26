package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.InterfaceC2833x;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.l1 */
/* loaded from: classes2.dex */
public final class C3063l1 implements InterfaceC2931N4 {

    /* renamed from: a */
    private final EnumC3024e4 f1123a;

    /* renamed from: b */
    final EnumC3057k1 f1124b;

    /* renamed from: c */
    final InterfaceC2833x f1125c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3063l1(EnumC3024e4 enumC3024e4, EnumC3057k1 enumC3057k1, InterfaceC2833x interfaceC2833x) {
        this.f1123a = enumC3024e4;
        this.f1124b = enumC3057k1;
        this.f1125c = interfaceC2833x;
    }

    @Override // p033j$.util.stream.InterfaceC2931N4
    /* renamed from: b */
    public int mo429b() {
        return EnumC3018d4.f1059u | EnumC3018d4.f1056r;
    }

    @Override // p033j$.util.stream.InterfaceC2931N4
    /* renamed from: c */
    public Object mo428c(AbstractC3142y2 abstractC3142y2, Spliterator spliterator) {
        return (Boolean) new C3069m1(this, abstractC3142y2, spliterator).invoke();
    }

    @Override // p033j$.util.stream.InterfaceC2931N4
    /* renamed from: d */
    public Object mo427d(AbstractC3142y2 abstractC3142y2, Spliterator spliterator) {
        AbstractC3051j1 abstractC3051j1 = (AbstractC3051j1) this.f1125c.get();
        AbstractC3007c abstractC3007c = (AbstractC3007c) abstractC3142y2;
        Objects.requireNonNull(abstractC3051j1);
        abstractC3007c.mo362m0(abstractC3007c.mo354u0(abstractC3051j1), spliterator);
        return Boolean.valueOf(abstractC3051j1.f1109b);
    }
}
