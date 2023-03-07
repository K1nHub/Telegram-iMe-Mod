package p034j$.wrappers;

import java.util.function.BiConsumer;
/* renamed from: j$.wrappers.r */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2875r implements BiConsumer {

    /* renamed from: a */
    final /* synthetic */ p034j$.util.function.BiConsumer f1194a;

    private /* synthetic */ C2875r(p034j$.util.function.BiConsumer biConsumer) {
        this.f1194a = biConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ BiConsumer m119a(p034j$.util.function.BiConsumer biConsumer) {
        if (biConsumer == null) {
            return null;
        }
        return biConsumer instanceof C2873q ? ((C2873q) biConsumer).f1192a : new C2875r(biConsumer);
    }

    @Override // java.util.function.BiConsumer
    public /* synthetic */ void accept(Object obj, Object obj2) {
        this.f1194a.accept(obj, obj2);
    }

    @Override // java.util.function.BiConsumer
    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        return m119a(this.f1194a.mo121b(C2873q.m122a(biConsumer)));
    }
}
