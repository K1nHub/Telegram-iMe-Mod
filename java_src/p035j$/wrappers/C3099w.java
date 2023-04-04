package p035j$.wrappers;

import p035j$.util.function.Consumer;
/* renamed from: j$.wrappers.w */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3099w implements Consumer {

    /* renamed from: a */
    final /* synthetic */ java.util.function.Consumer f1215a;

    private /* synthetic */ C3099w(java.util.function.Consumer consumer) {
        this.f1215a = consumer;
    }

    /* renamed from: b */
    public static /* synthetic */ Consumer m103b(java.util.function.Consumer consumer) {
        if (consumer == null) {
            return null;
        }
        return consumer instanceof C$r8$wrapper$java$util$function$Consumer$WRP ? ((C$r8$wrapper$java$util$function$Consumer$WRP) consumer).f1127a : new C3099w(consumer);
    }

    @Override // p035j$.util.function.Consumer
    public /* synthetic */ void accept(Object obj) {
        this.f1215a.accept(obj);
    }

    @Override // p035j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return m103b(this.f1215a.andThen(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer)));
    }
}
