package p035j$.wrappers;

import java.util.function.Consumer;
/* renamed from: j$.wrappers.$r8$wrapper$java$util$function$Consumer$-WRP  reason: invalid class name */
/* loaded from: classes2.dex */
public final /* synthetic */ class C$r8$wrapper$java$util$function$Consumer$WRP implements Consumer {

    /* renamed from: a */
    final /* synthetic */ p035j$.util.function.Consumer f1127a;

    private /* synthetic */ C$r8$wrapper$java$util$function$Consumer$WRP(p035j$.util.function.Consumer consumer) {
        this.f1127a = consumer;
    }

    public static /* synthetic */ Consumer convert(p035j$.util.function.Consumer consumer) {
        if (consumer == null) {
            return null;
        }
        return consumer instanceof C3099w ? ((C3099w) consumer).f1215a : new C$r8$wrapper$java$util$function$Consumer$WRP(consumer);
    }

    @Override // java.util.function.Consumer
    public /* synthetic */ void accept(Object obj) {
        this.f1127a.accept(obj);
    }

    @Override // java.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return convert(this.f1127a.andThen(C3099w.m103b(consumer)));
    }
}
