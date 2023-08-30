package p033j$.wrappers;

import java.util.function.BiConsumer;
/* renamed from: j$.wrappers.r */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3380r implements BiConsumer {

    /* renamed from: a */
    final /* synthetic */ p033j$.util.function.BiConsumer f1298a;

    private /* synthetic */ C3380r(p033j$.util.function.BiConsumer biConsumer) {
        this.f1298a = biConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ BiConsumer m122a(p033j$.util.function.BiConsumer biConsumer) {
        if (biConsumer == null) {
            return null;
        }
        return biConsumer instanceof C3378q ? ((C3378q) biConsumer).f1296a : new C3380r(biConsumer);
    }

    @Override // java.util.function.BiConsumer
    public /* synthetic */ void accept(Object obj, Object obj2) {
        this.f1298a.accept(obj, obj2);
    }

    @Override // java.util.function.BiConsumer
    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        return m122a(this.f1298a.mo124b(C3378q.m125a(biConsumer)));
    }
}
