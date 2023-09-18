package com.iMe.p023di;

import com.iMe.p023di.module.AdapterModuleKt;
import com.iMe.p023di.module.ItemProviderModuleKt;
import com.iMe.p023di.module.ManagerModuleKt;
import com.iMe.p023di.module.NavigationModuleKt;
import com.iMe.p023di.module.PresenterModuleKt;
import com.iMe.p023di.module.TelegramModuleKt;
import com.iMe.p023di.module.UtilsModuleKt;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import org.koin.core.module.Module;
/* compiled from: PresentationComponent.kt */
/* renamed from: com.iMe.di.PresentationComponentKt */
/* loaded from: classes4.dex */
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
