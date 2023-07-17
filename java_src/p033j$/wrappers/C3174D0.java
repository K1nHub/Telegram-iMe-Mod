package p033j$.wrappers;

import java.util.function.ToIntFunction;
/* renamed from: j$.wrappers.D0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3174D0 implements ToIntFunction {

    /* renamed from: a */
    final /* synthetic */ p033j$.util.function.ToIntFunction f1218a;

    private /* synthetic */ C3174D0(p033j$.util.function.ToIntFunction toIntFunction) {
        this.f1218a = toIntFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ ToIntFunction m224a(p033j$.util.function.ToIntFunction toIntFunction) {
        if (toIntFunction == null) {
            return null;
        }
        return toIntFunction instanceof C3172C0 ? ((C3172C0) toIntFunction).f1216a : new C3174D0(toIntFunction);
    }

    @Override // java.util.function.ToIntFunction
    public /* synthetic */ int applyAsInt(Object obj) {
        return this.f1218a.applyAsInt(obj);
    }
}
