package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.InterfaceC2835x;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.l1 */
/* loaded from: classes2.dex */
public final class C3065l1 implements InterfaceC2933N4 {

    /* renamed from: a */
    private final EnumC3026e4 f1123a;

    /* renamed from: b */
    final EnumC3059k1 f1124b;

    /* renamed from: c */
    final InterfaceC2835x f1125c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3065l1(EnumC3026e4 enumC3026e4, EnumC3059k1 enumC3059k1, InterfaceC2835x interfaceC2835x) {
        this.f1123a = enumC3026e4;
        this.f1124b = enumC3059k1;
        this.f1125c = interfaceC2835x;
    }

    @Override // p033j$.util.stream.InterfaceC2933N4
    /* renamed from: b */
    public int mo426b() {
        return EnumC3020d4.f1059u | EnumC3020d4.f1056r;
    }

    @Override // p033j$.util.stream.InterfaceC2933N4
    /* renamed from: c */
    public Object mo425c(AbstractC3144y2 abstractC3144y2, Spliterator spliterator) {
        return (Boolean) new C3071m1(this, abstractC3144y2, spliterator).invoke();
    }

    @Override // p033j$.util.stream.InterfaceC2933N4
    /* renamed from: d */
    public Object mo424d(AbstractC3144y2 abstractC3144y2, Spliterator spliterator) {
        AbstractC3053j1 abstractC3053j1 = (AbstractC3053j1) this.f1125c.get();
        AbstractC3009c abstractC3009c = (AbstractC3009c) abstractC3144y2;
        Objects.requireNonNull(abstractC3053j1);
        abstractC3009c.mo359m0(abstractC3009c.mo351u0(abstractC3053j1), spliterator);
        return Boolean.valueOf(abstractC3053j1.f1109b);
    }
}
