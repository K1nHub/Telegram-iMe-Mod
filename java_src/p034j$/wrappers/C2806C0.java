package p034j$.wrappers;

import p034j$.util.function.ToIntFunction;
/* renamed from: j$.wrappers.C0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2806C0 implements ToIntFunction {

    /* renamed from: a */
    final /* synthetic */ java.util.function.ToIntFunction f1125a;

    private /* synthetic */ C2806C0(java.util.function.ToIntFunction toIntFunction) {
        this.f1125a = toIntFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ ToIntFunction m242a(java.util.function.ToIntFunction toIntFunction) {
        if (toIntFunction == null) {
            return null;
        }
        return toIntFunction instanceof C2808D0 ? ((C2808D0) toIntFunction).f1127a : new C2806C0(toIntFunction);
    }

    @Override // p034j$.util.function.ToIntFunction
    public /* synthetic */ int applyAsInt(Object obj) {
        return this.f1125a.applyAsInt(obj);
    }
}
