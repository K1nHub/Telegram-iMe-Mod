package p034j$.wrappers;

import p034j$.util.function.Consumer;
/* renamed from: j$.wrappers.w */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2885w implements Consumer {

    /* renamed from: a */
    final /* synthetic */ java.util.function.Consumer f1204a;

    private /* synthetic */ C2885w(java.util.function.Consumer consumer) {
        this.f1204a = consumer;
    }

    /* renamed from: b */
    public static /* synthetic */ Consumer m109b(java.util.function.Consumer consumer) {
        if (consumer == null) {
            return null;
        }
        return consumer instanceof C$r8$wrapper$java$util$function$Consumer$WRP ? ((C$r8$wrapper$java$util$function$Consumer$WRP) consumer).f1116a : new C2885w(consumer);
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ void accept(Object obj) {
        this.f1204a.accept(obj);
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return m109b(this.f1204a.andThen(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer)));
    }
}
