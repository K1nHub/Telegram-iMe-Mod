package org.koin.android.ext.koin;

import android.app.Application;
import android.content.Context;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import org.koin.android.logger.AndroidLogger;
import org.koin.core.Koin;
import org.koin.core.KoinApplication;
import org.koin.core.logger.Level;
import org.koin.dsl.ModuleDSLKt;
/* compiled from: KoinExt.kt */
/* loaded from: classes4.dex */
public final class KoinExtKt {
    public static /* synthetic */ KoinApplication androidLogger$default(KoinApplication koinApplication, Level level, int i, Object obj) {
        if ((i & 1) != 0) {
            level = Level.INFO;
        }
        return androidLogger(koinApplication, level);
    }

    public static final KoinApplication androidLogger(KoinApplication koinApplication, Level level) {
        Intrinsics.checkNotNullParameter(koinApplication, "<this>");
        Intrinsics.checkNotNullParameter(level, "level");
        koinApplication.getKoin().setupLogger(new AndroidLogger(level));
        return koinApplication;
    }

    public static final KoinApplication androidContext(KoinApplication koinApplication, Context androidContext) {
        List listOf;
        List listOf2;
        Intrinsics.checkNotNullParameter(koinApplication, "<this>");
        Intrinsics.checkNotNullParameter(androidContext, "androidContext");
        if (koinApplication.getKoin().getLogger().isAt(Level.INFO)) {
            koinApplication.getKoin().getLogger().info("[init] declare Android Context");
        }
        if (androidContext instanceof Application) {
            Koin koin = koinApplication.getKoin();
            listOf2 = CollectionsKt__CollectionsJVMKt.listOf(ModuleDSLKt.module$default(false, new KoinExtKt$androidContext$1(androidContext), 1, null));
            Koin.loadModules$default(koin, listOf2, false, 2, null);
        } else {
            Koin koin2 = koinApplication.getKoin();
            listOf = CollectionsKt__CollectionsJVMKt.listOf(ModuleDSLKt.module$default(false, new KoinExtKt$androidContext$2(androidContext), 1, null));
            Koin.loadModules$default(koin2, listOf, false, 2, null);
        }
        return koinApplication;
    }
}
