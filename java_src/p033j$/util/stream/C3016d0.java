package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.InterfaceC2835x;
import p033j$.util.function.Predicate;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.d0 */
/* loaded from: classes2.dex */
public final class C3016d0 implements InterfaceC2933N4 {

    /* renamed from: a */
    private final EnumC3026e4 f1039a;

    /* renamed from: b */
    final boolean f1040b;

    /* renamed from: c */
    final Object f1041c;

    /* renamed from: d */
    final Predicate f1042d;

    /* renamed from: e */
    final InterfaceC2835x f1043e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3016d0(boolean z, EnumC3026e4 enumC3026e4, Object obj, Predicate predicate, InterfaceC2835x interfaceC2835x) {
        this.f1040b = z;
        this.f1039a = enumC3026e4;
        this.f1041c = obj;
        this.f1042d = predicate;
        this.f1043e = interfaceC2835x;
    }

    @Override // p033j$.util.stream.InterfaceC2933N4
    /* renamed from: b */
    public int mo426b() {
        return EnumC3020d4.f1059u | (this.f1040b ? 0 : EnumC3020d4.f1056r);
    }

    @Override // p033j$.util.stream.InterfaceC2933N4
    /* renamed from: c */
    public Object mo425c(AbstractC3144y2 abstractC3144y2, Spliterator spliterator) {
        return new C3052j0(this, abstractC3144y2, spliterator).invoke();
    }

    @Override // p033j$.util.stream.InterfaceC2933N4
    /* renamed from: d */
    public Object mo424d(AbstractC3144y2 abstractC3144y2, Spliterator spliterator) {
        InterfaceC2939O4 interfaceC2939O4 = (InterfaceC2939O4) this.f1043e.get();
        AbstractC3009c abstractC3009c = (AbstractC3009c) abstractC3144y2;
        Objects.requireNonNull(interfaceC2939O4);
        abstractC3009c.mo359m0(abstractC3009c.mo351u0(interfaceC2939O4), spliterator);
        Object obj = interfaceC2939O4.get();
        return obj != null ? obj : this.f1041c;
    }
}
