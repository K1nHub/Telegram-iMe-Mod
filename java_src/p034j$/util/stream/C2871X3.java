package p034j$.util.stream;

import p034j$.util.AbstractC2656I;
import p034j$.util.AbstractC2659a;
import p034j$.util.InterfaceC2732s;
import p034j$.util.InterfaceC3039t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2710q;
import p034j$.util.stream.AbstractC2881Z3;
/* renamed from: j$.util.stream.X3 */
/* loaded from: classes2.dex */
class C2871X3 extends AbstractC2881Z3.AbstractC2882a implements InterfaceC2732s.InterfaceC2735c {

    /* renamed from: g */
    final /* synthetic */ C2876Y3 f860g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2871X3(C2876Y3 c2876y3, int i, int i2, int i3, int i4) {
        super(i, i2, i3, i4);
        this.f860g = c2876y3;
    }

    @Override // p034j$.util.stream.AbstractC2881Z3.AbstractC2882a
    /* renamed from: a */
    void mo455a(Object obj, int i, Object obj2) {
        ((InterfaceC2710q) obj2).accept(((long[]) obj)[i]);
    }

    @Override // p034j$.util.InterfaceC2732s
    /* renamed from: b */
    public /* synthetic */ boolean mo113b(Consumer consumer) {
        return AbstractC2659a.m599l(this, consumer);
    }

    @Override // p034j$.util.stream.AbstractC2881Z3.AbstractC2882a
    /* renamed from: f */
    InterfaceC3039t mo451f(Object obj, int i, int i2) {
        return AbstractC2656I.m615l((long[]) obj, i, i2 + i, 1040);
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2659a.m607d(this, consumer);
    }

    @Override // p034j$.util.stream.AbstractC2881Z3.AbstractC2882a
    /* renamed from: h */
    InterfaceC3039t mo449h(int i, int i2, int i3, int i4) {
        return new C2871X3(this.f860g, i, i2, i3, i4);
    }
}
