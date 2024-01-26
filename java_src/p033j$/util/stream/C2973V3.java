package p033j$.util.stream;

import p033j$.util.AbstractC2768F;
import p033j$.util.AbstractC2838k;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2821l;
import p033j$.util.stream.AbstractC2993Z3;
/* renamed from: j$.util.stream.V3 */
/* loaded from: classes2.dex */
class C2973V3 extends AbstractC2993Z3.AbstractC2994a implements Spliterator.InterfaceC2772b {

    /* renamed from: g */
    final /* synthetic */ C2978W3 f987g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2973V3(C2978W3 c2978w3, int i, int i2, int i3, int i4) {
        super(i, i2, i3, i4);
        this.f987g = c2978w3;
    }

    @Override // p033j$.util.stream.AbstractC2993Z3.AbstractC2994a
    /* renamed from: a */
    void mo522a(Object obj, int i, Object obj2) {
        ((InterfaceC2821l) obj2).accept(((int[]) obj)[i]);
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo182b(Consumer consumer) {
        return AbstractC2838k.m602g(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC2993Z3.AbstractC2994a
    /* renamed from: f */
    Spliterator.InterfaceC2774d mo518f(Object obj, int i, int i2) {
        return AbstractC2768F.m678k((int[]) obj, i, i2 + i, 1040);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2838k.m607b(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC2993Z3.AbstractC2994a
    /* renamed from: h */
    Spliterator.InterfaceC2774d mo516h(int i, int i2, int i3, int i4) {
        return new C2973V3(this.f987g, i, i2, i3, i4);
    }
}
