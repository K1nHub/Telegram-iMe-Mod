package p033j$.util.stream;

import p033j$.util.AbstractC2916I;
import p033j$.util.AbstractC2919a;
import p033j$.util.InterfaceC2992s;
import p033j$.util.InterfaceC3299t;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2965l;
import p033j$.util.stream.AbstractC3141Z3;
/* renamed from: j$.util.stream.V3 */
/* loaded from: classes2.dex */
class C3121V3 extends AbstractC3141Z3.AbstractC3142a implements InterfaceC2992s.InterfaceC2994b {

    /* renamed from: g */
    final /* synthetic */ C3126W3 f947g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3121V3(C3126W3 c3126w3, int i, int i2, int i3, int i4) {
        super(i, i2, i3, i4);
        this.f947g = c3126w3;
    }

    @Override // p033j$.util.stream.AbstractC3141Z3.AbstractC3142a
    /* renamed from: a */
    void mo473a(Object obj, int i, Object obj2) {
        ((InterfaceC2965l) obj2).accept(((int[]) obj)[i]);
    }

    @Override // p033j$.util.InterfaceC2992s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return AbstractC2919a.m618k(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC3141Z3.AbstractC3142a
    /* renamed from: f */
    InterfaceC3299t mo469f(Object obj, int i, int i2) {
        return AbstractC2916I.m634k((int[]) obj, i, i2 + i, 1040);
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2919a.m626c(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC3141Z3.AbstractC3142a
    /* renamed from: h */
    InterfaceC3299t mo467h(int i, int i2, int i3, int i4) {
        return new C3121V3(this.f947g, i, i2, i3, i4);
    }
}
