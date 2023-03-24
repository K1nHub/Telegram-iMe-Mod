package p034j$.wrappers;

import java.util.function.ToIntFunction;
/* renamed from: j$.wrappers.D0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2946D0 implements ToIntFunction {

    /* renamed from: a */
    final /* synthetic */ p034j$.util.function.ToIntFunction f1133a;

    private /* synthetic */ C2946D0(p034j$.util.function.ToIntFunction toIntFunction) {
        this.f1133a = toIntFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ ToIntFunction m238a(p034j$.util.function.ToIntFunction toIntFunction) {
        if (toIntFunction == null) {
            return null;
        }
        return toIntFunction instanceof C2944C0 ? ((C2944C0) toIntFunction).f1131a : new C2946D0(toIntFunction);
    }

    @Override // java.util.function.ToIntFunction
    public /* synthetic */ int applyAsInt(Object obj) {
        return this.f1133a.applyAsInt(obj);
    }
}
