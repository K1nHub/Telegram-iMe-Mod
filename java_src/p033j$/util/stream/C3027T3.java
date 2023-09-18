package p033j$.util.stream;

import p033j$.util.AbstractC2832I;
import p033j$.util.AbstractC2835a;
import p033j$.util.InterfaceC2908s;
import p033j$.util.InterfaceC3215t;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2875f;
import p033j$.util.stream.AbstractC3057Z3;
/* renamed from: j$.util.stream.T3 */
/* loaded from: classes2.dex */
class C3027T3 extends AbstractC3057Z3.AbstractC3058a implements InterfaceC2908s.InterfaceC2909a {

    /* renamed from: g */
    final /* synthetic */ C3032U3 f932g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3027T3(C3032U3 c3032u3, int i, int i2, int i3, int i4) {
        super(i, i2, i3, i4);
        this.f932g = c3032u3;
    }

    @Override // p033j$.util.stream.AbstractC3057Z3.AbstractC3058a
    /* renamed from: a */
    void mo473a(Object obj, int i, Object obj2) {
        ((InterfaceC2875f) obj2).accept(((double[]) obj)[i]);
    }

    @Override // p033j$.util.InterfaceC2908s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return AbstractC2835a.m619j(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC3057Z3.AbstractC3058a
    /* renamed from: f */
    InterfaceC3215t mo469f(Object obj, int i, int i2) {
        return AbstractC2832I.m635j((double[]) obj, i, i2 + i, 1040);
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2835a.m627b(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC3057Z3.AbstractC3058a
    /* renamed from: h */
    InterfaceC3215t mo467h(int i, int i2, int i3, int i4) {
        return new C3027T3(this.f932g, i, i2, i3, i4);
    }
}
