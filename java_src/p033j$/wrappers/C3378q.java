package p033j$.wrappers;

import p033j$.util.function.BiConsumer;
/* renamed from: j$.wrappers.q */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3378q implements BiConsumer {

    /* renamed from: a */
    final /* synthetic */ java.util.function.BiConsumer f1296a;

    private /* synthetic */ C3378q(java.util.function.BiConsumer biConsumer) {
        this.f1296a = biConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ BiConsumer m125a(java.util.function.BiConsumer biConsumer) {
        if (biConsumer == null) {
            return null;
        }
        return biConsumer instanceof C3380r ? ((C3380r) biConsumer).f1298a : new C3378q(biConsumer);
    }

    @Override // p033j$.util.function.BiConsumer
    public /* synthetic */ void accept(Object obj, Object obj2) {
        this.f1296a.accept(obj, obj2);
    }

    @Override // p033j$.util.function.BiConsumer
    /* renamed from: b */
    public /* synthetic */ BiConsumer mo124b(BiConsumer biConsumer) {
        return m125a(this.f1296a.andThen(C3380r.m122a(biConsumer)));
    }
}
