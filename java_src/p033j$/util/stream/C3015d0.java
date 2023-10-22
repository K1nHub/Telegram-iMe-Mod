package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.InterfaceC2834x;
import p033j$.util.function.Predicate;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.d0 */
/* loaded from: classes2.dex */
public final class C3015d0 implements InterfaceC2932N4 {

    /* renamed from: a */
    private final EnumC3025e4 f1039a;

    /* renamed from: b */
    final boolean f1040b;

    /* renamed from: c */
    final Object f1041c;

    /* renamed from: d */
    final Predicate f1042d;

    /* renamed from: e */
    final InterfaceC2834x f1043e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3015d0(boolean z, EnumC3025e4 enumC3025e4, Object obj, Predicate predicate, InterfaceC2834x interfaceC2834x) {
        this.f1040b = z;
        this.f1039a = enumC3025e4;
        this.f1041c = obj;
        this.f1042d = predicate;
        this.f1043e = interfaceC2834x;
    }

    @Override // p033j$.util.stream.InterfaceC2932N4
    /* renamed from: b */
    public int mo425b() {
        return EnumC3019d4.f1059u | (this.f1040b ? 0 : EnumC3019d4.f1056r);
    }

    @Override // p033j$.util.stream.InterfaceC2932N4
    /* renamed from: c */
    public Object mo424c(AbstractC3143y2 abstractC3143y2, Spliterator spliterator) {
        return new C3051j0(this, abstractC3143y2, spliterator).invoke();
    }

    @Override // p033j$.util.stream.InterfaceC2932N4
    /* renamed from: d */
    public Object mo423d(AbstractC3143y2 abstractC3143y2, Spliterator spliterator) {
        InterfaceC2938O4 interfaceC2938O4 = (InterfaceC2938O4) this.f1043e.get();
        AbstractC3008c abstractC3008c = (AbstractC3008c) abstractC3143y2;
        Objects.requireNonNull(interfaceC2938O4);
        abstractC3008c.mo358m0(abstractC3008c.mo350u0(interfaceC2938O4), spliterator);
        Object obj = interfaceC2938O4.get();
        return obj != null ? obj : this.f1041c;
    }
}
