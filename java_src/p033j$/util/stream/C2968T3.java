package p033j$.util.stream;

import p033j$.util.AbstractC2773F;
import p033j$.util.AbstractC2843k;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2820f;
import p033j$.util.stream.AbstractC2998Z3;
/* renamed from: j$.util.stream.T3 */
/* loaded from: classes2.dex */
class C2968T3 extends AbstractC2998Z3.AbstractC2999a implements Spliterator.InterfaceC2776a {

    /* renamed from: g */
    final /* synthetic */ C2973U3 f981g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2968T3(C2973U3 c2973u3, int i, int i2, int i3, int i4) {
        super(i, i2, i3, i4);
        this.f981g = c2973u3;
    }

    @Override // p033j$.util.stream.AbstractC2998Z3.AbstractC2999a
    /* renamed from: a */
    void mo519a(Object obj, int i, Object obj2) {
        ((InterfaceC2820f) obj2).accept(((double[]) obj)[i]);
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo179b(Consumer consumer) {
        return AbstractC2843k.m600f(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC2998Z3.AbstractC2999a
    /* renamed from: f */
    Spliterator.InterfaceC2779d mo515f(Object obj, int i, int i2) {
        return AbstractC2773F.m676j((double[]) obj, i, i2 + i, 1040);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2843k.m605a(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC2998Z3.AbstractC2999a
    /* renamed from: h */
    Spliterator.InterfaceC2779d mo513h(int i, int i2, int i3, int i4) {
        return new C2968T3(this.f981g, i, i2, i3, i4);
    }
}
