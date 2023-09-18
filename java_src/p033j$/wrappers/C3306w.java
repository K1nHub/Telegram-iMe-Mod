package p033j$.wrappers;

import p033j$.util.function.Consumer;
/* renamed from: j$.wrappers.w */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3306w implements Consumer {

    /* renamed from: a */
    final /* synthetic */ java.util.function.Consumer f1299a;

    private /* synthetic */ C3306w(java.util.function.Consumer consumer) {
        this.f1299a = consumer;
    }

    /* renamed from: b */
    public static /* synthetic */ Consumer m112b(java.util.function.Consumer consumer) {
        if (consumer == null) {
            return null;
        }
        return consumer instanceof C$r8$wrapper$java$util$function$Consumer$WRP ? ((C$r8$wrapper$java$util$function$Consumer$WRP) consumer).f1211a : new C3306w(consumer);
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ void accept(Object obj) {
        this.f1299a.accept(obj);
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return m112b(this.f1299a.andThen(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer)));
    }
}
