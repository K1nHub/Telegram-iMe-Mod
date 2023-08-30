package p033j$.wrappers;

import java.util.function.Consumer;
/* renamed from: j$.wrappers.$r8$wrapper$java$util$function$Consumer$-WRP  reason: invalid class name */
/* loaded from: classes2.dex */
public final /* synthetic */ class C$r8$wrapper$java$util$function$Consumer$WRP implements Consumer {

    /* renamed from: a */
    final /* synthetic */ p033j$.util.function.Consumer f1220a;

    private /* synthetic */ C$r8$wrapper$java$util$function$Consumer$WRP(p033j$.util.function.Consumer consumer) {
        this.f1220a = consumer;
    }

    public static /* synthetic */ Consumer convert(p033j$.util.function.Consumer consumer) {
        if (consumer == null) {
            return null;
        }
        return consumer instanceof C3390w ? ((C3390w) consumer).f1308a : new C$r8$wrapper$java$util$function$Consumer$WRP(consumer);
    }

    @Override // java.util.function.Consumer
    public /* synthetic */ void accept(Object obj) {
        this.f1220a.accept(obj);
    }

    @Override // java.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return convert(this.f1220a.andThen(C3390w.m112b(consumer)));
    }
}
