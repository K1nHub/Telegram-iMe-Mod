package p033j$.wrappers;

import java.util.function.ToIntFunction;
/* renamed from: j$.wrappers.A0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3164A0 implements ToIntFunction {

    /* renamed from: a */
    final /* synthetic */ p033j$.util.function.ToIntFunction f1263a;

    private /* synthetic */ C3164A0(p033j$.util.function.ToIntFunction toIntFunction) {
        this.f1263a = toIntFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ ToIntFunction m296a(p033j$.util.function.ToIntFunction toIntFunction) {
        if (toIntFunction == null) {
            return null;
        }
        return toIntFunction instanceof C3251z0 ? ((C3251z0) toIntFunction).f1350a : new C3164A0(toIntFunction);
    }

    @Override // java.util.function.ToIntFunction
    public /* synthetic */ int applyAsInt(Object obj) {
        return this.f1263a.applyAsInt(obj);
    }
}
