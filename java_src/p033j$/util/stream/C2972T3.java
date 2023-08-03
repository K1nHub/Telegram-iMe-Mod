package p033j$.util.stream;

import p033j$.util.AbstractC2777I;
import p033j$.util.AbstractC2780a;
import p033j$.util.InterfaceC2853s;
import p033j$.util.InterfaceC3160t;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2820f;
import p033j$.util.stream.AbstractC3002Z3;
/* renamed from: j$.util.stream.T3 */
/* loaded from: classes2.dex */
class C2972T3 extends AbstractC3002Z3.AbstractC3003a implements InterfaceC2853s.InterfaceC2854a {

    /* renamed from: g */
    final /* synthetic */ C2977U3 f931g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2972T3(C2977U3 c2977u3, int i, int i2, int i3, int i4) {
        super(i, i2, i3, i4);
        this.f931g = c2977u3;
    }

    @Override // p033j$.util.stream.AbstractC3002Z3.AbstractC3003a
    /* renamed from: a */
    void mo473a(Object obj, int i, Object obj2) {
        ((InterfaceC2820f) obj2).accept(((double[]) obj)[i]);
    }

    @Override // p033j$.util.InterfaceC2853s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return AbstractC2780a.m619j(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC3002Z3.AbstractC3003a
    /* renamed from: f */
    InterfaceC3160t mo469f(Object obj, int i, int i2) {
        return AbstractC2777I.m635j((double[]) obj, i, i2 + i, 1040);
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2780a.m627b(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC3002Z3.AbstractC3003a
    /* renamed from: h */
    InterfaceC3160t mo467h(int i, int i2, int i3, int i4) {
        return new C2972T3(this.f931g, i, i2, i3, i4);
    }
}
