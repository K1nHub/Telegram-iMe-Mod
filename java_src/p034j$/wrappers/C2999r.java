package p034j$.wrappers;

import java.util.function.BiConsumer;
/* renamed from: j$.wrappers.r */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2999r implements BiConsumer {

    /* renamed from: a */
    final /* synthetic */ p034j$.util.function.BiConsumer f1199a;

    private /* synthetic */ C2999r(p034j$.util.function.BiConsumer biConsumer) {
        this.f1199a = biConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ BiConsumer m119a(p034j$.util.function.BiConsumer biConsumer) {
        if (biConsumer == null) {
            return null;
        }
        return biConsumer instanceof C2997q ? ((C2997q) biConsumer).f1197a : new C2999r(biConsumer);
    }

    @Override // java.util.function.BiConsumer
    public /* synthetic */ void accept(Object obj, Object obj2) {
        this.f1199a.accept(obj, obj2);
    }

    @Override // java.util.function.BiConsumer
    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        return m119a(this.f1199a.mo121b(C2997q.m122a(biConsumer)));
    }
}
