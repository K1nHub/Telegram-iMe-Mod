package p033j$.wrappers;

import p033j$.util.function.Consumer;
/* renamed from: j$.wrappers.v */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3238v implements Consumer {

    /* renamed from: a */
    final /* synthetic */ java.util.function.Consumer f1341a;

    private /* synthetic */ C3238v(java.util.function.Consumer consumer) {
        this.f1341a = consumer;
    }

    /* renamed from: b */
    public static /* synthetic */ Consumer m163b(java.util.function.Consumer consumer) {
        if (consumer == null) {
            return null;
        }
        return consumer instanceof C$r8$wrapper$java$util$function$Consumer$WRP ? ((C$r8$wrapper$java$util$function$Consumer$WRP) consumer).f1255a : new C3238v(consumer);
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ void accept(Object obj) {
        this.f1341a.accept(obj);
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return m163b(this.f1341a.andThen(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer)));
    }
}
