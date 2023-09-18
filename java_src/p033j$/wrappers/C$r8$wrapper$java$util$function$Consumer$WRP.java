package p033j$.wrappers;

import java.util.function.Consumer;
/* renamed from: j$.wrappers.$r8$wrapper$java$util$function$Consumer$-WRP  reason: invalid class name */
/* loaded from: classes2.dex */
public final /* synthetic */ class C$r8$wrapper$java$util$function$Consumer$WRP implements Consumer {

    /* renamed from: a */
    final /* synthetic */ p033j$.util.function.Consumer f1211a;

    private /* synthetic */ C$r8$wrapper$java$util$function$Consumer$WRP(p033j$.util.function.Consumer consumer) {
        this.f1211a = consumer;
    }

    public static /* synthetic */ Consumer convert(p033j$.util.function.Consumer consumer) {
        if (consumer == null) {
            return null;
        }
        return consumer instanceof C3306w ? ((C3306w) consumer).f1299a : new C$r8$wrapper$java$util$function$Consumer$WRP(consumer);
    }

    @Override // java.util.function.Consumer
    public /* synthetic */ void accept(Object obj) {
        this.f1211a.accept(obj);
    }

    @Override // java.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return convert(this.f1211a.andThen(C3306w.m112b(consumer)));
    }
}
