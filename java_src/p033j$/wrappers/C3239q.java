package p033j$.wrappers;

import p033j$.util.function.BiConsumer;
/* renamed from: j$.wrappers.q */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3239q implements BiConsumer {

    /* renamed from: a */
    final /* synthetic */ java.util.function.BiConsumer f1286a;

    private /* synthetic */ C3239q(java.util.function.BiConsumer biConsumer) {
        this.f1286a = biConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ BiConsumer m125a(java.util.function.BiConsumer biConsumer) {
        if (biConsumer == null) {
            return null;
        }
        return biConsumer instanceof C3241r ? ((C3241r) biConsumer).f1288a : new C3239q(biConsumer);
    }

    @Override // p033j$.util.function.BiConsumer
    public /* synthetic */ void accept(Object obj, Object obj2) {
        this.f1286a.accept(obj, obj2);
    }

    @Override // p033j$.util.function.BiConsumer
    /* renamed from: b */
    public /* synthetic */ BiConsumer mo124b(BiConsumer biConsumer) {
        return m125a(this.f1286a.andThen(C3241r.m122a(biConsumer)));
    }
}
