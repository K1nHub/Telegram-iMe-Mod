package p034j$.wrappers;

import java.util.function.Consumer;
/* renamed from: j$.wrappers.$r8$wrapper$java$util$function$Consumer$-WRP  reason: invalid class name */
/* loaded from: classes2.dex */
public final /* synthetic */ class C$r8$wrapper$java$util$function$Consumer$WRP implements Consumer {

    /* renamed from: a */
    final /* synthetic */ p034j$.util.function.Consumer f1116a;

    private /* synthetic */ C$r8$wrapper$java$util$function$Consumer$WRP(p034j$.util.function.Consumer consumer) {
        this.f1116a = consumer;
    }

    public static /* synthetic */ Consumer convert(p034j$.util.function.Consumer consumer) {
        if (consumer == null) {
            return null;
        }
        return consumer instanceof C2885w ? ((C2885w) consumer).f1204a : new C$r8$wrapper$java$util$function$Consumer$WRP(consumer);
    }

    @Override // java.util.function.Consumer
    public /* synthetic */ void accept(Object obj) {
        this.f1116a.accept(obj);
    }

    @Override // java.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return convert(this.f1116a.andThen(C2885w.m109b(consumer)));
    }
}
