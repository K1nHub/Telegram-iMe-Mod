package p035j$.wrappers;

import java.util.function.ToIntFunction;
/* renamed from: j$.wrappers.D0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3022D0 implements ToIntFunction {

    /* renamed from: a */
    final /* synthetic */ p035j$.util.function.ToIntFunction f1138a;

    private /* synthetic */ C3022D0(p035j$.util.function.ToIntFunction toIntFunction) {
        this.f1138a = toIntFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ ToIntFunction m233a(p035j$.util.function.ToIntFunction toIntFunction) {
        if (toIntFunction == null) {
            return null;
        }
        return toIntFunction instanceof C3020C0 ? ((C3020C0) toIntFunction).f1136a : new C3022D0(toIntFunction);
    }

    @Override // java.util.function.ToIntFunction
    public /* synthetic */ int applyAsInt(Object obj) {
        return this.f1138a.applyAsInt(obj);
    }
}
