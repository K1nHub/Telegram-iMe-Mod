package p034j$.wrappers;

import p034j$.util.function.BiConsumer;
/* renamed from: j$.wrappers.q */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2873q implements BiConsumer {

    /* renamed from: a */
    final /* synthetic */ java.util.function.BiConsumer f1192a;

    private /* synthetic */ C2873q(java.util.function.BiConsumer biConsumer) {
        this.f1192a = biConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ BiConsumer m122a(java.util.function.BiConsumer biConsumer) {
        if (biConsumer == null) {
            return null;
        }
        return biConsumer instanceof C2875r ? ((C2875r) biConsumer).f1194a : new C2873q(biConsumer);
    }

    @Override // p034j$.util.function.BiConsumer
    public /* synthetic */ void accept(Object obj, Object obj2) {
        this.f1192a.accept(obj, obj2);
    }

    @Override // p034j$.util.function.BiConsumer
    /* renamed from: b */
    public /* synthetic */ BiConsumer mo121b(BiConsumer biConsumer) {
        return m122a(this.f1192a.andThen(C2875r.m119a(biConsumer)));
    }
}
