package org.koin.p047mp;

import java.util.ArrayList;
import java.util.Map;
import java.util.UUID;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlin.text.StringsKt;
import org.koin.core.context.GlobalContext;
import org.koin.core.context.KoinContext;
import p034j$.util.concurrent.ConcurrentHashMap;
/* compiled from: KoinPlatformTools.kt */
/* renamed from: org.koin.mp.KoinPlatformTools */
/* loaded from: classes4.dex */
public final class KoinPlatformTools {
    public static final KoinPlatformTools INSTANCE = new KoinPlatformTools();

    private KoinPlatformTools() {
    }

    public final String getStackTrace(Exception e) {
        String joinToString$default;
        String className;
        Intrinsics.checkNotNullParameter(e, "e");
        StringBuilder sb = new StringBuilder();
        sb.append(e);
        sb.append("\n\t");
        StackTraceElement[] stackTrace = e.getStackTrace();
        Intrinsics.checkNotNullExpressionValue(stackTrace, "e.stackTrace");
        ArrayList arrayList = new ArrayList();
        for (StackTraceElement stackTraceElement : stackTrace) {
            Intrinsics.checkNotNullExpressionValue(stackTraceElement.getClassName(), "it.className");
            if (!(!StringsKt.contains$default((CharSequence) className, (CharSequence) "sun.reflect", false, 2, (Object) null))) {
                break;
            }
            arrayList.add(stackTraceElement);
        }
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(arrayList, "\n\t", null, null, 0, null, null, 62, null);
        sb.append(joinToString$default);
        return sb.toString();
    }

    public final String getClassName(KClass<?> kClass) {
        Intrinsics.checkNotNullParameter(kClass, "kClass");
        String name = JvmClassMappingKt.getJavaClass(kClass).getName();
        Intrinsics.checkNotNullExpressionValue(name, "kClass.java.name");
        return name;
    }

    public final String generateId() {
        String uuid = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(uuid, "randomUUID().toString()");
        return uuid;
    }

    public final LazyThreadSafetyMode defaultLazyMode() {
        return LazyThreadSafetyMode.SYNCHRONIZED;
    }

    public final KoinContext defaultContext() {
        return GlobalContext.INSTANCE;
    }

    /* renamed from: synchronized  reason: not valid java name */
    public final <R> R m1550synchronized(Object lock, Function0<? extends R> block) {
        R invoke;
        Intrinsics.checkNotNullParameter(lock, "lock");
        Intrinsics.checkNotNullParameter(block, "block");
        synchronized (lock) {
            invoke = block.invoke();
        }
        return invoke;
    }

    public final <K, V> Map<K, V> safeHashMap() {
        return new ConcurrentHashMap();
    }
}
