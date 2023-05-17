package p034j$.wrappers;

import java.util.function.ToIntFunction;
/* renamed from: j$.wrappers.D0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3048D0 implements ToIntFunction {

    /* renamed from: a */
    final /* synthetic */ p034j$.util.function.ToIntFunction f1136a;

    private /* synthetic */ C3048D0(p034j$.util.function.ToIntFunction toIntFunction) {
        this.f1136a = toIntFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ ToIntFunction m224a(p034j$.util.function.ToIntFunction toIntFunction) {
        if (toIntFunction == null) {
            return null;
        }
        return toIntFunction instanceof C3046C0 ? ((C3046C0) toIntFunction).f1134a : new C3048D0(toIntFunction);
    }

    @Override // java.util.function.ToIntFunction
    public /* synthetic */ int applyAsInt(Object obj) {
        return this.f1136a.applyAsInt(obj);
    }
}
