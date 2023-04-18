package com.iMe.storage.domain.p029di;

import com.iMe.storage.domain.p029di.module.InteractorModuleKt;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import org.koin.core.module.Module;
/* compiled from: DomainComponent.kt */
/* renamed from: com.iMe.storage.domain.di.DomainComponentKt */
/* loaded from: classes3.dex */
public final class DomainComponentKt {
    private static List<Module> domainModules;

    static {
        List<Module> listOf;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(InteractorModuleKt.getInteractorModule());
        domainModules = listOf;
    }

    public static final List<Module> getDomainModules() {
        return domainModules;
    }
}
