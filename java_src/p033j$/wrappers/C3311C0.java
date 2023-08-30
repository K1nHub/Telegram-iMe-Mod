package p033j$.wrappers;

import p033j$.util.function.ToIntFunction;
/* renamed from: j$.wrappers.C0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3311C0 implements ToIntFunction {

    /* renamed from: a */
    final /* synthetic */ java.util.function.ToIntFunction f1229a;

    private /* synthetic */ C3311C0(java.util.function.ToIntFunction toIntFunction) {
        this.f1229a = toIntFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ ToIntFunction m245a(java.util.function.ToIntFunction toIntFunction) {
        if (toIntFunction == null) {
            return null;
        }
        return toIntFunction instanceof C3313D0 ? ((C3313D0) toIntFunction).f1231a : new C3311C0(toIntFunction);
    }

    @Override // p033j$.util.function.ToIntFunction
    public /* synthetic */ int applyAsInt(Object obj) {
        return this.f1229a.applyAsInt(obj);
    }
}
