package p033j$.util.stream;

import p033j$.util.AbstractC2916I;
import p033j$.util.AbstractC2919a;
import p033j$.util.InterfaceC2992s;
import p033j$.util.InterfaceC3299t;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2970q;
import p033j$.util.stream.AbstractC3141Z3;
/* renamed from: j$.util.stream.X3 */
/* loaded from: classes2.dex */
class C3131X3 extends AbstractC3141Z3.AbstractC3142a implements InterfaceC2992s.InterfaceC2995c {

    /* renamed from: g */
    final /* synthetic */ C3136Y3 f955g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3131X3(C3136Y3 c3136y3, int i, int i2, int i3, int i4) {
        super(i, i2, i3, i4);
        this.f955g = c3136y3;
    }

    @Override // p033j$.util.stream.AbstractC3141Z3.AbstractC3142a
    /* renamed from: a */
    void mo473a(Object obj, int i, Object obj2) {
        ((InterfaceC2970q) obj2).accept(((long[]) obj)[i]);
    }

    @Override // p033j$.util.InterfaceC2992s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return AbstractC2919a.m617l(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC3141Z3.AbstractC3142a
    /* renamed from: f */
    InterfaceC3299t mo469f(Object obj, int i, int i2) {
        return AbstractC2916I.m633l((long[]) obj, i, i2 + i, 1040);
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2919a.m625d(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC3141Z3.AbstractC3142a
    /* renamed from: h */
    InterfaceC3299t mo467h(int i, int i2, int i3, int i4) {
        return new C3131X3(this.f955g, i, i2, i3, i4);
    }
}
