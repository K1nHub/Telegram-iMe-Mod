package p034j$.wrappers;

import p034j$.util.function.BiConsumer;
/* renamed from: j$.wrappers.q */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3118q implements BiConsumer {

    /* renamed from: a */
    final /* synthetic */ java.util.function.BiConsumer f1201a;

    private /* synthetic */ C3118q(java.util.function.BiConsumer biConsumer) {
        this.f1201a = biConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ BiConsumer m107a(java.util.function.BiConsumer biConsumer) {
        if (biConsumer == null) {
            return null;
        }
        return biConsumer instanceof C3120r ? ((C3120r) biConsumer).f1203a : new C3118q(biConsumer);
    }

    @Override // p034j$.util.function.BiConsumer
    public /* synthetic */ void accept(Object obj, Object obj2) {
        this.f1201a.accept(obj, obj2);
    }

    @Override // p034j$.util.function.BiConsumer
    /* renamed from: b */
    public /* synthetic */ BiConsumer mo106b(BiConsumer biConsumer) {
        return m107a(this.f1201a.andThen(C3120r.m104a(biConsumer)));
    }
}
