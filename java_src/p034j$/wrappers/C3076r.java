package p034j$.wrappers;

import java.util.function.BiConsumer;
/* renamed from: j$.wrappers.r */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3076r implements BiConsumer {

    /* renamed from: a */
    final /* synthetic */ p034j$.util.function.BiConsumer f1200a;

    private /* synthetic */ C3076r(p034j$.util.function.BiConsumer biConsumer) {
        this.f1200a = biConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ BiConsumer m99a(p034j$.util.function.BiConsumer biConsumer) {
        if (biConsumer == null) {
            return null;
        }
        return biConsumer instanceof C3074q ? ((C3074q) biConsumer).f1198a : new C3076r(biConsumer);
    }

    @Override // java.util.function.BiConsumer
    public /* synthetic */ void accept(Object obj, Object obj2) {
        this.f1200a.accept(obj, obj2);
    }

    @Override // java.util.function.BiConsumer
    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        return m99a(this.f1200a.mo101b(C3074q.m102a(biConsumer)));
    }
}
