package p035j$.wrappers;

import p035j$.util.function.BiConsumer;
/* renamed from: j$.wrappers.q */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3087q implements BiConsumer {

    /* renamed from: a */
    final /* synthetic */ java.util.function.BiConsumer f1203a;

    private /* synthetic */ C3087q(java.util.function.BiConsumer biConsumer) {
        this.f1203a = biConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ BiConsumer m116a(java.util.function.BiConsumer biConsumer) {
        if (biConsumer == null) {
            return null;
        }
        return biConsumer instanceof C3089r ? ((C3089r) biConsumer).f1205a : new C3087q(biConsumer);
    }

    @Override // p035j$.util.function.BiConsumer
    public /* synthetic */ void accept(Object obj, Object obj2) {
        this.f1203a.accept(obj, obj2);
    }

    @Override // p035j$.util.function.BiConsumer
    /* renamed from: b */
    public /* synthetic */ BiConsumer mo115b(BiConsumer biConsumer) {
        return m116a(this.f1203a.andThen(C3089r.m113a(biConsumer)));
    }
}
