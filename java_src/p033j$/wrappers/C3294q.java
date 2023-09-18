package p033j$.wrappers;

import p033j$.util.function.BiConsumer;
/* renamed from: j$.wrappers.q */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3294q implements BiConsumer {

    /* renamed from: a */
    final /* synthetic */ java.util.function.BiConsumer f1287a;

    private /* synthetic */ C3294q(java.util.function.BiConsumer biConsumer) {
        this.f1287a = biConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ BiConsumer m125a(java.util.function.BiConsumer biConsumer) {
        if (biConsumer == null) {
            return null;
        }
        return biConsumer instanceof C3296r ? ((C3296r) biConsumer).f1289a : new C3294q(biConsumer);
    }

    @Override // p033j$.util.function.BiConsumer
    public /* synthetic */ void accept(Object obj, Object obj2) {
        this.f1287a.accept(obj, obj2);
    }

    @Override // p033j$.util.function.BiConsumer
    /* renamed from: b */
    public /* synthetic */ BiConsumer mo124b(BiConsumer biConsumer) {
        return m125a(this.f1287a.andThen(C3296r.m122a(biConsumer)));
    }
}
