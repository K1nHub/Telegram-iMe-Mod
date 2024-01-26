package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.InterfaceC2833x;
import p033j$.util.function.Predicate;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.d0 */
/* loaded from: classes2.dex */
public final class C3014d0 implements InterfaceC2931N4 {

    /* renamed from: a */
    private final EnumC3024e4 f1039a;

    /* renamed from: b */
    final boolean f1040b;

    /* renamed from: c */
    final Object f1041c;

    /* renamed from: d */
    final Predicate f1042d;

    /* renamed from: e */
    final InterfaceC2833x f1043e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3014d0(boolean z, EnumC3024e4 enumC3024e4, Object obj, Predicate predicate, InterfaceC2833x interfaceC2833x) {
        this.f1040b = z;
        this.f1039a = enumC3024e4;
        this.f1041c = obj;
        this.f1042d = predicate;
        this.f1043e = interfaceC2833x;
    }

    @Override // p033j$.util.stream.InterfaceC2931N4
    /* renamed from: b */
    public int mo429b() {
        return EnumC3018d4.f1059u | (this.f1040b ? 0 : EnumC3018d4.f1056r);
    }

    @Override // p033j$.util.stream.InterfaceC2931N4
    /* renamed from: c */
    public Object mo428c(AbstractC3142y2 abstractC3142y2, Spliterator spliterator) {
        return new C3050j0(this, abstractC3142y2, spliterator).invoke();
    }

    @Override // p033j$.util.stream.InterfaceC2931N4
    /* renamed from: d */
    public Object mo427d(AbstractC3142y2 abstractC3142y2, Spliterator spliterator) {
        InterfaceC2937O4 interfaceC2937O4 = (InterfaceC2937O4) this.f1043e.get();
        AbstractC3007c abstractC3007c = (AbstractC3007c) abstractC3142y2;
        Objects.requireNonNull(interfaceC2937O4);
        abstractC3007c.mo362m0(abstractC3007c.mo354u0(interfaceC2937O4), spliterator);
        Object obj = interfaceC2937O4.get();
        return obj != null ? obj : this.f1041c;
    }
}
