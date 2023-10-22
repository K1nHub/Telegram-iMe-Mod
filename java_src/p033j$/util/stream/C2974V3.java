package p033j$.util.stream;

import p033j$.util.AbstractC2769F;
import p033j$.util.AbstractC2839k;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2822l;
import p033j$.util.stream.AbstractC2994Z3;
/* renamed from: j$.util.stream.V3 */
/* loaded from: classes2.dex */
class C2974V3 extends AbstractC2994Z3.AbstractC2995a implements Spliterator.InterfaceC2773b {

    /* renamed from: g */
    final /* synthetic */ C2979W3 f987g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2974V3(C2979W3 c2979w3, int i, int i2, int i3, int i4) {
        super(i, i2, i3, i4);
        this.f987g = c2979w3;
    }

    @Override // p033j$.util.stream.AbstractC2994Z3.AbstractC2995a
    /* renamed from: a */
    void mo518a(Object obj, int i, Object obj2) {
        ((InterfaceC2822l) obj2).accept(((int[]) obj)[i]);
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo178b(Consumer consumer) {
        return AbstractC2839k.m598g(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC2994Z3.AbstractC2995a
    /* renamed from: f */
    Spliterator.InterfaceC2775d mo514f(Object obj, int i, int i2) {
        return AbstractC2769F.m674k((int[]) obj, i, i2 + i, 1040);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2839k.m603b(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC2994Z3.AbstractC2995a
    /* renamed from: h */
    Spliterator.InterfaceC2775d mo512h(int i, int i2, int i3, int i4) {
        return new C2974V3(this.f987g, i, i2, i3, i4);
    }
}
