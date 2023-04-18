package p034j$.wrappers;

import java.util.function.ToIntFunction;
/* renamed from: j$.wrappers.D0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3009D0 implements ToIntFunction {

    /* renamed from: a */
    final /* synthetic */ p034j$.util.function.ToIntFunction f1133a;

    private /* synthetic */ C3009D0(p034j$.util.function.ToIntFunction toIntFunction) {
        this.f1133a = toIntFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ ToIntFunction m219a(p034j$.util.function.ToIntFunction toIntFunction) {
        if (toIntFunction == null) {
            return null;
        }
        return toIntFunction instanceof C3007C0 ? ((C3007C0) toIntFunction).f1131a : new C3009D0(toIntFunction);
    }

    @Override // java.util.function.ToIntFunction
    public /* synthetic */ int applyAsInt(Object obj) {
        return this.f1133a.applyAsInt(obj);
    }
}
