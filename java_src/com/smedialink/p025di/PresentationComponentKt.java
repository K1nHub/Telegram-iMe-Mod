package com.smedialink.p025di;

import com.smedialink.p025di.module.AdapterModuleKt;
import com.smedialink.p025di.module.ItemProviderModuleKt;
import com.smedialink.p025di.module.ManagerModuleKt;
import com.smedialink.p025di.module.NavigationModuleKt;
import com.smedialink.p025di.module.PresenterModuleKt;
import com.smedialink.p025di.module.TelegramModuleKt;
import com.smedialink.p025di.module.UtilsModuleKt;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import org.koin.core.module.Module;
/* compiled from: PresentationComponent.kt */
/* renamed from: com.smedialink.di.PresentationComponentKt */
/* loaded from: classes3.dex */
public final class PresentationComponentKt {
    private static List<Module> presentationModules;

    public static final List<Module> getPresentationModules() {
        return presentationModules;
    }

    static {
        List<Module> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Module[]{UtilsModuleKt.getPresentationUtilsModule(), PresenterModuleKt.getPresentationPresenterModule(), ManagerModuleKt.getPresentationManagerModule(), AdapterModuleKt.getPresentationAdapterModule(), TelegramModuleKt.getTelegramModule(), NavigationModuleKt.getPresentationNavigationModule(), ItemProviderModuleKt.getPresentationItemProviderModule()});
        presentationModules = listOf;
    }
}
