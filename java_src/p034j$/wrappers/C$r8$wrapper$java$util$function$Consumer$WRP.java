package p034j$.wrappers;

import java.util.function.Consumer;
/* renamed from: j$.wrappers.$r8$wrapper$java$util$function$Consumer$-WRP  reason: invalid class name */
/* loaded from: classes2.dex */
public final /* synthetic */ class C$r8$wrapper$java$util$function$Consumer$WRP implements Consumer {

    /* renamed from: a */
    final /* synthetic */ p034j$.util.function.Consumer f1125a;

    private /* synthetic */ C$r8$wrapper$java$util$function$Consumer$WRP(p034j$.util.function.Consumer consumer) {
        this.f1125a = consumer;
    }

    public static /* synthetic */ Consumer convert(p034j$.util.function.Consumer consumer) {
        if (consumer == null) {
            return null;
        }
        return consumer instanceof C3130w ? ((C3130w) consumer).f1213a : new C$r8$wrapper$java$util$function$Consumer$WRP(consumer);
    }

    @Override // java.util.function.Consumer
    public /* synthetic */ void accept(Object obj) {
        this.f1125a.accept(obj);
    }

    @Override // java.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return convert(this.f1125a.andThen(C3130w.m94b(consumer)));
    }
}
