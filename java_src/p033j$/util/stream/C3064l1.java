package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.InterfaceC2834x;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.l1 */
/* loaded from: classes2.dex */
public final class C3064l1 implements InterfaceC2932N4 {

    /* renamed from: a */
    private final EnumC3025e4 f1123a;

    /* renamed from: b */
    final EnumC3058k1 f1124b;

    /* renamed from: c */
    final InterfaceC2834x f1125c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3064l1(EnumC3025e4 enumC3025e4, EnumC3058k1 enumC3058k1, InterfaceC2834x interfaceC2834x) {
        this.f1123a = enumC3025e4;
        this.f1124b = enumC3058k1;
        this.f1125c = interfaceC2834x;
    }

    @Override // p033j$.util.stream.InterfaceC2932N4
    /* renamed from: b */
    public int mo425b() {
        return EnumC3019d4.f1059u | EnumC3019d4.f1056r;
    }

    @Override // p033j$.util.stream.InterfaceC2932N4
    /* renamed from: c */
    public Object mo424c(AbstractC3143y2 abstractC3143y2, Spliterator spliterator) {
        return (Boolean) new C3070m1(this, abstractC3143y2, spliterator).invoke();
    }

    @Override // p033j$.util.stream.InterfaceC2932N4
    /* renamed from: d */
    public Object mo423d(AbstractC3143y2 abstractC3143y2, Spliterator spliterator) {
        AbstractC3052j1 abstractC3052j1 = (AbstractC3052j1) this.f1125c.get();
        AbstractC3008c abstractC3008c = (AbstractC3008c) abstractC3143y2;
        Objects.requireNonNull(abstractC3052j1);
        abstractC3008c.mo358m0(abstractC3008c.mo350u0(abstractC3052j1), spliterator);
        return Boolean.valueOf(abstractC3052j1.f1109b);
    }
}
