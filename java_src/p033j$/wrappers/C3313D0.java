package p033j$.wrappers;

import java.util.function.ToIntFunction;
/* renamed from: j$.wrappers.D0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3313D0 implements ToIntFunction {

    /* renamed from: a */
    final /* synthetic */ p033j$.util.function.ToIntFunction f1231a;

    private /* synthetic */ C3313D0(p033j$.util.function.ToIntFunction toIntFunction) {
        this.f1231a = toIntFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ ToIntFunction m242a(p033j$.util.function.ToIntFunction toIntFunction) {
        if (toIntFunction == null) {
            return null;
        }
        return toIntFunction instanceof C3311C0 ? ((C3311C0) toIntFunction).f1229a : new C3313D0(toIntFunction);
    }

    @Override // java.util.function.ToIntFunction
    public /* synthetic */ int applyAsInt(Object obj) {
        return this.f1231a.applyAsInt(obj);
    }
}
