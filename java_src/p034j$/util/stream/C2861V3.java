package p034j$.util.stream;

import p034j$.util.AbstractC2656I;
import p034j$.util.AbstractC2659a;
import p034j$.util.InterfaceC2732s;
import p034j$.util.InterfaceC3039t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2705l;
import p034j$.util.stream.AbstractC2881Z3;
/* renamed from: j$.util.stream.V3 */
/* loaded from: classes2.dex */
class C2861V3 extends AbstractC2881Z3.AbstractC2882a implements InterfaceC2732s.InterfaceC2734b {

    /* renamed from: g */
    final /* synthetic */ C2866W3 f852g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2861V3(C2866W3 c2866w3, int i, int i2, int i3, int i4) {
        super(i, i2, i3, i4);
        this.f852g = c2866w3;
    }

    @Override // p034j$.util.stream.AbstractC2881Z3.AbstractC2882a
    /* renamed from: a */
    void mo455a(Object obj, int i, Object obj2) {
        ((InterfaceC2705l) obj2).accept(((int[]) obj)[i]);
    }

    @Override // p034j$.util.InterfaceC2732s
    /* renamed from: b */
    public /* synthetic */ boolean mo113b(Consumer consumer) {
        return AbstractC2659a.m600k(this, consumer);
    }

    @Override // p034j$.util.stream.AbstractC2881Z3.AbstractC2882a
    /* renamed from: f */
    InterfaceC3039t mo451f(Object obj, int i, int i2) {
        return AbstractC2656I.m616k((int[]) obj, i, i2 + i, 1040);
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2659a.m608c(this, consumer);
    }

    @Override // p034j$.util.stream.AbstractC2881Z3.AbstractC2882a
    /* renamed from: h */
    InterfaceC3039t mo449h(int i, int i2, int i3, int i4) {
        return new C2861V3(this.f852g, i, i2, i3, i4);
    }
}
