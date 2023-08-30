package p033j$.util.stream;

import p033j$.util.AbstractC2916I;
import p033j$.util.AbstractC2919a;
import p033j$.util.InterfaceC2992s;
import p033j$.util.InterfaceC3299t;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2959f;
import p033j$.util.stream.AbstractC3141Z3;
/* renamed from: j$.util.stream.T3 */
/* loaded from: classes2.dex */
class C3111T3 extends AbstractC3141Z3.AbstractC3142a implements InterfaceC2992s.InterfaceC2993a {

    /* renamed from: g */
    final /* synthetic */ C3116U3 f941g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3111T3(C3116U3 c3116u3, int i, int i2, int i3, int i4) {
        super(i, i2, i3, i4);
        this.f941g = c3116u3;
    }

    @Override // p033j$.util.stream.AbstractC3141Z3.AbstractC3142a
    /* renamed from: a */
    void mo473a(Object obj, int i, Object obj2) {
        ((InterfaceC2959f) obj2).accept(((double[]) obj)[i]);
    }

    @Override // p033j$.util.InterfaceC2992s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return AbstractC2919a.m619j(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC3141Z3.AbstractC3142a
    /* renamed from: f */
    InterfaceC3299t mo469f(Object obj, int i, int i2) {
        return AbstractC2916I.m635j((double[]) obj, i, i2 + i, 1040);
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2919a.m627b(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC3141Z3.AbstractC3142a
    /* renamed from: h */
    InterfaceC3299t mo467h(int i, int i2, int i3, int i4) {
        return new C3111T3(this.f941g, i, i2, i3, i4);
    }
}
