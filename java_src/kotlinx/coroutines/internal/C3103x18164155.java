package kotlinx.coroutines.internal;

import java.lang.reflect.Constructor;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* compiled from: ExceptionsConstructor.kt */
/* renamed from: kotlinx.coroutines.internal.ExceptionsConstructorKt$createSafeConstructor$$inlined$safeCtor$3 */
/* loaded from: classes4.dex */
public final class C3103x18164155 extends Lambda implements Function1<Throwable, Throwable> {
    final /* synthetic */ Constructor $constructor$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3103x18164155(Constructor constructor) {
        super(1);
        this.$constructor$inlined = constructor;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Throwable invoke(Throwable th) {
        Object m1555constructorimpl;
        Object newInstance;
        try {
            Result.Companion companion = Result.Companion;
            newInstance = this.$constructor$inlined.newInstance(th.getMessage());
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.Companion;
            m1555constructorimpl = Result.m1555constructorimpl(ResultKt.createFailure(th2));
        }
        if (newInstance == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Throwable");
        }
        Throwable th3 = (Throwable) newInstance;
        th3.initCause(th);
        m1555constructorimpl = Result.m1555constructorimpl(th3);
        if (Result.m1557isFailureimpl(m1555constructorimpl)) {
            m1555constructorimpl = null;
        }
        return (Throwable) m1555constructorimpl;
    }
}