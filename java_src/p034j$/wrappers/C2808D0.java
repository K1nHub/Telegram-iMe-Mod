package p034j$.wrappers;

import java.util.function.ToIntFunction;
/* renamed from: j$.wrappers.D0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2808D0 implements ToIntFunction {

    /* renamed from: a */
    final /* synthetic */ p034j$.util.function.ToIntFunction f1127a;

    private /* synthetic */ C2808D0(p034j$.util.function.ToIntFunction toIntFunction) {
        this.f1127a = toIntFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ ToIntFunction m239a(p034j$.util.function.ToIntFunction toIntFunction) {
        if (toIntFunction == null) {
            return null;
        }
        return toIntFunction instanceof C2806C0 ? ((C2806C0) toIntFunction).f1125a : new C2808D0(toIntFunction);
    }

    @Override // java.util.function.ToIntFunction
    public /* synthetic */ int applyAsInt(Object obj) {
        return this.f1127a.applyAsInt(obj);
    }
}
