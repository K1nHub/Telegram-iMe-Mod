package p033j$.wrappers;

import p033j$.util.function.ToIntFunction;
/* renamed from: j$.wrappers.C0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3172C0 implements ToIntFunction {

    /* renamed from: a */
    final /* synthetic */ java.util.function.ToIntFunction f1216a;

    private /* synthetic */ C3172C0(java.util.function.ToIntFunction toIntFunction) {
        this.f1216a = toIntFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ ToIntFunction m227a(java.util.function.ToIntFunction toIntFunction) {
        if (toIntFunction == null) {
            return null;
        }
        return toIntFunction instanceof C3174D0 ? ((C3174D0) toIntFunction).f1218a : new C3172C0(toIntFunction);
    }

    @Override // p033j$.util.function.ToIntFunction
    public /* synthetic */ int applyAsInt(Object obj) {
        return this.f1216a.applyAsInt(obj);
    }
}
