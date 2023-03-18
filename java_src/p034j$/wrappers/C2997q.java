package p034j$.wrappers;

import p034j$.util.function.BiConsumer;
/* renamed from: j$.wrappers.q */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2997q implements BiConsumer {

    /* renamed from: a */
    final /* synthetic */ java.util.function.BiConsumer f1197a;

    private /* synthetic */ C2997q(java.util.function.BiConsumer biConsumer) {
        this.f1197a = biConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ BiConsumer m122a(java.util.function.BiConsumer biConsumer) {
        if (biConsumer == null) {
            return null;
        }
        return biConsumer instanceof C2999r ? ((C2999r) biConsumer).f1199a : new C2997q(biConsumer);
    }

    @Override // p034j$.util.function.BiConsumer
    public /* synthetic */ void accept(Object obj, Object obj2) {
        this.f1197a.accept(obj, obj2);
    }

    @Override // p034j$.util.function.BiConsumer
    /* renamed from: b */
    public /* synthetic */ BiConsumer mo121b(BiConsumer biConsumer) {
        return m122a(this.f1197a.andThen(C2999r.m119a(biConsumer)));
    }
}
