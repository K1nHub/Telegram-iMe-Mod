package p034j$.wrappers;

import java.util.function.BiConsumer;
/* renamed from: j$.wrappers.r */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3115r implements BiConsumer {

    /* renamed from: a */
    final /* synthetic */ p034j$.util.function.BiConsumer f1203a;

    private /* synthetic */ C3115r(p034j$.util.function.BiConsumer biConsumer) {
        this.f1203a = biConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ BiConsumer m104a(p034j$.util.function.BiConsumer biConsumer) {
        if (biConsumer == null) {
            return null;
        }
        return biConsumer instanceof C3113q ? ((C3113q) biConsumer).f1201a : new C3115r(biConsumer);
    }

    @Override // java.util.function.BiConsumer
    public /* synthetic */ void accept(Object obj, Object obj2) {
        this.f1203a.accept(obj, obj2);
    }

    @Override // java.util.function.BiConsumer
    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        return m104a(this.f1203a.mo106b(C3113q.m107a(biConsumer)));
    }
}