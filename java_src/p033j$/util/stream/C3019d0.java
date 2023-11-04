package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.InterfaceC2838x;
import p033j$.util.function.Predicate;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.d0 */
/* loaded from: classes2.dex */
public final class C3019d0 implements InterfaceC2936N4 {

    /* renamed from: a */
    private final EnumC3029e4 f1039a;

    /* renamed from: b */
    final boolean f1040b;

    /* renamed from: c */
    final Object f1041c;

    /* renamed from: d */
    final Predicate f1042d;

    /* renamed from: e */
    final InterfaceC2838x f1043e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3019d0(boolean z, EnumC3029e4 enumC3029e4, Object obj, Predicate predicate, InterfaceC2838x interfaceC2838x) {
        this.f1040b = z;
        this.f1039a = enumC3029e4;
        this.f1041c = obj;
        this.f1042d = predicate;
        this.f1043e = interfaceC2838x;
    }

    @Override // p033j$.util.stream.InterfaceC2936N4
    /* renamed from: b */
    public int mo426b() {
        return EnumC3023d4.f1059u | (this.f1040b ? 0 : EnumC3023d4.f1056r);
    }

    @Override // p033j$.util.stream.InterfaceC2936N4
    /* renamed from: c */
    public Object mo425c(AbstractC3147y2 abstractC3147y2, Spliterator spliterator) {
        return new C3055j0(this, abstractC3147y2, spliterator).invoke();
    }

    @Override // p033j$.util.stream.InterfaceC2936N4
    /* renamed from: d */
    public Object mo424d(AbstractC3147y2 abstractC3147y2, Spliterator spliterator) {
        InterfaceC2942O4 interfaceC2942O4 = (InterfaceC2942O4) this.f1043e.get();
        AbstractC3012c abstractC3012c = (AbstractC3012c) abstractC3147y2;
        Objects.requireNonNull(interfaceC2942O4);
        abstractC3012c.mo359m0(abstractC3012c.mo351u0(interfaceC2942O4), spliterator);
        Object obj = interfaceC2942O4.get();
        return obj != null ? obj : this.f1041c;
    }
}
