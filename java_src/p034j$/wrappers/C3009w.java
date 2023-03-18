package p034j$.wrappers;

import p034j$.util.function.Consumer;
/* renamed from: j$.wrappers.w */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3009w implements Consumer {

    /* renamed from: a */
    final /* synthetic */ java.util.function.Consumer f1209a;

    private /* synthetic */ C3009w(java.util.function.Consumer consumer) {
        this.f1209a = consumer;
    }

    /* renamed from: b */
    public static /* synthetic */ Consumer m109b(java.util.function.Consumer consumer) {
        if (consumer == null) {
            return null;
        }
        return consumer instanceof C$r8$wrapper$java$util$function$Consumer$WRP ? ((C$r8$wrapper$java$util$function$Consumer$WRP) consumer).f1121a : new C3009w(consumer);
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ void accept(Object obj) {
        this.f1209a.accept(obj);
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return m109b(this.f1209a.andThen(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer)));
    }
}
