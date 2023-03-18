package p034j$.wrappers;

import java.util.function.Consumer;
/* renamed from: j$.wrappers.$r8$wrapper$java$util$function$Consumer$-WRP  reason: invalid class name */
/* loaded from: classes2.dex */
public final /* synthetic */ class C$r8$wrapper$java$util$function$Consumer$WRP implements Consumer {

    /* renamed from: a */
    final /* synthetic */ p034j$.util.function.Consumer f1121a;

    private /* synthetic */ C$r8$wrapper$java$util$function$Consumer$WRP(p034j$.util.function.Consumer consumer) {
        this.f1121a = consumer;
    }

    public static /* synthetic */ Consumer convert(p034j$.util.function.Consumer consumer) {
        if (consumer == null) {
            return null;
        }
        return consumer instanceof C3009w ? ((C3009w) consumer).f1209a : new C$r8$wrapper$java$util$function$Consumer$WRP(consumer);
    }

    @Override // java.util.function.Consumer
    public /* synthetic */ void accept(Object obj) {
        this.f1121a.accept(obj);
    }

    @Override // java.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return convert(this.f1121a.andThen(C3009w.m109b(consumer)));
    }
}
