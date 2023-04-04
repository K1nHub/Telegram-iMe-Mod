package p035j$.wrappers;

import java.util.function.BiConsumer;
/* renamed from: j$.wrappers.r */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3089r implements BiConsumer {

    /* renamed from: a */
    final /* synthetic */ p035j$.util.function.BiConsumer f1205a;

    private /* synthetic */ C3089r(p035j$.util.function.BiConsumer biConsumer) {
        this.f1205a = biConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ BiConsumer m113a(p035j$.util.function.BiConsumer biConsumer) {
        if (biConsumer == null) {
            return null;
        }
        return biConsumer instanceof C3087q ? ((C3087q) biConsumer).f1203a : new C3089r(biConsumer);
    }

    @Override // java.util.function.BiConsumer
    public /* synthetic */ void accept(Object obj, Object obj2) {
        this.f1205a.accept(obj, obj2);
    }

    @Override // java.util.function.BiConsumer
    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        return m113a(this.f1205a.mo115b(C3087q.m116a(biConsumer)));
    }
}
