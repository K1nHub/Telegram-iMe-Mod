package p033j$.util.stream;

import p033j$.util.AbstractC2769F;
import p033j$.util.AbstractC2839k;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2826p;
import p033j$.util.stream.AbstractC2994Z3;
/* renamed from: j$.util.stream.X3 */
/* loaded from: classes2.dex */
class C2984X3 extends AbstractC2994Z3.AbstractC2995a implements Spliterator.InterfaceC2774c {

    /* renamed from: g */
    final /* synthetic */ C2989Y3 f995g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2984X3(C2989Y3 c2989y3, int i, int i2, int i3, int i4) {
        super(i, i2, i3, i4);
        this.f995g = c2989y3;
    }

    @Override // p033j$.util.stream.AbstractC2994Z3.AbstractC2995a
    /* renamed from: a */
    void mo518a(Object obj, int i, Object obj2) {
        ((InterfaceC2826p) obj2).accept(((long[]) obj)[i]);
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo178b(Consumer consumer) {
        return AbstractC2839k.m597h(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC2994Z3.AbstractC2995a
    /* renamed from: f */
    Spliterator.InterfaceC2775d mo514f(Object obj, int i, int i2) {
        return AbstractC2769F.m673l((long[]) obj, i, i2 + i, 1040);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2839k.m602c(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC2994Z3.AbstractC2995a
    /* renamed from: h */
    Spliterator.InterfaceC2775d mo512h(int i, int i2, int i3, int i4) {
        return new C2984X3(this.f995g, i, i2, i3, i4);
    }
}
