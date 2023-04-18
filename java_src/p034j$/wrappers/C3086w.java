package p034j$.wrappers;

import p034j$.util.function.Consumer;
/* renamed from: j$.wrappers.w */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3086w implements Consumer {

    /* renamed from: a */
    final /* synthetic */ java.util.function.Consumer f1210a;

    private /* synthetic */ C3086w(java.util.function.Consumer consumer) {
        this.f1210a = consumer;
    }

    /* renamed from: b */
    public static /* synthetic */ Consumer m89b(java.util.function.Consumer consumer) {
        if (consumer == null) {
            return null;
        }
        return consumer instanceof C$r8$wrapper$java$util$function$Consumer$WRP ? ((C$r8$wrapper$java$util$function$Consumer$WRP) consumer).f1122a : new C3086w(consumer);
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ void accept(Object obj) {
        this.f1210a.accept(obj);
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return m89b(this.f1210a.andThen(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer)));
    }
}
