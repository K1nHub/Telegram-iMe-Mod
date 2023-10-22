package p033j$.wrappers;

import java.util.function.BiFunction;
import java.util.function.Function;
/* renamed from: j$.wrappers.s */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3232s implements BiFunction {

    /* renamed from: a */
    final /* synthetic */ p033j$.util.function.BiFunction f1335a;

    private /* synthetic */ C3232s(p033j$.util.function.BiFunction biFunction) {
        this.f1335a = biFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ BiFunction m169a(p033j$.util.function.BiFunction biFunction) {
        if (biFunction == null) {
            return null;
        }
        return biFunction instanceof C$r8$wrapper$java$util$function$BiFunction$VWRP ? ((C$r8$wrapper$java$util$function$BiFunction$VWRP) biFunction).f1254a : new C3232s(biFunction);
    }

    @Override // java.util.function.BiFunction
    public /* synthetic */ BiFunction andThen(Function function) {
        return m169a(this.f1335a.andThen(C$r8$wrapper$java$util$function$Function$VWRP.convert(function)));
    }

    @Override // java.util.function.BiFunction
    public /* synthetic */ Object apply(Object obj, Object obj2) {
        return this.f1335a.apply(obj, obj2);
    }
}
