package p033j$.util.stream;

import p033j$.util.AbstractC2770F;
import p033j$.util.AbstractC2840k;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2817f;
import p033j$.util.stream.AbstractC2995Z3;
/* renamed from: j$.util.stream.T3 */
/* loaded from: classes2.dex */
class C2965T3 extends AbstractC2995Z3.AbstractC2996a implements Spliterator.InterfaceC2773a {

    /* renamed from: g */
    final /* synthetic */ C2970U3 f981g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2965T3(C2970U3 c2970u3, int i, int i2, int i3, int i4) {
        super(i, i2, i3, i4);
        this.f981g = c2970u3;
    }

    @Override // p033j$.util.stream.AbstractC2995Z3.AbstractC2996a
    /* renamed from: a */
    void mo519a(Object obj, int i, Object obj2) {
        ((InterfaceC2817f) obj2).accept(((double[]) obj)[i]);
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo179b(Consumer consumer) {
        return AbstractC2840k.m600f(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC2995Z3.AbstractC2996a
    /* renamed from: f */
    Spliterator.InterfaceC2776d mo515f(Object obj, int i, int i2) {
        return AbstractC2770F.m676j((double[]) obj, i, i2 + i, 1040);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2840k.m605a(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC2995Z3.AbstractC2996a
    /* renamed from: h */
    Spliterator.InterfaceC2776d mo513h(int i, int i2, int i3, int i4) {
        return new C2965T3(this.f981g, i, i2, i3, i4);
    }
}
