package p033j$.wrappers;

import java.util.function.Consumer;
/* renamed from: j$.wrappers.$r8$wrapper$java$util$function$Consumer$-WRP  reason: invalid class name */
/* loaded from: classes2.dex */
public final /* synthetic */ class C$r8$wrapper$java$util$function$Consumer$WRP implements Consumer {

    /* renamed from: a */
    final /* synthetic */ p033j$.util.function.Consumer f1255a;

    private /* synthetic */ C$r8$wrapper$java$util$function$Consumer$WRP(p033j$.util.function.Consumer consumer) {
        this.f1255a = consumer;
    }

    public static /* synthetic */ Consumer convert(p033j$.util.function.Consumer consumer) {
        if (consumer == null) {
            return null;
        }
        return consumer instanceof C3239v ? ((C3239v) consumer).f1341a : new C$r8$wrapper$java$util$function$Consumer$WRP(consumer);
    }

    @Override // java.util.function.Consumer
    public /* synthetic */ void accept(Object obj) {
        this.f1255a.accept(obj);
    }

    @Override // java.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return convert(this.f1255a.andThen(C3239v.m165b(consumer)));
    }
}
