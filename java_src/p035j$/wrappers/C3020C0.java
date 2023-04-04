package p035j$.wrappers;

import p035j$.util.function.ToIntFunction;
/* renamed from: j$.wrappers.C0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3020C0 implements ToIntFunction {

    /* renamed from: a */
    final /* synthetic */ java.util.function.ToIntFunction f1136a;

    private /* synthetic */ C3020C0(java.util.function.ToIntFunction toIntFunction) {
        this.f1136a = toIntFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ ToIntFunction m236a(java.util.function.ToIntFunction toIntFunction) {
        if (toIntFunction == null) {
            return null;
        }
        return toIntFunction instanceof C3022D0 ? ((C3022D0) toIntFunction).f1138a : new C3020C0(toIntFunction);
    }

    @Override // p035j$.util.function.ToIntFunction
    public /* synthetic */ int applyAsInt(Object obj) {
        return this.f1136a.applyAsInt(obj);
    }
}
