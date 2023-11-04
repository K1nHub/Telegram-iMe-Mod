package p033j$.wrappers;

import p033j$.util.function.BiFunction;
import p033j$.util.function.Function;
/* renamed from: j$.wrappers.$r8$wrapper$java$util$function$BiFunction$-V-WRP */
/* loaded from: classes2.dex */
public final /* synthetic */ class C$r8$wrapper$java$util$function$BiFunction$VWRP implements BiFunction {

    /* renamed from: a */
    final /* synthetic */ java.util.function.BiFunction f1254a;

    private /* synthetic */ C$r8$wrapper$java$util$function$BiFunction$VWRP(java.util.function.BiFunction biFunction) {
        this.f1254a = biFunction;
    }

    public static /* synthetic */ BiFunction convert(java.util.function.BiFunction biFunction) {
        if (biFunction == null) {
            return null;
        }
        return biFunction instanceof C3236s ? ((C3236s) biFunction).f1335a : new C$r8$wrapper$java$util$function$BiFunction$VWRP(biFunction);
    }

    @Override // p033j$.util.function.BiFunction
    public /* synthetic */ BiFunction andThen(Function function) {
        return convert(this.f1254a.andThen(C3183K.m241a(function)));
    }

    @Override // p033j$.util.function.BiFunction
    public /* synthetic */ Object apply(Object obj, Object obj2) {
        return this.f1254a.apply(obj, obj2);
    }
}
