package kotlinx.coroutines.internal;

import java.lang.reflect.Constructor;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* compiled from: ExceptionsConstuctor.kt */
/* loaded from: classes4.dex */
public final class ExceptionsConstuctorKt$createConstructor$$inlined$safeCtor$4 extends Lambda implements Function1<Throwable, Throwable> {
    final /* synthetic */ Constructor $constructor$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExceptionsConstuctorKt$createConstructor$$inlined$safeCtor$4(Constructor constructor) {
        super(1);
        this.$constructor$inlined = constructor;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Throwable invoke(Throwable th) {
        Object m1571constructorimpl;
        Object newInstance;
        try {
            Result.Companion companion = Result.Companion;
            newInstance = this.$constructor$inlined.newInstance(new Object[0]);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.Companion;
            m1571constructorimpl = Result.m1571constructorimpl(ResultKt.createFailure(th2));
        }
        if (newInstance == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Throwable");
        }
        Throwable th3 = (Throwable) newInstance;
        th3.initCause(th);
        m1571constructorimpl = Result.m1571constructorimpl(th3);
        if (Result.m1573isFailureimpl(m1571constructorimpl)) {
            m1571constructorimpl = null;
        }
        return (Throwable) m1571constructorimpl;
    }
}
