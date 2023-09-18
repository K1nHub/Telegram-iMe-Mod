package p033j$.wrappers;

import java.util.function.BiConsumer;
/* renamed from: j$.wrappers.r */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3296r implements BiConsumer {

    /* renamed from: a */
    final /* synthetic */ p033j$.util.function.BiConsumer f1289a;

    private /* synthetic */ C3296r(p033j$.util.function.BiConsumer biConsumer) {
        this.f1289a = biConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ BiConsumer m122a(p033j$.util.function.BiConsumer biConsumer) {
        if (biConsumer == null) {
            return null;
        }
        return biConsumer instanceof C3294q ? ((C3294q) biConsumer).f1287a : new C3296r(biConsumer);
    }

    @Override // java.util.function.BiConsumer
    public /* synthetic */ void accept(Object obj, Object obj2) {
        this.f1289a.accept(obj, obj2);
    }

    @Override // java.util.function.BiConsumer
    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        return m122a(this.f1289a.mo124b(C3294q.m125a(biConsumer)));
    }
}
