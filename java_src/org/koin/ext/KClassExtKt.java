package org.koin.ext;

import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import org.koin.p047mp.KoinPlatformTools;
/* compiled from: KClassExt.kt */
/* loaded from: classes4.dex */
public final class KClassExtKt {
    private static final Map<KClass<?>, String> classNames = KoinPlatformTools.INSTANCE.safeHashMap();

    public static final String getFullName(KClass<?> kClass) {
        Intrinsics.checkNotNullParameter(kClass, "<this>");
        String str = classNames.get(kClass);
        return str == null ? saveCache(kClass) : str;
    }

    public static final String saveCache(KClass<?> kClass) {
        Intrinsics.checkNotNullParameter(kClass, "<this>");
        String className = KoinPlatformTools.INSTANCE.getClassName(kClass);
        classNames.put(kClass, className);
        return className;
    }
}
