package p033j$.util.stream;

import p033j$.util.AbstractC2769F;
import p033j$.util.AbstractC2839k;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2816f;
import p033j$.util.stream.AbstractC2994Z3;
/* renamed from: j$.util.stream.T3 */
/* loaded from: classes2.dex */
class C2964T3 extends AbstractC2994Z3.AbstractC2995a implements Spliterator.InterfaceC2772a {

    /* renamed from: g */
    final /* synthetic */ C2969U3 f981g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2964T3(C2969U3 c2969u3, int i, int i2, int i3, int i4) {
        super(i, i2, i3, i4);
        this.f981g = c2969u3;
    }

    @Override // p033j$.util.stream.AbstractC2994Z3.AbstractC2995a
    /* renamed from: a */
    void mo518a(Object obj, int i, Object obj2) {
        ((InterfaceC2816f) obj2).accept(((double[]) obj)[i]);
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo178b(Consumer consumer) {
        return AbstractC2839k.m599f(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC2994Z3.AbstractC2995a
    /* renamed from: f */
    Spliterator.InterfaceC2775d mo514f(Object obj, int i, int i2) {
        return AbstractC2769F.m675j((double[]) obj, i, i2 + i, 1040);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2839k.m604a(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC2994Z3.AbstractC2995a
    /* renamed from: h */
    Spliterator.InterfaceC2775d mo512h(int i, int i2, int i3, int i4) {
        return new C2964T3(this.f981g, i, i2, i3, i4);
    }
}
