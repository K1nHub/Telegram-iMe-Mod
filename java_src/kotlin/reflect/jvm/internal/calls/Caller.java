package kotlin.reflect.jvm.internal.calls;

import java.lang.reflect.Member;
import java.lang.reflect.Type;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Caller.kt */
/* loaded from: classes4.dex */
public interface Caller<M extends Member> {
    Object call(Object[] objArr);

    /* renamed from: getMember */
    M mo2045getMember();

    List<Type> getParameterTypes();

    Type getReturnType();

    /* compiled from: Caller.kt */
    /* loaded from: classes4.dex */
    public static final class DefaultImpls {
        public static <M extends Member> void checkArguments(Caller<? extends M> caller, Object[] args) {
            Intrinsics.checkNotNullParameter(args, "args");
            if (CallerKt.getArity(caller) == args.length) {
                return;
            }
            throw new IllegalArgumentException("Callable expects " + CallerKt.getArity(caller) + " arguments, but " + args.length + " were provided.");
        }
    }
}
