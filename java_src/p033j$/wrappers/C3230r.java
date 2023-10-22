package p033j$.wrappers;

import java.util.function.BiConsumer;
/* renamed from: j$.wrappers.r */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3230r implements BiConsumer {

    /* renamed from: a */
    final /* synthetic */ p033j$.util.function.BiConsumer f1333a;

    private /* synthetic */ C3230r(p033j$.util.function.BiConsumer biConsumer) {
        this.f1333a = biConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ BiConsumer m171a(p033j$.util.function.BiConsumer biConsumer) {
        if (biConsumer == null) {
            return null;
        }
        return biConsumer instanceof C3228q ? ((C3228q) biConsumer).f1331a : new C3230r(biConsumer);
    }

    @Override // java.util.function.BiConsumer
    public /* synthetic */ void accept(Object obj, Object obj2) {
        this.f1333a.accept(obj, obj2);
    }

    @Override // java.util.function.BiConsumer
    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        return m171a(this.f1333a.mo173b(C3228q.m174a(biConsumer)));
    }
}
