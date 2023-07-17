package p033j$.wrappers;

import java.util.function.BiConsumer;
/* renamed from: j$.wrappers.r */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3241r implements BiConsumer {

    /* renamed from: a */
    final /* synthetic */ p033j$.util.function.BiConsumer f1285a;

    private /* synthetic */ C3241r(p033j$.util.function.BiConsumer biConsumer) {
        this.f1285a = biConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ BiConsumer m104a(p033j$.util.function.BiConsumer biConsumer) {
        if (biConsumer == null) {
            return null;
        }
        return biConsumer instanceof C3239q ? ((C3239q) biConsumer).f1283a : new C3241r(biConsumer);
    }

    @Override // java.util.function.BiConsumer
    public /* synthetic */ void accept(Object obj, Object obj2) {
        this.f1285a.accept(obj, obj2);
    }

    @Override // java.util.function.BiConsumer
    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        return m104a(this.f1285a.mo106b(C3239q.m107a(biConsumer)));
    }
}
