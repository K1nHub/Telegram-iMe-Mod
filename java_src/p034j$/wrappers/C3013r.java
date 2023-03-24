package p034j$.wrappers;

import java.util.function.BiConsumer;
/* renamed from: j$.wrappers.r */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3013r implements BiConsumer {

    /* renamed from: a */
    final /* synthetic */ p034j$.util.function.BiConsumer f1200a;

    private /* synthetic */ C3013r(p034j$.util.function.BiConsumer biConsumer) {
        this.f1200a = biConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ BiConsumer m118a(p034j$.util.function.BiConsumer biConsumer) {
        if (biConsumer == null) {
            return null;
        }
        return biConsumer instanceof C3011q ? ((C3011q) biConsumer).f1198a : new C3013r(biConsumer);
    }

    @Override // java.util.function.BiConsumer
    public /* synthetic */ void accept(Object obj, Object obj2) {
        this.f1200a.accept(obj, obj2);
    }

    @Override // java.util.function.BiConsumer
    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        return m118a(this.f1200a.mo120b(C3011q.m121a(biConsumer)));
    }
}
