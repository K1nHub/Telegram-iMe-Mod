package p033j$.util.stream;

import p033j$.util.AbstractC2768F;
import p033j$.util.AbstractC2838k;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2815f;
import p033j$.util.stream.AbstractC2993Z3;
/* renamed from: j$.util.stream.T3 */
/* loaded from: classes2.dex */
class C2963T3 extends AbstractC2993Z3.AbstractC2994a implements Spliterator.InterfaceC2771a {

    /* renamed from: g */
    final /* synthetic */ C2968U3 f981g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2963T3(C2968U3 c2968u3, int i, int i2, int i3, int i4) {
        super(i, i2, i3, i4);
        this.f981g = c2968u3;
    }

    @Override // p033j$.util.stream.AbstractC2993Z3.AbstractC2994a
    /* renamed from: a */
    void mo522a(Object obj, int i, Object obj2) {
        ((InterfaceC2815f) obj2).accept(((double[]) obj)[i]);
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo182b(Consumer consumer) {
        return AbstractC2838k.m603f(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC2993Z3.AbstractC2994a
    /* renamed from: f */
    Spliterator.InterfaceC2774d mo518f(Object obj, int i, int i2) {
        return AbstractC2768F.m679j((double[]) obj, i, i2 + i, 1040);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2838k.m608a(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC2993Z3.AbstractC2994a
    /* renamed from: h */
    Spliterator.InterfaceC2774d mo516h(int i, int i2, int i3, int i4) {
        return new C2963T3(this.f981g, i, i2, i3, i4);
    }
}
