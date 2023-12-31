package kotlin.internal;

import java.lang.reflect.Method;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.FallbackThreadLocalRandom;
import kotlin.random.Random;
/* compiled from: PlatformImplementations.kt */
/* loaded from: classes4.dex */
public class PlatformImplementations {

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: PlatformImplementations.kt */
    /* loaded from: classes4.dex */
    public static final class ReflectThrowable {
        public static final Method addSuppressed;

        private ReflectThrowable() {
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x003e A[LOOP:0: B:3:0x0014->B:12:0x003e, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0042 A[EDGE_INSN: B:22:0x0042->B:14:0x0042 ?: BREAK  , SYNTHETIC] */
        static {
            /*
                kotlin.internal.PlatformImplementations$ReflectThrowable r0 = new kotlin.internal.PlatformImplementations$ReflectThrowable
                r0.<init>()
                java.lang.Class<java.lang.Throwable> r0 = java.lang.Throwable.class
                java.lang.reflect.Method[] r1 = r0.getMethods()
                java.lang.String r2 = "throwableMethods"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
                int r2 = r1.length
                r3 = 0
                r4 = r3
            L14:
                if (r4 >= r2) goto L41
                r5 = r1[r4]
                java.lang.String r6 = r5.getName()
                java.lang.String r7 = "addSuppressed"
                boolean r6 = kotlin.jvm.internal.Intrinsics.areEqual(r6, r7)
                if (r6 == 0) goto L3a
                java.lang.Class[] r6 = r5.getParameterTypes()
                java.lang.String r7 = "it.parameterTypes"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r6, r7)
                java.lang.Object r6 = kotlin.collections.ArraysKt.singleOrNull(r6)
                boolean r6 = kotlin.jvm.internal.Intrinsics.areEqual(r6, r0)
                if (r6 == 0) goto L3a
                r6 = 1
                goto L3b
            L3a:
                r6 = r3
            L3b:
                if (r6 == 0) goto L3e
                goto L42
            L3e:
                int r4 = r4 + 1
                goto L14
            L41:
                r5 = 0
            L42:
                kotlin.internal.PlatformImplementations.ReflectThrowable.addSuppressed = r5
                int r0 = r1.length
            L45:
                if (r3 >= r0) goto L59
                r2 = r1[r3]
                java.lang.String r2 = r2.getName()
                java.lang.String r4 = "getSuppressed"
                boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r4)
                if (r2 == 0) goto L56
                goto L59
            L56:
                int r3 = r3 + 1
                goto L45
            L59:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.internal.PlatformImplementations.ReflectThrowable.<clinit>():void");
        }
    }

    public void addSuppressed(Throwable cause, Throwable exception) {
        Intrinsics.checkNotNullParameter(cause, "cause");
        Intrinsics.checkNotNullParameter(exception, "exception");
        Method method = ReflectThrowable.addSuppressed;
        if (method != null) {
            method.invoke(cause, exception);
        }
    }

    public Random defaultPlatformRandom() {
        return new FallbackThreadLocalRandom();
    }
}
