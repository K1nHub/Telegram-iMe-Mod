package p033j$.util.stream;

import p033j$.util.AbstractC2777I;
import p033j$.util.AbstractC2780a;
import p033j$.util.InterfaceC2853s;
import p033j$.util.InterfaceC3160t;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2831q;
import p033j$.util.stream.AbstractC3002Z3;
/* renamed from: j$.util.stream.X3 */
/* loaded from: classes2.dex */
class C2992X3 extends AbstractC3002Z3.AbstractC3003a implements InterfaceC2853s.InterfaceC2856c {

    /* renamed from: g */
    final /* synthetic */ C2997Y3 f945g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2992X3(C2997Y3 c2997y3, int i, int i2, int i3, int i4) {
        super(i, i2, i3, i4);
        this.f945g = c2997y3;
    }

    @Override // p033j$.util.stream.AbstractC3002Z3.AbstractC3003a
    /* renamed from: a */
    void mo473a(Object obj, int i, Object obj2) {
        ((InterfaceC2831q) obj2).accept(((long[]) obj)[i]);
    }

    @Override // p033j$.util.InterfaceC2853s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return AbstractC2780a.m617l(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC3002Z3.AbstractC3003a
    /* renamed from: f */
    InterfaceC3160t mo469f(Object obj, int i, int i2) {
        return AbstractC2777I.m633l((long[]) obj, i, i2 + i, 1040);
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2780a.m625d(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC3002Z3.AbstractC3003a
    /* renamed from: h */
    InterfaceC3160t mo467h(int i, int i2, int i3, int i4) {
        return new C2992X3(this.f945g, i, i2, i3, i4);
    }
}
