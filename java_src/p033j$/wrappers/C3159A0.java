package p033j$.wrappers;

import java.util.function.ToIntFunction;
/* renamed from: j$.wrappers.A0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3159A0 implements ToIntFunction {

    /* renamed from: a */
    final /* synthetic */ p033j$.util.function.ToIntFunction f1263a;

    private /* synthetic */ C3159A0(p033j$.util.function.ToIntFunction toIntFunction) {
        this.f1263a = toIntFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ ToIntFunction m299a(p033j$.util.function.ToIntFunction toIntFunction) {
        if (toIntFunction == null) {
            return null;
        }
        return toIntFunction instanceof C3246z0 ? ((C3246z0) toIntFunction).f1350a : new C3159A0(toIntFunction);
    }

    @Override // java.util.function.ToIntFunction
    public /* synthetic */ int applyAsInt(Object obj) {
        return this.f1263a.applyAsInt(obj);
    }
}
