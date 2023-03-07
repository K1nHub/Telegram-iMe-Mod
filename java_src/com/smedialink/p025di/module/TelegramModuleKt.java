package com.smedialink.p025di.module;

import org.koin.core.module.Module;
import org.koin.dsl.ModuleDSLKt;
/* compiled from: TelegramModule.kt */
/* renamed from: com.smedialink.di.module.TelegramModuleKt */
/* loaded from: classes3.dex */
public final class TelegramModuleKt {
    private static Module telegramModule = ModuleDSLKt.module$default(false, TelegramModuleKt$telegramModule$1.INSTANCE, 1, null);

    public static final Module getTelegramModule() {
        return telegramModule;
    }
}
