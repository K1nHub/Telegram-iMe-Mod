package p034j$.wrappers;

import p034j$.util.function.BiConsumer;
/* renamed from: j$.wrappers.q */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3074q implements BiConsumer {

    /* renamed from: a */
    final /* synthetic */ java.util.function.BiConsumer f1198a;

    private /* synthetic */ C3074q(java.util.function.BiConsumer biConsumer) {
        this.f1198a = biConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ BiConsumer m102a(java.util.function.BiConsumer biConsumer) {
        if (biConsumer == null) {
            return null;
        }
        return biConsumer instanceof C3076r ? ((C3076r) biConsumer).f1200a : new C3074q(biConsumer);
    }

    @Override // p034j$.util.function.BiConsumer
    public /* synthetic */ void accept(Object obj, Object obj2) {
        this.f1198a.accept(obj, obj2);
    }

    @Override // p034j$.util.function.BiConsumer
    /* renamed from: b */
    public /* synthetic */ BiConsumer mo101b(BiConsumer biConsumer) {
        return m102a(this.f1198a.andThen(C3076r.m99a(biConsumer)));
    }
}
