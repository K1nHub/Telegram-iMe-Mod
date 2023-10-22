package p033j$.wrappers;

import p033j$.util.function.BiConsumer;
/* renamed from: j$.wrappers.q */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3228q implements BiConsumer {

    /* renamed from: a */
    final /* synthetic */ java.util.function.BiConsumer f1331a;

    private /* synthetic */ C3228q(java.util.function.BiConsumer biConsumer) {
        this.f1331a = biConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ BiConsumer m174a(java.util.function.BiConsumer biConsumer) {
        if (biConsumer == null) {
            return null;
        }
        return biConsumer instanceof C3230r ? ((C3230r) biConsumer).f1333a : new C3228q(biConsumer);
    }

    @Override // p033j$.util.function.BiConsumer
    public /* synthetic */ void accept(Object obj, Object obj2) {
        this.f1331a.accept(obj, obj2);
    }

    @Override // p033j$.util.function.BiConsumer
    /* renamed from: b */
    public /* synthetic */ BiConsumer mo173b(BiConsumer biConsumer) {
        return m174a(this.f1331a.andThen(C3230r.m171a(biConsumer)));
    }
}
