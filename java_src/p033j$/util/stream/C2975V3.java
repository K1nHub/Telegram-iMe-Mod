package p033j$.util.stream;

import p033j$.util.AbstractC2770F;
import p033j$.util.AbstractC2840k;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2823l;
import p033j$.util.stream.AbstractC2995Z3;
/* renamed from: j$.util.stream.V3 */
/* loaded from: classes2.dex */
class C2975V3 extends AbstractC2995Z3.AbstractC2996a implements Spliterator.InterfaceC2774b {

    /* renamed from: g */
    final /* synthetic */ C2980W3 f987g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2975V3(C2980W3 c2980w3, int i, int i2, int i3, int i4) {
        super(i, i2, i3, i4);
        this.f987g = c2980w3;
    }

    @Override // p033j$.util.stream.AbstractC2995Z3.AbstractC2996a
    /* renamed from: a */
    void mo519a(Object obj, int i, Object obj2) {
        ((InterfaceC2823l) obj2).accept(((int[]) obj)[i]);
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo179b(Consumer consumer) {
        return AbstractC2840k.m599g(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC2995Z3.AbstractC2996a
    /* renamed from: f */
    Spliterator.InterfaceC2776d mo515f(Object obj, int i, int i2) {
        return AbstractC2770F.m675k((int[]) obj, i, i2 + i, 1040);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2840k.m604b(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC2995Z3.AbstractC2996a
    /* renamed from: h */
    Spliterator.InterfaceC2776d mo513h(int i, int i2, int i3, int i4) {
        return new C2975V3(this.f987g, i, i2, i3, i4);
    }
}
