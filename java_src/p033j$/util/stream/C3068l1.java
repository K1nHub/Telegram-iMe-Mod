package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.InterfaceC2838x;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.l1 */
/* loaded from: classes2.dex */
public final class C3068l1 implements InterfaceC2936N4 {

    /* renamed from: a */
    private final EnumC3029e4 f1123a;

    /* renamed from: b */
    final EnumC3062k1 f1124b;

    /* renamed from: c */
    final InterfaceC2838x f1125c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3068l1(EnumC3029e4 enumC3029e4, EnumC3062k1 enumC3062k1, InterfaceC2838x interfaceC2838x) {
        this.f1123a = enumC3029e4;
        this.f1124b = enumC3062k1;
        this.f1125c = interfaceC2838x;
    }

    @Override // p033j$.util.stream.InterfaceC2936N4
    /* renamed from: b */
    public int mo426b() {
        return EnumC3023d4.f1059u | EnumC3023d4.f1056r;
    }

    @Override // p033j$.util.stream.InterfaceC2936N4
    /* renamed from: c */
    public Object mo425c(AbstractC3147y2 abstractC3147y2, Spliterator spliterator) {
        return (Boolean) new C3074m1(this, abstractC3147y2, spliterator).invoke();
    }

    @Override // p033j$.util.stream.InterfaceC2936N4
    /* renamed from: d */
    public Object mo424d(AbstractC3147y2 abstractC3147y2, Spliterator spliterator) {
        AbstractC3056j1 abstractC3056j1 = (AbstractC3056j1) this.f1125c.get();
        AbstractC3012c abstractC3012c = (AbstractC3012c) abstractC3147y2;
        Objects.requireNonNull(abstractC3056j1);
        abstractC3012c.mo359m0(abstractC3012c.mo351u0(abstractC3056j1), spliterator);
        return Boolean.valueOf(abstractC3056j1.f1109b);
    }
}
