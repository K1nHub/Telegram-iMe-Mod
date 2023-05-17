package kotlinx.coroutines.internal;

import java.lang.reflect.Constructor;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* compiled from: ExceptionsConstructor.kt */
/* renamed from: kotlinx.coroutines.internal.ExceptionsConstructorKt$createSafeConstructor$$inlined$safeCtor$1 */
/* loaded from: classes4.dex */
public final class C3141x18164153 extends Lambda implements Function1<Throwable, Throwable> {
    final /* synthetic */ Constructor $constructor$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3141x18164153(Constructor constructor) {
        super(1);
        this.$constructor$inlined = constructor;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Throwable invoke(Throwable th) {
        Object m1574constructorimpl;
        Object newInstance;
        try {
            Result.Companion companion = Result.Companion;
            newInstance = this.$constructor$inlined.newInstance(th.getMessage(), th);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.Companion;
            m1574constructorimpl = Result.m1574constructorimpl(ResultKt.createFailure(th2));
        }
        if (newInstance == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Throwable");
        }
        m1574constructorimpl = Result.m1574constructorimpl((Throwable) newInstance);
        if (Result.m1576isFailureimpl(m1574constructorimpl)) {
            m1574constructorimpl = null;
        }
        return (Throwable) m1574constructorimpl;
    }
}
